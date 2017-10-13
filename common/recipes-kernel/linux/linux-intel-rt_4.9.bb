
require linux-intel.inc

# Skip processing of this recipe if it is not explicitly specified as the
# PREFERRED_PROVIDER for virtual/kernel. This avoids errors when trying
# to build multiple virtual/kernel providers, e.g. as dependency of
# core-image-rt-sdk, core-image-rt.
python () {
    if d.getVar("PREFERRED_PROVIDER_virtual/kernel") != "linux-intel-rt":
        raise bb.parse.SkipPackage("Set PREFERRED_PROVIDER_virtual/kernel to linux-intel-rt to enable it")
}

KBRANCH = "base-rt"
SRCREV_machine ?= "d2ae076174f6e23889fd725f7bb37b93e0eefd6b"
SRCREV_meta ?= "3d5b27b2d138b71052a1d17a5cca73aa0ec75328"

LINUX_KERNEL_TYPE = "preempt-rt"
