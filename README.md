# hardware/qcom/common

Shared build fragments and headers for the Qualcomm modules on aries.

## Source

`inc/` is taken unchanged from the CAF release **QRD8625LA20**
(`android_vendor_qcom_proprietary/common/inc`). It provides the AMSS-style
typedefs and logging macros that the CAF daemons include.

`qcom_headers.mk` is local glue: it exposes the kernel uapi headers exported by
the kernel tree and this directory to the module makefiles.
