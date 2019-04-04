#!/bin/bash

#################################################################################
#    Developed by Joseph Geo Benjamin {josephgeobenjamin<at>gmail[dot]com} :)   #
#################################################################################

#-------------------------------------------------------------------------------
# USED FOR:
#  * Testing and reporting states of gtests individually in opencv modules
#  * Only CudaModules lists are added
#  * Output is saves as textfile in `log` folder
#-------------------------------------------------------------------------------

# Export path to the testdata  in opencv_extra module, Which needed for ceratain tests
export OPENCV_TEST_DATA_PATH=../opencv_extra/testdata/

# uncomment modules to be run
TEST_MODULE=(
cudaimgproc
cudev
cudaarithm
cudabgsegm
cudafeatures2d
cudafilters
cudalegacy
cudastereo
cudawarping
cudaoptflow
)
# Please check if Subtest for Required modules are Enlisted Below
# Don't remove subtest even if a module unused, Script will take care ;)
##############################

cudaimgproc=(
CUDA_ImgProc/HistEven
CUDA_ImgProc/CalcHist
CUDA_ImgProc/CalcHistWithMask
CUDA_ImgProc/EqualizeHist
CUDA_ImgProc/CLAHE
CUDA_ImgProc/Blend
CUDA_ImgProc/CvtColor
CUDA_ImgProc/Demosaicing
CUDA_ImgProc/SwapChannels
CUDA_ImgProc/GoodFeaturesToTrack
CUDA_ImgProc/BilateralFilter
CUDA_ImgProc/MeanShift
CUDA_ImgProc/MeanShiftSegmentation
CUDA_ImgProc/CornerHarris
CUDA_ImgProc/CornerMinEigen
CUDA_ImgProc/MatchTemplate8U
CUDA_ImgProc/MatchTemplate32F
CUDA_ImgProc/MatchTemplateBlackSource
CUDA_ImgProc/MatchTemplate_CCOEF_NORMED
CUDA_ImgProc/MatchTemplate_CanFindBigTemplate
CUDA_ImgProc/HoughLines
CUDA_ImgProc/HoughCircles
CUDA_ImgProc/GeneralizedHough
CUDA_ImgProc/Canny
)

cudev=(
Remap
Resize
WarpAffine
WarpPerspective
LutTest/0
SqrtTest/0
MagnitudeTest/0
PowTest/0
BitNotTest/0
BitNotTest/1
BitNotTest/2
BitNotTest/3
BitAndTest/0
BitAndTest/1
BitAndTest/2
BitAndTest/3
LShiftTest/0
Transpose
MergeTest/0
MergeTest/1
MergeTest/2
MergeTest/3
MergeTest/4
SplitTest/0
SplitTest/1
SplitTest/3
SplitTest/4
CvtColor
SplitTest/2
LessTest/0
LessTest/1
LessTest/2
LessTest/3
LessTest/4
MinTest/0
MinTest/1
MinTest/2
MinTest/3
MinTest/4
ThreshBinaryTest/0
ThreshBinaryTest/1
ThreshBinaryTest/2
PyrDown
PyrUp
CvtTest/0
CvtTest/1
CvtTest/2
CvtTest/3
CvtTest/4
CvFp16Test/0
CvFp16Test/1
Sobel
Scharr
Laplacian
UnaryMinusTest/0
UnaryMinusTest/1
UnaryMinusTest/2
PlusTest/0
PlusTest/1
PlusTest/2
PlusTest/3
PlusTest/4
MinusTest/0
MinusTest/1
MinusTest/2
AbsDiffTest/0
AbsDiffTest/1
AbsDiffTest/2
Integral
Sum
MinVal
MaxVal
MinMaxVal
NonZeroCount
ReduceToRow
ReduceToColumn
Histogram
)

cudaarithm=(
CUDA_Arithm/Norm
CUDA_Arithm/NormDiff
CUDA_Arithm/Sum
CUDA_Arithm/MinMax
CUDA_Arithm/MinMaxLoc
CUDA_Arithm/CountNonZero
CUDA_Arithm/Reduce
CUDA_Arithm/Normalize
CUDA_Arithm/MeanStdDev
CUDA_Arithm/Integral
CUDA_Arithm/IntegralSqr
CUDA_Arithm/Merge
CUDA_Arithm/Split
CUDA_Arithm/Transpose
CUDA_Arithm/Flip
CUDA_Arithm/LUT
CUDA_Arithm/CopyMakeBorder
CUDA/GpuMat_SetTo
CUDA/GpuMat_CopyTo
CUDA/GpuMat_ConvertTo
CUDA/EnsureSizeIsEnough
CUDA/CreateContinuous
CUDA_Stream/Async
CUDA_Arithm/GEMM
CUDA_Arithm/MulSpectrums
CUDA_Arithm/Dft
CUDA_Arithm/Convolve
CUDA_Stream/BufferPoolTest
CUDA_Arithm/Add_Array
CUDA_Arithm/Add_Array_Mask
CUDA_Arithm/Add_Scalar
CUDA_Arithm/Add_Scalar_First
CUDA_Arithm/Subtract_Array
CUDA_Arithm/Subtract_Array_Mask
CUDA_Arithm/Subtract_Scalar
CUDA_Arithm/Subtract_Scalar_First
CUDA_Arithm/Multiply_Array
CUDA_Arithm/Multiply_Array_Special
CUDA_Arithm/Multiply_Scalar
CUDA_Arithm/Multiply_Scalar_First
CUDA_Arithm/Divide_Array
CUDA_Arithm/Divide_Array_Special
CUDA_Arithm/Divide_Scalar_First
CUDA_Arithm/Divide_Scalar
CUDA_Arithm/AbsDiff
CUDA_Arithm/Abs
CUDA_Arithm/Sqr
CUDA_Arithm/Sqrt
CUDA_Arithm/Log
CUDA_Arithm/Exp
CUDA_Arithm/Pow
CUDA_Arithm/Compare_Array
CUDA_Arithm/Compare_Scalar
CUDA_Arithm/Bitwise_Array
CUDA_Arithm/Bitwise_Scalar
CUDA_Arithm/RShift
CUDA_Arithm/LShift
CUDA_Arithm/Min
CUDA_Arithm/Max
CUDA_Arithm/AddWeighted
CUDA_Arithm/Threshold
CUDA_Arithm/Magnitude
CUDA_Arithm/Phase
CUDA_Arithm/CartToPolar
CUDA_Arithm/PolarToCart
)

cudabgsegm=(
CUDA_BgSegm/MOG2
)

cudafeatures2d=(
CUDA_Features2D/FAST
CUDA_Features2D/ORB
CUDA_Features2D/BruteForceMatcher
)

cudafilters=(
CUDA_Filters/Blur
CUDA_Filters/Filter2D
CUDA_Filters/Laplacian
CUDA_Filters/SeparableLinearFilter
CUDA_Filters/Sobel
CUDA_Filters/Scharr
CUDA_Filters/GaussianBlur
CUDA_Filters/Erode
CUDA_Filters/Dilate
CUDA_Filters/MorphEx
CUDA_Filters/Median
)

cudalegacy=(
CUDA_Legacy/NPPST
CUDA_Legacy/NCV
CUDA_Calib3D/TransformPoints
CUDA_Calib3D/ProjectPoints
CUDA_Calib3D/SolvePnPRansac
)

cudastereo=(
CUDA_Stereo/StereoBM
CUDA_Stereo/StereoBeliefPropagation
CUDA_Stereo/StereoConstantSpaceBP
CUDA_Stereo/ReprojectImageTo3D
)

cudaoptflow=(
CUDA_OptFlow/BroxOpticalFlow
CUDA_OptFlow/PyrLKOpticalFlow
CUDA_OptFlow/FarnebackOpticalFlow
CUDA_OptFlow/OpticalFlowDual_TVL1
)

cudawarping=(
CUDA_Warping/BuildWarpPerspectiveMaps
CUDA_Warping/WarpPerspective
CUDA_Warping/WarpPerspectiveNPP
CUDA_Warping/Resize
CUDA_Warping/ResizeSameAsHost
CUDA_Warping/Remap
CUDA_Warping/PyrDown
CUDA_Warping/PyrUp
CUDA_Warping/BuildWarpAffineMaps
CUDA_Warping/WarpAffine
CUDA_Warping/WarpAffineNPP
)

##############################################

mkdir log -p
PFX=$(date +%d-%m-%y_%T)

trap 'failed-trap' 2 6 11 # trapping by itself sets the PIPESTATUS failed
failed-trap()
{
    echo "Trapped "
}

passed()
{
    STATE=$(tail -1 log/temp-space.txt | awk '{print $4}')
    if [ $STATE == 0 ] ;then
        (echo -e "$test - Subtest Not Present") >> log/OCV-test-failed-$PFX.txt
    else
        (echo -e "$test") >> log/OCV-test-passed-$PFX.txt
    fi
}

failed()
{   FAIL_STATE=$(tail -1 log/temp-space.txt | awk '/No such file or directory/ {print "NO_SUCH"}')
    if [ "$FAIL_STATE" == "NO_SUCH" ] ;then
        TAILS="Test Binary Not Present"
    else
        FAIL_STATE=$(tail -1 log/temp-space.txt | awk '{print $2}')
        if [ "$FAIL_STATE" == "FAILED" ] ;then
            TAILS=$(tail -1 log/temp-space.txt | awk '{print $1}')
        else
            TAILS="Not reported"
        fi
    fi
    (echo -e "$test - $TAILS") >> log/OCV-test-failed-$PFX.txt
}

module_start()
{
    (echo -e "\n######################### $module ###################\n") >> log/OCV-test-passed-$PFX.txt
    (echo -e "\n######################### $module ###################\n") >> log/OCV-test-failed-$PFX.txt
    (echo -e "\n######################### $module ###################\n") >> log/OCV-test-runLog-$PFX.txt
}

(echo "NULL") > log/temp-space.txt

for module in ${TEST_MODULE[@]}; do
    eval TEST_LIST=('${'$module'[@]}')
    $(module_start)
    ((TEST_NUM=0))
    for test in ${TEST_LIST[@]}; do
        ((TEST_NUM++))
        # Sudo creates seperate bash env thus regular `export` will not work
        ./build/bin/opencv_test_$module --gtest_filter=$test.* |& tee log/temp-space.txt
        if [ $PIPESTATUS -eq 0 ] ;then
            $(passed)
        else
            $(failed)
        fi
        cat log/temp-space.txt >> log/OCV-test-runLog-$PFX.txt
        echo "$TEST_NUM of $module - Completed!"
    done
done

rm log/temp-space.txt
