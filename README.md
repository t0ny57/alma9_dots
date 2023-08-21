# alma9_dots
some crap...

RyzenAdj
https://github.com/FlyGoat/RyzenAdj



AMD Pstate EPP Driver (needs kernel 6.3+)

to use the EPP driver you will need to add this to your kernel commandline `amd_pstate=active`

confirming its working you can run `cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_driver`

and it will say `amd_pstate_epp`

to check current performance hit use `cat /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference`

to see available performance hints run `cat /sys/devices/system/cpu/cpu0/cpufreq/energy_performance_available_preferences`

to set the performance hint run (replace balance_performance with desired hint) `echo "balance_performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/energy_performance_preference balance_performance`

GRUB_CMDLINE_LINUX="... amd-pstate=active cpufreq.default_governor=powersave cpufreq.energy_performance_preference=performance"


