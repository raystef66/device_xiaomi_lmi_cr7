#! /system/bin/sh

# Copyright - 2020 Carlos Ayrton Lopez Arroyo (Official-Ayrton990 @ GitHub)
# Copyright - 2020 tytydraco @ GitHub
# Copyright - 2020 Klozz (TeamMEX @ XDA)

# Migrate tasks up at this much load
echo 70 70 > /proc/sys/kernel/sched_upmigrate
echo 70 > /proc/sys/kernel/sched_group_upmigrate

echo 70 70 > /proc/sys/kernel/sched_downmigrate
echo 70 > /proc/sys/kernel/sched_group_downmigrate

# Limit max perf event processing time to this much CPU usage
echo 5 > /proc/sys/kernel/perf_cpu_time_max_percent

# Group tasks for less stutter but less throughput
echo 1 > /proc/sys/kernel/sched_autogroup_enabled

# Preliminary requirement for the following values
echo 0 > /proc/sys/kernel/sched_tunable_scaling

# Reduce the maximum scheduling period for lower latency
echo 1000000 > /proc/sys/kernel/sched_latency_ns

echo 125000 > /proc/sys/kernel/sched_min_granularity_ns

echo 500000 > /proc/sys/kernel/sched_wakeup_granularity_ns

# Always allow sched boosting on top-app tasks
echo 0 > /proc/sys/kernel/sched_min_task_util_for_colocation

# Improve real time latencies by reducing the scheduler migration time
echo 8 > /proc/sys/kernel/sched_nr_migrate

# Disable scheduler statistics to reduce overhead
echo 0 > /proc/sys/kernel/sched_schedstats

# Disable unnecessary printk logging
echo off > /proc/sys/kernel/printk_devkmsg

# Start non-blocking writeback later
echo 10 > /proc/sys/vm/dirty_background_ratio

# Start blocking writeback later
echo 30 > /proc/sys/vm/dirty_ratio

# Require dirty memory to stay in memory for longer
echo 3000 > /proc/sys/vm/dirty_expire_centisecs

# Run the dirty memory flusher threads less often
echo 3000 > /proc/sys/vm/dirty_writeback_centisecs

# Disable read-ahead for swap devices
echo 0 > /proc/sys/vm/page-cluster

# Update /proc/stat less often to reduce jitter
echo 10 > /proc/sys/vm/stat_interval

# Swap to the swap device at a fair rate
echo 100 > /proc/sys/vm/swappiness

# Allow more inodes and dentries to be cached
echo 60 > /proc/sys/vm/vfs_cache_pressure

# Enable Explicit Congestion Control
echo 1 > /proc/sys/net/ipv4/tcp_ecn

# Enable fast socket open for receiver and sender
echo 3 > /proc/sys/net/ipv4/tcp_fastopen

# Disable SYN cookies
echo 0 > /proc/sys/net/ipv4/tcp_syncookies

# Consider scheduling tasks that are eager to run
echo NEXT_BUDDY > /sys/kernel/debug/sched_features

# Schedule tasks on their origin CPU if possible
echo TTWU_QUEUE > /sys/kernel/debug/sched_features

# Consider changing frequencies once per scheduling period
echo 4000 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us
echo 4294967295 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/hispeed_freq
echo 90 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/hispeed_load
echo 0 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/pl
echo 1000000 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/rtg_boost_freq
echo 1000 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us
echo 4000 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/down_rate_limit_us
echo 4294967295 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/hispeed_freq
echo 90 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/hispeed_load
echo 1 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/pl
echo 0 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/rtg_boost_freq
echo 1000 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/up_rate_limit_us
echo 4000 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/down_rate_limit_us
echo 4294967295 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/hispeed_freq
echo 90 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/hispeed_load
echo 1 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/pl
echo 0 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/rtg_boost_freq
echo 1000 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/up_rate_limit_us

# Mark top-app as boosted, find high-performing CPUs
echo 1 > /dev/stune/top-app/schedtune.boost

# Prefer to schedule top-app tasks on idle CPUs
echo 1 > /dev/stune/top-app/schedtune.prefer_idle

# Do not use I/O as a source of randomness
echo 0 > /sys/block/sda/queue/add_random

# Disable I/O statistics accounting
echo 0 > /sys/block/sda/queue/iostats

# Reduce heuristic read-ahead in exchange for I/O latency
echo 16 > /sys/block/sda/queue/read_ahead_kb

# Reduce the maximum number of I/O requests in exchange for latency
echo 64 > /sys/block/sda/queue/nr_requests

# Disable some loging events
echo 0 > /sys/kernel/debug/tracing/events/psi/psi_event/enable
echo 0 > /sys/kernel/debug/tracing/events/psi/psi_window_vmstat/enable
echo 0 > /sys/kernel/debug/tracing/events/regulator/enable
echo 0 > /sys/kernel/debug/tracing/events/msm_low_power/enable

echo 0 > /sys/kernel/debug/tracing/events/sched/sched_cpu_hotplug/enable
echo 0 > /sys/kernel/debug/tracing/events/sched/sched_migrate_task/enable
echo 0 > /sys/kernel/debug/tracing/events/sched/sched_pi_setprio/enable
echo 0 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable
echo 0 > /sys/kernel/debug/tracing/events/sched/sched_wakeup/enable
echo 0 > /sys/kernel/debug/tracing/events/sched/sched_wakeup_new/enable
echo 0 > /sys/kernel/debug/tracing/events/sched/sched_isolate/enable
