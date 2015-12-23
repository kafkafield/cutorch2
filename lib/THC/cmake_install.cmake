# Install script for directory: /root/torch/extra/cutorch/lib/THC

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/root/torch/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so"
         RPATH "$ORIGIN/../lib:/root/torch/install/lib:/usr/local/cuda/lib64")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/root/torch/extra/cutorch/build/lib/THC/libTHC.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so"
         OLD_RPATH "/root/torch/install/lib:/usr/local/cuda/lib64:::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:/root/torch/install/lib:/usr/local/cuda/lib64")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libTHC.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/THC" TYPE FILE FILES
    "/root/torch/extra/cutorch/lib/THC/THC.h"
    "/root/torch/extra/cutorch/build/lib/THC/THCGeneral.h"
    "/root/torch/extra/cutorch/lib/THC/THCBlas.h"
    "/root/torch/extra/cutorch/lib/THC/THCStorage.h"
    "/root/torch/extra/cutorch/lib/THC/THCStorageCopy.h"
    "/root/torch/extra/cutorch/lib/THC/THCTensor.h"
    "/root/torch/extra/cutorch/lib/THC/THCTensorCopy.h"
    "/root/torch/extra/cutorch/lib/THC/THCTensorRandom.h"
    "/root/torch/extra/cutorch/lib/THC/THCTensorMath.h"
    "/root/torch/extra/cutorch/lib/THC/THCTensorConv.h"
    "/root/torch/extra/cutorch/lib/THC/THCTensorSort.h"
    "/root/torch/extra/cutorch/lib/THC/THCApply.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCReduce.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCReduceAll.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCReduceApplyUtils.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCAllocator.h"
    "/root/torch/extra/cutorch/lib/THC/THCDeviceUtils.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCDeviceTensor.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCDeviceTensor-inl.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCDeviceTensorUtils.cuh"
    "/root/torch/extra/cutorch/lib/THC/THCDeviceTensorUtils-inl.cuh"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

