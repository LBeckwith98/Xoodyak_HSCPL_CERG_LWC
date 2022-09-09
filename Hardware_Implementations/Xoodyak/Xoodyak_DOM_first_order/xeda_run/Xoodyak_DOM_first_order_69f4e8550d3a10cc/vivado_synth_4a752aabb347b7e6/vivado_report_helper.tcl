proc reportCriticalPaths { fileName } {
    # Open the specified output file in write mode
    set FH [open $fileName w]
    # Write the current date and CSV format to a file header
    puts $FH "#\n# File created on [clock format [clock seconds]]\n#\n"
    puts $FH "Startpoint,Endpoint,DelayType,Slack,#Levels,#LUTs"
    # Iterate through both Min and Max delay types
    foreach delayType {max min} {
        # Collect details from the 50 worst timing paths for the current analysis
        # (max = setup/recovery, min = hold/removal)
        # The $path variable contains a Timing Path object.
        foreach path [get_timing_paths -delay_type $delayType -max_paths 50 -nworst 1] {
            # Get the LUT cells of the timing paths
            # set luts [get_cells -filter {REF_NAME =~ LUT*} -of_object $path] # print  ,[llength $luts] << TODO warnings
            # Get the startpoint of the Timing Path object
            set startpoint [get_property STARTPOINT_PIN $path]
            # Get the endpoint of the Timing Path object
            set endpoint [get_property ENDPOINT_PIN $path]
            # Get the slack on the Timing Path object
            set slack [get_property SLACK $path]
            # Get the number of logic levels between startpoint and endpoint
            set levels [get_property LOGIC_LEVELS $path]
            # Save the collected path details to the CSV file
            puts $FH "$startpoint,$endpoint,$delayType,$slack,$levels"
        }
    }
    # Close the output file
    close $FH
    puts "CSV file $fileName has been created.\n"
    return 0
}; # End PROC


proc showWarningsAndErrors {} {
  set num_errors     [get_msg_config -severity {ERROR} -count]
  set num_crit_warns [get_msg_config -severity {CRITICAL WARNING} -count]
  set num_warns      [get_msg_config -severity {WARNING} -count]

  if {$num_errors > 0} {
    puts "Exiting Vivado due to $num_errors error(s)!"
    exit 1
  }

  if {$num_crit_warns > 0} {
    puts "\n===========================( *ENABLE ECHO* )==========================="
    puts "** Number of Critical Warnings:  $num_crit_warns"
    
    puts "\n===========================( *DISABLE ECHO* )==========================="
  }

  if {$num_warns > 0} {
    puts "** Number of Warnings:           $num_warns"
  }

  puts "\n"
}

showWarningsAndErrors

puts "\n==========================( Writing Reports after $ACTIVE_STEP )============================"
set reports_dir [file join ../../reports $ACTIVE_STEP]
set outputs_dir [file join ../../outputs $ACTIVE_STEP]
file mkdir ${reports_dir}
file mkdir ${outputs_dir}

report_route_status -file [file join ${reports_dir} route_status.rpt]
report_timing_summary -check_timing_verbose -no_header -report_unconstrained -path_type full -input_pins -max_paths 10 -delay_type min_max -file [file join ${reports_dir} timing_summary.rpt]
report_timing  -no_header -input_pins  -unique_pins -sort_by group -max_paths 100 -path_type full -delay_type min_max -file [file join ${reports_dir} timing.rpt]
report_utilization -force -file [file join ${reports_dir} utilization.xml]              -format xml
report_utilization -force -file [file join ${reports_dir} hierarchical_utilization.xml] -format xml  -hierarchical 

if {$ACTIVE_STEP == "route_design"} {
    set timing_slack [get_property SLACK [get_timing_paths]]
    puts "Final timing slack: $timing_slack ns"

    
    if {$timing_slack < 0} {
        puts "\n===========================( *ENABLE ECHO* )==========================="
        puts "ERROR: Failed to meet timing by $timing_slack, see [file join ${reports_dir} post_route timing_summary.rpt] for details"
        puts "\n===========================( *DISABLE ECHO* )==========================="
        
        exit  1
    }

    puts "\n==========================( Writing netlists and SDF files )============================="
    write_verilog -mode timesim -sdf_anno false -force -file ${outputs_dir}/timesim.v
    write_sdf -mode timesim -process_corner slow -force -file ${outputs_dir}/timesim.min.sdf
    write_sdf -mode timesim -process_corner fast -force -file ${outputs_dir}/timesim.max.sdf
    write_vhdl -mode funcsim -include_xilinx_libs -write_all_overrides -force -file ${outputs_dir}/funcsim.vhdl
    write_xdc -no_fixed_only -force ${outputs_dir}/impl.xdc
    
    
}

puts "\n==========================( Finished $ACTIVE_STEP reports )============================"