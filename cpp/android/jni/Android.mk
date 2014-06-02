# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_FEATURES += exceptions
LOCAL_CPPFLAGS += -fexceptions -std=gnu++11

LOCAL_MODULE := zxing

LOCAL_CPPFLAGS += \
   -DNO_ICONV

LOCAL_C_INCLUDES += \
   ../core/src

LOCAL_SRC_FILES := \
    ../../core/src/zxing/BarcodeFormat.cpp \
    ../../core/src/zxing/Binarizer.cpp \
    ../../core/src/zxing/BinaryBitmap.cpp \
    ../../core/src/zxing/ChecksumException.cpp \
    ../../core/src/zxing/DecodeHints.cpp \
    ../../core/src/zxing/Exception.cpp \
    ../../core/src/zxing/FormatException.cpp \
    ../../core/src/zxing/InvertedLuminanceSource.cpp \
    ../../core/src/zxing/LuminanceSource.cpp \
    ../../core/src/zxing/MultiFormatReader.cpp \
    ../../core/src/zxing/Reader.cpp \
    ../../core/src/zxing/Result.cpp \
    ../../core/src/zxing/ResultIO.cpp \
    ../../core/src/zxing/ResultPoint.cpp \
    ../../core/src/zxing/ResultPointCallback.cpp \
    ../../core/src/zxing/aztec/AztecDetectorResult.cpp \
    ../../core/src/zxing/aztec/AztecReader.cpp \
    ../../core/src/zxing/aztec/decoder/Decoder.cpp \
    ../../core/src/zxing/aztec/detector/Detector.cpp \
    ../../core/src/zxing/common/BitArray.cpp \
    ../../core/src/zxing/common/BitArrayIO.cpp \
    ../../core/src/zxing/common/BitMatrix.cpp \
    ../../core/src/zxing/common/BitSource.cpp \
    ../../core/src/zxing/common/CharacterSetECI.cpp \
    ../../core/src/zxing/common/DecoderResult.cpp \
    ../../core/src/zxing/common/DetectorResult.cpp \
    ../../core/src/zxing/common/GlobalHistogramBinarizer.cpp \
    ../../core/src/zxing/common/GreyscaleLuminanceSource.cpp \
    ../../core/src/zxing/common/GreyscaleRotatedLuminanceSource.cpp \
    ../../core/src/zxing/common/GridSampler.cpp \
    ../../core/src/zxing/common/HybridBinarizer.cpp \
    ../../core/src/zxing/common/IllegalArgumentException.cpp \
    ../../core/src/zxing/common/PerspectiveTransform.cpp \
    ../../core/src/zxing/common/Str.cpp \
    ../../core/src/zxing/common/StringUtils.cpp \
    ../../core/src/zxing/common/detector/MonochromeRectangleDetector.cpp \
    ../../core/src/zxing/common/detector/WhiteRectangleDetector.cpp \
    ../../core/src/zxing/common/reedsolomon/GenericGF.cpp \
    ../../core/src/zxing/common/reedsolomon/GenericGFPoly.cpp \
    ../../core/src/zxing/common/reedsolomon/ReedSolomonDecoder.cpp \
    ../../core/src/zxing/common/reedsolomon/ReedSolomonException.cpp \
    ../../core/src/zxing/datamatrix/DataMatrixReader.cpp \
    ../../core/src/zxing/datamatrix/Version.cpp \
    ../../core/src/zxing/datamatrix/decoder/BitMatrixParser.cpp \
    ../../core/src/zxing/datamatrix/decoder/DataBlock.cpp \
    ../../core/src/zxing/datamatrix/decoder/DecodedBitStreamParser.cpp \
    ../../core/src/zxing/datamatrix/decoder/Decoder.cpp \
    ../../core/src/zxing/datamatrix/detector/CornerPoint.cpp \
    ../../core/src/zxing/datamatrix/detector/Detector.cpp \
    ../../core/src/zxing/datamatrix/detector/DetectorException.cpp \
    ../../core/src/zxing/multi/ByQuadrantReader.cpp \
    ../../core/src/zxing/multi/GenericMultipleBarcodeReader.cpp \
    ../../core/src/zxing/multi/MultipleBarcodeReader.cpp \
    ../../core/src/zxing/multi/qrcode/QRCodeMultiReader.cpp \
    ../../core/src/zxing/multi/qrcode/detector/MultiDetector.cpp \
    ../../core/src/zxing/multi/qrcode/detector/MultiFinderPatternFinder.cpp \
    ../../core/src/zxing/oned/CodaBarReader.cpp \
    ../../core/src/zxing/oned/Code128Reader.cpp \
    ../../core/src/zxing/oned/Code39Reader.cpp \
    ../../core/src/zxing/oned/Code93Reader.cpp \
    ../../core/src/zxing/oned/EAN13Reader.cpp \
    ../../core/src/zxing/oned/EAN8Reader.cpp \
    ../../core/src/zxing/oned/ITFReader.cpp \
    ../../core/src/zxing/oned/MultiFormatOneDReader.cpp \
    ../../core/src/zxing/oned/MultiFormatUPCEANReader.cpp \
    ../../core/src/zxing/oned/OneDReader.cpp \
    ../../core/src/zxing/oned/OneDResultPoint.cpp \
    ../../core/src/zxing/oned/UPCAReader.cpp \
    ../../core/src/zxing/oned/UPCEANReader.cpp \
    ../../core/src/zxing/oned/UPCEReader.cpp \
    ../../core/src/zxing/pdf417/PDF417Reader.cpp \
    ../../core/src/zxing/pdf417/decoder/BitMatrixParser.cpp \
    ../../core/src/zxing/pdf417/decoder/DecodedBitStreamParser.cpp \
    ../../core/src/zxing/pdf417/decoder/Decoder.cpp \
    ../../core/src/zxing/pdf417/decoder/ec/ErrorCorrection.cpp \
    ../../core/src/zxing/pdf417/decoder/ec/ModulusGF.cpp \
    ../../core/src/zxing/pdf417/decoder/ec/ModulusPoly.cpp \
    ../../core/src/zxing/pdf417/detector/Detector.cpp \
    ../../core/src/zxing/pdf417/detector/LinesSampler.cpp \
    ../../core/src/zxing/qrcode/ErrorCorrectionLevel.cpp \
    ../../core/src/zxing/qrcode/FormatInformation.cpp \
    ../../core/src/zxing/qrcode/QRCodeReader.cpp \
    ../../core/src/zxing/qrcode/Version.cpp \
    ../../core/src/zxing/qrcode/decoder/BitMatrixParser.cpp \
    ../../core/src/zxing/qrcode/decoder/DataBlock.cpp \
    ../../core/src/zxing/qrcode/decoder/DataMask.cpp \
    ../../core/src/zxing/qrcode/decoder/DecodedBitStreamParser.cpp \
    ../../core/src/zxing/qrcode/decoder/Decoder.cpp \
    ../../core/src/zxing/qrcode/decoder/Mode.cpp \
    ../../core/src/zxing/qrcode/detector/AlignmentPattern.cpp \
    ../../core/src/zxing/qrcode/detector/AlignmentPatternFinder.cpp \
    ../../core/src/zxing/qrcode/detector/Detector.cpp \
    ../../core/src/zxing/qrcode/detector/FinderPattern.cpp \
    ../../core/src/zxing/qrcode/detector/FinderPatternFinder.cpp \
    ../../core/src/zxing/qrcode/detector/FinderPatternInfo.cpp \
    #../../core/tests/src/TestRunner.cpp \
    #../../core/tests/src/common/BitArrayTest.cpp \
    #../../core/tests/src/common/BitMatrixTest.cpp \
    #../../core/tests/src/common/BitSourceTest.cpp \
    #../../core/tests/src/common/CountedTest.cpp \
    #../../core/tests/src/common/PerspectiveTransformTest.cpp \
    #../../core/tests/src/common/reedsolomon/ReedSolomonTest.cpp \
    #../../core/tests/src/qrcode/ErrorCorrectionLevelTest.cpp \
    #../../core/tests/src/qrcode/FormatInformationTest.cpp \
    #../../core/tests/src/qrcode/VersionTest.cpp \
    #../../core/tests/src/qrcode/decoder/DataMaskTest.cpp \
    #../../core/tests/src/qrcode/decoder/ModeTest.cpp \
    ../../core/src/bigint/BigInteger.cc \
    ../../core/src/bigint/BigUnsigned.cc \
    ../../core/src/bigint/BigIntegerUtils.cc \
    ../../core/src/bigint/BigIntegerAlgorithms.cc \
    ../../core/src/bigint/BigUnsignedInABase.cc

include $(BUILD_STATIC_LIBRARY)
