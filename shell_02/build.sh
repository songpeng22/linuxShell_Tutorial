#!/bin/bash

echo "hello shell"
exit 1
echo "second hello"

CMD=`realpath $0`
COMMON_DIR=`dirname $CMD`
TOP_DIR=$(realpath $COMMON_DIR/../../..)
#BOARD_CONFIG=$TOP_DIR/device/rockchip/.BoardConfig.mk
#source $BOARD_CONFIG
#source $TOP_DIR/device/rockchip/common/Version.mk

function build_buildroot(){
	echo "==========Start build buildroot=========="
	echo "TARGET_BUILDROOT_CONFIG=$RK_CFG_BUILDROOT"
	echo "========================================="
#	/usr/bin/time -f "you take %E to build builroot" $COMMON_DIR/mk-buildroot.sh $BOARD_CONFIG
	if [ $? -eq 0 ]; then
		echo "====Build buildroot ok!===="
	else
		echo "====Build buildroot failed!===="
		exit 1
	fi
}

function build_rootfs(){
        rm -f $RK_ROOTFS_IMG

        case "$1" in
                yocto)
                        build_yocto
                        ROOTFS_IMG=yocto/build/tmp/deploy/images/$RK_YOCTO_MACHINE/rootfs.img
                        ;;
                debian)
                        build_debian
                        ROOTFS_IMG=debian/linaro-rootfs.img
                        ;;
                distro)
                        build_distro
                        ROOTFS_IMG=rootfs/linaro-rootfs.img
                        ;;
                *)
                        build_buildroot
                        ROOTFS_IMG=buildroot/output/$RK_CFG_BUILDROOT/images/rootfs.$RK_ROOTFS_TYPE
                        ;;
        esac

        [ -z "$ROOTFS_IMG" ] && return

        if [ ! -f "$ROOTFS_IMG" ]; then
                echo "$ROOTFS_IMG not generated?"
        else
                mkdir -p ${RK_ROOTFS_IMG%/*}
                ln -rsf $TOP_DIR/$ROOTFS_IMG $RK_ROOTFS_IMG
        fi
}






#=========================
# build targets
#=========================

if echo $@|grep -wqE "help|-h"; then
        usage
        exit 0
fi

OPTIONS="$@"
for option in ${OPTIONS:-allsave}; do
        echo "processing option: $option"
        case $option in
                BoardConfig*.mk)
                        CONF=$TOP_DIR/device/rockchip/$RK_TARGET_PRODUCT/$option
                        echo "switching to board: $CONF"
                        if [ ! -f $CONF ]; then
                                echo "not exist!"
                                exit 1
                        fi

                        ln -sf $CONF $BOARD_CONFIG
                        ;;
                buildroot|debian|distro|yocto)
                        build_rootfs $option
                        ;;
                recovery)
                        build_kernel
                        ;&
                *)
                        eval build_$option || usage
                        ;;
        esac
done

