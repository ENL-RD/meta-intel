FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"

COMPATIBLE_MACHINE_cedartrail = "cedartrail"
KMACHINE_cedartrail  = "yocto/standard/cedartrail"
KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
KERNEL_FEATURES_append_cedartrail += "cfg/drm-cdvpvr.scc"
KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"

COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"

SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
SRCREV_pvr_pn-linux-yocto_cedartrail ?= "9d0264753e869d21ec4d9a6dd5558de73d64f94d"

SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
