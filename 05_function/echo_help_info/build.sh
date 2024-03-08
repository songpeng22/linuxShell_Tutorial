#!/bin/bash




echo "call function."
echo "\$@ is: $@"

function usage()
{
	echo "\$@ lost its value in function, which is: $@"
	echo " "

        echo "Usage: build.sh [OPTIONS]"
        echo "Available options:"
        echo "BoardConfig*.mk    -switch to specified board config"
        echo "uboot              -build uboot"
        echo "kernel             -build kernel"
        echo "modules            -build kernel modules"
        echo "rootfs             -build default rootfs, currently build buildroot as default"
        echo "buildroot          -build buildroot rootfs"
        echo "ramboot            -build ramboot image"
        echo "multi-npu_boot     -build boot image for multi-npu board"
        echo "yocto              -build yocto rootfs"
        echo "debian             -build debian9 stretch rootfs"
        echo "distro             -build debian10 buster rootfs"
        echo "pcba               -build pcba"
        echo "recovery           -build recovery"
        echo "all                -build uboot, kernel, rootfs, recovery image"
        echo "cleanall           -clean uboot, kernel, rootfs, recovery"
        echo "firmware           -pack all the image we need to boot up system"
        echo "updateimg          -pack update image"
        echo "otapackage         -pack ab update otapackage image"
        echo "save               -save images, patches, commands used to debug"
        echo "allsave            -build all & firmware & updateimg & save"
        echo ""
        echo "Default option is 'allsave'."
}

if echo $@ ; then
	echo "\$@ is true."
fi	


if echo $@|grep -wqE "help|-h"; then
        usage
        exit 0
fi

