# Shared build settings for the Qualcomm modules under hardware/qcom.
#
# The modules were written against the kernel uapi headers, while the copies
# that bionic carries predate several of the ioctls they use.  The set
# exported by the kernel tree is the one they expect.
#
# Included from a module's Android.mk; this file adds no rules of its own.

QCOM_KERNEL_HEADERS := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
QCOM_COMMON_INC := $(TOP)/hardware/qcom/common/inc

# Reading the uapi headers requires the kernel tree to have exported them.
QCOM_HEADER_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

QCOM_INCLUDES := $(QCOM_KERNEL_HEADERS) $(QCOM_COMMON_INC)
