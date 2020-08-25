ncpu=$(cat /proc/cpuinfo |grep processor|tail -1|awk '{print $3+1}')
echo "
dalvik.vm.boot-dex2oat-threads=$ncpu
ro.sys.fw.dex2oat_thread_count=$ncpu
dalvik.vm.dex2oat-threads=$ncpu
dalvik.vm.image-dex2oat-threads=$ncpu" >> $MODPATH/system.prop
