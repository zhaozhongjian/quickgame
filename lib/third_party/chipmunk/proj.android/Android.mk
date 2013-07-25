
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := cocos_chipmunk_static
LOCAL_MODULE_FILENAME := libchipmunk

LOCAL_SRC_FILES := ../src/chipmunk.c \
    ../src/constraints/cpConstraint.c \
    ../src/constraints/cpDampedRotarySpring.c \
    ../src/constraints/cpDampedSpring.c \
    ../src/constraints/cpGearJoint.c \
    ../src/constraints/cpGrooveJoint.c \
    ../src/constraints/cpPinJoint.c \
    ../src/constraints/cpPivotJoint.c \
    ../src/constraints/cpRatchetJoint.c \
    ../src/constraints/cpRotaryLimitJoint.c \
    ../src/constraints/cpSimpleMotor.c \
    ../src/constraints/cpSlideJoint.c \
    ../src/cpArbiter.c \
    ../src/cpArray.c \
    ../src/cpBB.c \
    ../src/cpBBTree.c \
    ../src/cpBody.c \
    ../src/cpCollision.c \
    ../src/cpHashSet.c \
    ../src/cpPolyShape.c \
    ../src/cpShape.c \
    ../src/cpSpace.c \
    ../src/cpSpaceComponent.c \
    ../src/cpSpaceHash.c \
    ../src/cpSpaceQuery.c \
    ../src/cpSpaceStep.c \
    ../src/cpSpatialIndex.c \
    ../src/cpSweep1D.c \
    ../src/cpVect.c

LOCAL_EXPORT_C_INCLUDES := $(QUICK_COCOS2DX_ROOT)/lib/third_party/chipmunk/include
LOCAL_C_INCLUDES := $(LOCAL_EXPORT_C_INCLUDES)
LOCAL_CFLAGS := -Wno-psabi -std=c99

include $(BUILD_STATIC_LIBRARY)
