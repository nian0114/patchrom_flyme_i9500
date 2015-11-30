.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Panorama360Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    }
.end annotation


# static fields
.field public static final DEBUG_IMAGE:I = 0x2

.field public static final DEBUG_NONE:I = 0x0

.field public static final DEBUG_SENSOR:I = 0x1

.field private static final MATRIX_SIZE:I = 0x10

.field private static final NS2MS:F = 1.0E-6f

.field private static final NS2S:F = 1.0E-9f

.field private static final PANORAMA_STATE_INITIALIZED:I = 0x1

.field private static final PANORAMA_STATE_PROCESS:I = 0x2

.field private static final PANORAMA_STATE_STOP:I = 0x3

.field private static final PANORAMA_STATE_UNINITIALIZED:I = 0x0

.field private static final SAVE_JPG_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final SAVE_RAW_EXTENSION:Ljava/lang/String; = ".raw"

.field private static final SAVE_TXT_EXTENSION:Ljava/lang/String; = ".txt"

.field private static final SEPARATER:Ljava/lang/String; = "\t"


# instance fields
.field private final RES_ID_PANORAMA_GUIDE_IMAGE:[[I

.field private accelerometerTimeStamp:J

.field private accelerometerValues:[F

.field private doImageClassify:Z

.field private inRM:[F

.field isSetOffset:Z

.field private isShootable:Z

.field private isStartShooting:Z

.field private mACMatrix:[D

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAccelerometerIx:I

.field private mAngleOfViewDegree:D

.field private mAppSensorFusionMode:I

.field private mCameraHeight:I

.field private mCameraOrientation:I

.field private mCameraWidth:I

.field private mContextActivity:Lcom/sec/android/app/camera/Camera;

.field private mCurGyroscopeAngleIndex:I

.field private mCurGyroscopeAngleValue:[D

.field private mCurGyroscopeAngleValueHist:[[D

.field private mCurSensorIndex:[I

.field private mDateTaken:[J

.field public mDebugType:I

.field private mFinishFlg:Z

.field private mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

.field private mGuideImage:[Landroid/graphics/Bitmap;

.field private mGyroMatrix:[D

.field private mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeCorrectValue:[F

.field private mGyroscopeIx:I

.field private mGyroscopeValueNumPerFrame:I

.field private mHandler:Landroid/os/Handler;

.field private mImageClassifyBmp:Landroid/graphics/Bitmap;

.field private mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

.field private mMagneticField:Landroid/hardware/Sensor;

.field private mMagneticFieldIx:I

.field private mMaxHeapSize:[I

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mMotionlessThres:I

.field private mOffsetMode:I

.field private mOrientationIx:I

.field private mOutputType:I

.field public mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

.field private mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

.field private mPanoramaPreviewCount:I

.field public mPanoramaProcessCount:I

.field private mPanoramaState:I

.field private mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

.field private mProjectionType:I

.field private mRVMatrix:[D

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mRotationVectorIx:I

.field private mSaveDirPath:Ljava/lang/String;

.field private mSaveImagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInputDataDirPath:Ljava/lang/String;

.field private mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

.field public mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

.field private mSensorFusionMode:I

.field private mSensorInfoMngList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorLockObj:Ljava/lang/Object;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatus:[I

.field private mTotalGyroscopeValue:[D

.field private mTotalGyroscopeValueNum:I

.field private mUseImage:[I

.field private mUseImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUseSensorForAWF:Z

.field private mUseSensorForGA:Z

.field private mUseSensorThres:I

.field private mUseThres:I

.field private mWaitTime:I

.field private magneticTimeStamp:J

.field private magneticValues:[F

.field private moveToShooting:Z

.field private orientationValues:[F

.field private outRM:[F

.field private pre_frame_time:J

.field private prev_timestamp:J

.field private registered_accelerometer:Z

.field private registered_gyroscope:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V
    .locals 20
    .param p2, "contextActivity"    # Lcom/sec/android/app/camera/Camera;
    .param p3, "imageStitcher"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .prologue
    .line 1563
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    .line 1368
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1372
    const/16 v2, 0x10

    new-array v2, v2, [[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    .line 1408
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMaxHeapSize:[I

    .line 1409
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    .line 1414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    .line 1417
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImage:[I

    .line 1433
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    .line 1434
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    .line 1435
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    .line 1436
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    .line 1437
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeIx:I

    .line 1438
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometerIx:I

    .line 1439
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticFieldIx:I

    .line 1440
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOrientationIx:I

    .line 1441
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVectorIx:I

    .line 1444
    const/4 v2, 0x3

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeCorrectValue:[F

    .line 1446
    const/4 v2, 0x3

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    .line 1448
    const/4 v2, 0x3

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    .line 1449
    const/16 v2, 0xa

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    .line 1455
    const/16 v2, 0x10

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->inRM:[F

    .line 1456
    const/16 v2, 0x10

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->outRM:[F

    .line 1458
    const/16 v2, 0x9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    .line 1459
    const/16 v2, 0x9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    .line 1460
    const/16 v2, 0x9

    new-array v2, v2, [D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    .line 1461
    const/4 v2, 0x3

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->orientationValues:[F

    .line 1462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    .line 1463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    .line 1470
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    .line 1478
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 1479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    .line 1492
    const/4 v2, 0x2

    new-array v2, v2, [J

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    .line 1494
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    .line 1495
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    .line 1497
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    .line 1500
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    .line 1504
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isSetOffset:Z

    .line 1507
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    .line 2915
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 2916
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 1564
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "pc Panorama360Callback "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->checkSaveDirectory()V

    .line 1568
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1569
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "mActivityContext is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    if-eqz v2, :cond_0

    .line 1577
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    .line 1578
    .local v12, "ex_strage":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "panorama360"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    .line 1579
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1580
    .local v17, "save_dir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1581
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 1585
    .end local v12    # "ex_strage":Ljava/io/File;
    .end local v17    # "save_dir":Ljava/io/File;
    :cond_0
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    .line 1586
    const-string v2, "1440x1080"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    .line 1587
    const-wide v2, 0x4052400000000000L    # 73.0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAngleOfViewDegree:D

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v19

    .line 1592
    .local v19, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/hardware/Sensor;

    .line 1593
    .local v18, "sensor":Landroid/hardware/Sensor;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    .line 1598
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    .line 1602
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    .line 1606
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    goto :goto_1

    .line 1570
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "sensor":Landroid/hardware/Sensor;
    .end local v19    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_5
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1571
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "mActivityContext.getCameraSettings() is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1573
    :cond_6
    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1611
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v19    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    .line 1612
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    .line 1613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    .line 1614
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;

    .line 1617
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 1618
    new-instance v2, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    invoke-direct {v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    .line 1620
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    .line 1621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOffsetMode:I

    .line 1622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    if-nez v2, :cond_8

    const/4 v15, 0x0

    .line 1623
    .local v15, "is_stock":Z
    :goto_2
    new-instance v2, Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-direct {v2, v15}, Lcom/sec/android/app/camera/panorama360/SensorFusion;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    .line 1624
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcGetInitialSfMode(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setMode(I)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOffsetMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setOffsetMode(I)V

    .line 1627
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->getCameraOrientation(I)I

    move-result v11

    .line 1629
    .local v11, "camera_orientation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v2, v11}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setRotation(I)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setAppState(I)V

    .line 1632
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v10, v2, 0x2

    .line 1633
    .local v10, "buff_size":I
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/glview/TwGLContext;FFLandroid/app/Activity;Landroid/os/Handler;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvGetOrientation()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setInitialOrientation(I)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationEnable(Z)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 1639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetInputGyroscopeType(I)V

    .line 1646
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetPanorama360ViewEventListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    .line 1676
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    array-length v2, v2

    if-ge v13, v2, :cond_a

    .line 1677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    aget-object v2, v2, v13

    const/4 v3, 0x1

    aget v16, v2, v3

    .line 1678
    .local v16, "res_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v13

    .line 1676
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1622
    .end local v10    # "buff_size":I
    .end local v11    # "camera_orientation":I
    .end local v13    # "i":I
    .end local v15    # "is_stock":Z
    .end local v16    # "res_id":I
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 1643
    .restart local v10    # "buff_size":I
    .restart local v11    # "camera_orientation":I
    .restart local v15    # "is_stock":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetInputGyroscopeType(I)V

    goto :goto_3

    .line 1680
    .restart local v13    # "i":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcUpdateScreenRotation()V

    .line 1681
    return-void

    .line 1372
    :array_0
    .array-data 4
        0xc
        0x7f02044c
    .end array-data

    :array_1
    .array-data 4
        0xd
        0x7f02044a
    .end array-data

    :array_2
    .array-data 4
        0xe
        0x7f02044b
    .end array-data

    :array_3
    .array-data 4
        0xf
        0x7f020448
    .end array-data

    :array_4
    .array-data 4
        0x10
        0x7f020449
    .end array-data

    :array_5
    .array-data 4
        0x11
        0x7f020446
    .end array-data

    :array_6
    .array-data 4
        0x12
        0x7f02044d
    .end array-data

    :array_7
    .array-data 4
        0x13
        0x7f020447
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x7f020440
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x7f020444
    .end array-data

    :array_a
    .array-data 4
        0x4
        0x7f020442
    .end array-data

    :array_b
    .array-data 4
        0x5
        0x7f02043e
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x7f020441
    .end array-data

    :array_d
    .array-data 4
        0x7
        0x7f020445
    .end array-data

    :array_e
    .array-data 4
        0x8
        0x7f020443
    .end array-data

    :array_f
    .array-data 4
        0x9
        0x7f02043f
    .end array-data
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1358
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1358
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # [Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorDataSummary(Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->savePanoramaSetting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveUseImageSetting(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;)Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProgressPopup:Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcMoveToNextStateByAttachStatus(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1358
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1358
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$4876(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveImagePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1358
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V

    return-void
.end method

.method static synthetic access$8000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOutputType:I

    return v0
.end method

.method static synthetic access$8002(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # I

    .prologue
    .line 1358
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOutputType:I

    return p1
.end method

.method static synthetic access$8602(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Z

    .prologue
    .line 1358
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)[J
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveDirPath:Ljava/lang/String;

    return-object p1
.end method

.method private createName(J)Ljava/lang/String;
    .locals 1
    .param p1, "dateTaken"    # J

    .prologue
    .line 3171
    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSaveInputFileName(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;)Ljava/lang/String;
    .locals 9
    .param p1, "sinfo_mng"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3163
    iget-wide v4, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->time:J

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 3164
    .local v2, "time":Ljava/lang/String;
    const-string v3, "%05d"

    new-array v4, v8, [Ljava/lang/Object;

    iget v5, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3165
    .local v0, "ix_str":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sg%05d_sa%05d_so%05d_sr%05d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget v7, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->o_ix:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->r_ix:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3166
    .local v1, "name":Ljava/lang/String;
    return-object v1
.end method

.method private pcCheckAngle([D[DDJ)Z
    .locals 9
    .param p1, "cur_angle"    # [D
    .param p2, "base_angle"    # [D
    .param p3, "boundary_angle"    # D
    .param p5, "diff_time"    # J

    .prologue
    .line 2449
    const/4 v3, 0x1

    .line 2452
    .local v3, "ret":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 2453
    aget-wide v4, p2, v2

    aget-wide v6, p1, v2

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2454
    .local v0, "diff_angle":D
    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    .line 2455
    const/4 v3, 0x0

    .line 2452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2464
    .end local v0    # "diff_angle":D
    :cond_1
    return v3
.end method

.method private pcClearWarning()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2337
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 2343
    :cond_1
    return-void
.end method

.method private pcGetInitialSfMode(I)I
    .locals 4
    .param p1, "app_sf_mode"    # I

    .prologue
    .line 1845
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcGetInitialSfMode app_sf_mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    packed-switch p1, :pswitch_data_0

    .line 1870
    const/4 v0, 0x0

    .line 1873
    .local v0, "sf_mode":I
    :goto_0
    return v0

    .line 1849
    .end local v0    # "sf_mode":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1850
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1852
    .end local v0    # "sf_mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1853
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1855
    .end local v0    # "sf_mode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1856
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1858
    .end local v0    # "sf_mode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 1859
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1861
    .end local v0    # "sf_mode":I
    :pswitch_4
    const/4 v0, 0x4

    .line 1862
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1864
    .end local v0    # "sf_mode":I
    :pswitch_5
    const/4 v0, 0x4

    .line 1865
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1867
    .end local v0    # "sf_mode":I
    :pswitch_6
    const/4 v0, 0x2

    .line 1868
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1847
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private pcGetShootingSfMode(I)I
    .locals 4
    .param p1, "app_sf_mode"    # I

    .prologue
    .line 1878
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcGetShootingSfMode app_sf_mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    packed-switch p1, :pswitch_data_0

    .line 1902
    const/4 v0, 0x0

    .line 1905
    .local v0, "sf_mode":I
    :goto_0
    return v0

    .line 1881
    .end local v0    # "sf_mode":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1882
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1884
    .end local v0    # "sf_mode":I
    :pswitch_1
    const/4 v0, 0x1

    .line 1885
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1887
    .end local v0    # "sf_mode":I
    :pswitch_2
    const/4 v0, 0x2

    .line 1888
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1890
    .end local v0    # "sf_mode":I
    :pswitch_3
    const/4 v0, 0x3

    .line 1891
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1893
    .end local v0    # "sf_mode":I
    :pswitch_4
    const/4 v0, 0x4

    .line 1894
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1896
    .end local v0    # "sf_mode":I
    :pswitch_5
    const/4 v0, 0x4

    .line 1897
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1899
    .end local v0    # "sf_mode":I
    :pswitch_6
    const/4 v0, 0x1

    .line 1900
    .restart local v0    # "sf_mode":I
    goto :goto_0

    .line 1879
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private pcIsStopPanoramaShooting(I)Z
    .locals 4
    .param p1, "attach_status"    # I

    .prologue
    .line 2312
    const/4 v0, 0x0

    .line 2313
    .local v0, "is_stop_shooting":Z
    packed-switch p1, :pswitch_data_0

    .line 2333
    :goto_0
    :pswitch_0
    return v0

    .line 2319
    :pswitch_1
    const/4 v0, 0x0

    .line 2320
    goto :goto_0

    .line 2327
    :pswitch_2
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcIsStopPanoramaShooting->stop attach_status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    const/4 v0, 0x1

    .line 2329
    goto :goto_0

    .line 2313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pcIsUseSensor()Z
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 2471
    :cond_1
    const/4 v0, 0x1

    .line 2473
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcMoveToNextStateByAttachStatus(I)V
    .locals 5
    .param p1, "attach_status"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 2346
    packed-switch p1, :pswitch_data_0

    .line 2351
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2355
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcClearWarning()V

    .line 2401
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 2361
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    if-eqz v0, :cond_1

    .line 2362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2363
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2365
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    const v2, 0x7f0c02c1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 2387
    :pswitch_3
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcMoveToNextStateByAttachStatus ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2390
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto :goto_0

    .line 2394
    :pswitch_4
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcMoveToNextStateByAttachStatus STATUS_GUIDE_ENDED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7502(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 2396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2398
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto/16 :goto_0

    .line 2346
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private pcPanoramaInitialize()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1960
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1963
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->mode:I

    .line 1964
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->render_mode:I

    .line 1965
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAngleOfViewDegree:D

    iput-wide v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_angle_of_view_degree:D

    .line 1966
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_width:I

    .line 1967
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_height:I

    .line 1968
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->use_still_capture:I

    .line 1969
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->still_width:I

    .line 1970
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->still_height:I

    .line 1971
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAngleOfViewDegree:D

    iput-wide v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->still_angle_of_view_degree:D

    .line 1972
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    const-string v6, "YVU420_SEMIPLANAR"

    iput-object v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->format:Ljava/lang/String;

    .line 1973
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->alpha_blending_image_frame:I

    .line 1974
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v5, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->gradually_disp_guide_frame:I

    .line 1975
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->fix_current_image:I

    .line 1976
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->disp_current_image:I

    .line 1977
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->blink_preview_mode:I

    .line 1978
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iput v4, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->version:I

    .line 1979
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1980
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1981
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1982
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1983
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1984
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v10, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1985
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1986
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1987
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1988
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1989
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v10, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1990
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1991
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1992
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1993
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1994
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v10, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 1995
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 1996
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 1997
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 1998
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->state_warning_rotated_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 1999
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    const/high16 v6, 0x40400000    # 3.0f

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->Width:F

    .line 2000
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v9, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->R:F

    .line 2001
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->G:F

    .line 2002
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->B:F

    .line 2003
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v3, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;

    iput v8, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$FrameColor;->A:F

    .line 2004
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    const/16 v6, 0x74

    iput v6, v3, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->angle_fov:I

    .line 2006
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProjectionType:I

    .line 2007
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMotionlessThres:I

    .line 2008
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseThres:I

    .line 2009
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForGA:Z

    .line 2010
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForAWF:Z

    .line 2011
    const/16 v3, 0x320

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorThres:I

    .line 2013
    const-string v3, "TwGLPanorama360Menu"

    const-string v6, "pc pcPanoramaInitialize"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMaxHeapSize:[I

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->initialize(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v2

    .line 2015
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 2016
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.initialize error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mProjectionType:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setProjectionType(I)I

    move-result v2

    .line 2021
    if-eqz v2, :cond_1

    .line 2022
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setProjectionType error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMotionlessThres:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setMotionlessThreshold(I)I

    move-result v2

    .line 2027
    if-eqz v2, :cond_2

    .line 2028
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setMotionlessThreshold error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseThres:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseThreshold(I)I

    move-result v2

    .line 2034
    if-eqz v2, :cond_3

    .line 2035
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseThreshold error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForAWF:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_0
    invoke-virtual {v6, v5, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v2

    .line 2041
    if-eqz v2, :cond_4

    .line 2042
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorForGA:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_1
    invoke-virtual {v6, v4, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v2

    .line 2048
    if-eqz v2, :cond_5

    .line 2049
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseSensorThres:I

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setUseSensorThreshold(I)I

    move-result v2

    .line 2053
    if-eqz v2, :cond_6

    .line 2054
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setUseSensorThreshold error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 2059
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    .line 2060
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->RES_ID_PANORAMA_GUIDE_IMAGE:[[I

    aget-object v3, v3, v1

    aget v0, v3, v5

    .line 2061
    .local v0, "guide_image_type":I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v1

    invoke-virtual {v3, v0, v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setGuideImage(ILandroid/graphics/Bitmap;)I

    .line 2063
    if-eqz v2, :cond_7

    .line 2064
    const-string v3, "TwGLPanorama360Menu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMorphoImageStitcher.setGuideImage error ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    .end local v0    # "guide_image_type":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_8
    move v3, v5

    .line 2038
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 2045
    goto :goto_1

    .line 2076
    .restart local v1    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 2079
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->start(I)I

    move-result v2

    .line 2080
    if-eqz v2, :cond_b

    .line 2081
    const-string v3, "TwGLPanorama360Menu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImage:[I

    aput v5, v3, v5

    .line 2085
    return-void
.end method

.method private pcPanoramaPreview([B)V
    .locals 32
    .param p1, "cameraOutputRaw"    # [B

    .prologue
    .line 2089
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    .line 2090
    .local v24, "now_time":J
    const-wide/16 v16, 0x0

    .line 2092
    .local v16, "frame_interval":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    .line 2093
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    sub-long v16, v24, v4

    .line 2095
    :cond_0
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pre_frame_time:J

    .line 2098
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    if-nez v4, :cond_3

    const/16 v20, 0x1

    .line 2099
    .local v20, "is_first":Z
    :goto_0
    if-eqz v20, :cond_1

    .line 2100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 2102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2103
    const/4 v7, 0x0

    .line 2104
    .local v7, "g_mat":[D
    const/4 v8, 0x0

    .line 2105
    .local v8, "rv_mat":[D
    const/4 v9, 0x0

    .line 2106
    .local v9, "ac_mat":[D
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcIsUseSensor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    invoke-virtual {v4, v5, v6, v10, v11}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    .line 2108
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    .line 2109
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    .line 2110
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    .line 2111
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 2112
    new-instance v26, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 2114
    .local v26, "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    .line 2115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    .line 2116
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    move-object/from16 v0, v26

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    .line 2117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v26

    iput-wide v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->time:J

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    .end local v26    # "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 2133
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v5, 0xbb8

    if-ge v4, v5, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ltz v4, :cond_e

    .line 2136
    if-eqz v7, :cond_e

    .line 2138
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    int-to-double v4, v4

    const-wide v10, 0x4092c00000000000L    # 1200.0

    cmpg-double v4, v4, v10

    if-gez v4, :cond_4

    .line 2139
    sget-wide v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_EXTRA_TIME:D

    .line 2143
    .local v14, "boundary_angle":D
    :goto_1
    const/16 v21, 0x1

    .line 2145
    .local v21, "is_stop":Z
    const/4 v4, 0x3

    new-array v13, v4, [D

    .line 2146
    .local v13, "base_angle":[D
    const/4 v4, 0x3

    new-array v12, v4, [D

    .line 2147
    .local v12, "cur_angle_ave":[D
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    if-lez v4, :cond_a

    .line 2148
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v5, v5

    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    add-int/lit8 v27, v4, 0x1

    .line 2150
    .local v27, "use_hist_num":I
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v5, v5

    rem-int v18, v4, v5

    .line 2152
    .local v18, "hist_ix":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_6

    .line 2153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v4, v4, v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    aget-wide v10, v5, v19

    const-wide v30, 0x41cdcd6500000000L    # 1.0E9

    mul-double v10, v10, v30

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v4, v19

    .line 2152
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 2098
    .end local v7    # "g_mat":[D
    .end local v8    # "rv_mat":[D
    .end local v9    # "ac_mat":[D
    .end local v12    # "cur_angle_ave":[D
    .end local v13    # "base_angle":[D
    .end local v14    # "boundary_angle":D
    .end local v18    # "hist_ix":I
    .end local v19    # "i":I
    .end local v20    # "is_first":Z
    .end local v21    # "is_stop":Z
    .end local v27    # "use_hist_num":I
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2141
    .restart local v7    # "g_mat":[D
    .restart local v8    # "rv_mat":[D
    .restart local v9    # "ac_mat":[D
    .restart local v20    # "is_first":Z
    :cond_4
    sget-wide v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_CALC_OFFSET:D

    .restart local v14    # "boundary_angle":D
    goto :goto_1

    .line 2148
    .restart local v12    # "cur_angle_ave":[D
    .restart local v13    # "base_angle":[D
    .restart local v21    # "is_stop":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v0, v4

    move/from16 v27, v0

    goto :goto_2

    .line 2157
    .restart local v18    # "hist_ix":I
    .restart local v19    # "i":I
    .restart local v27    # "use_hist_num":I
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    if-lez v4, :cond_9

    .line 2158
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v6, 0x0

    aget-wide v10, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    int-to-double v0, v5

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v13, v4

    .line 2160
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v6, 0x1

    aget-wide v10, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    int-to-double v0, v5

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v13, v4

    .line 2162
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v6, 0x2

    aget-wide v10, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    int-to-double v0, v5

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v13, v4

    .line 2165
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 2166
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v4, v4, v19

    array-length v4, v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_7

    .line 2167
    aget-wide v4, v12, v22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v6, v6, v19

    aget-wide v10, v6, v22

    add-double/2addr v4, v10

    aput-wide v4, v12, v22

    .line 2166
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 2165
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 2170
    .end local v22    # "j":I
    :cond_8
    const/4 v4, 0x0

    aget-wide v10, v12, v4

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v12, v4

    .line 2171
    const/4 v4, 0x1

    aget-wide v10, v12, v4

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v12, v4

    .line 2172
    const/4 v4, 0x2

    aget-wide v10, v12, v4

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v10, v10, v30

    aput-wide v10, v12, v4

    move-object/from16 v11, p0

    .line 2173
    invoke-direct/range {v11 .. v17}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcCheckAngle([D[DDJ)Z

    move-result v21

    .line 2175
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v5, 0x0

    aget-wide v10, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v6, v6, v18

    const/16 v29, 0x0

    aget-wide v30, v6, v29

    add-double v10, v10, v30

    aput-wide v10, v4, v5

    .line 2176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v5, 0x1

    aget-wide v10, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v6, v6, v18

    const/16 v29, 0x1

    aget-wide v30, v6, v29

    add-double v10, v10, v30

    aput-wide v10, v4, v5

    .line 2177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v5, 0x2

    aget-wide v10, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v6, v6, v18

    const/16 v29, 0x2

    aget-wide v30, v6, v29

    add-double v10, v10, v30

    aput-wide v10, v4, v5

    .line 2178
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    .line 2179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    .line 2180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    .line 2181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v5, 0x2

    const-wide/16 v10, 0x0

    aput-wide v10, v4, v5

    .line 2182
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    .line 2184
    .end local v18    # "hist_ix":I
    .end local v19    # "i":I
    .end local v27    # "use_hist_num":I
    :cond_a
    if-nez v21, :cond_b

    .line 2185
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V

    .line 2187
    :cond_b
    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    if-eqz v4, :cond_e

    .line 2188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_c

    .line 2189
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    .line 2191
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v4, v5, :cond_e

    .line 2194
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    .line 2195
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v4, v5, v6, v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraHeight:I

    const-string v10, "YVU420_SEMIPLANAR"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->setInputData([BIILjava/lang/String;)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->start()V

    .line 2202
    .end local v12    # "cur_angle_ave":[D
    .end local v13    # "base_angle":[D
    .end local v14    # "boundary_angle":D
    .end local v21    # "is_stop":Z
    :cond_e
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    if-eqz v4, :cond_11

    .line 2206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-nez v4, :cond_12

    .line 2207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const-string v5, "OUTDOOR"

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;

    .line 2208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const/4 v5, 0x5

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I

    .line 2209
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pc pcPanoramaPreview SCENE_OUTDOOR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setScene(I)I

    move-result v23

    .line 2211
    .local v23, "ret":I
    if-eqz v23, :cond_f

    .line 2212
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.setScene error ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setGuideType(I)I

    move-result v23

    .line 2215
    if-eqz v23, :cond_10

    .line 2216
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.setGuideType error ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    :cond_10
    :goto_6
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 2232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 2234
    .end local v23    # "ret":I
    :cond_11
    return-void

    .line 2202
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2219
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const-string v5, "INDOOR"

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;

    .line 2220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    const/4 v5, 0x4

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I

    .line 2221
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pc pcPanoramaPreview SCENE_INDOOR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setScene(I)I

    move-result v23

    .line 2223
    .restart local v23    # "ret":I
    if-eqz v23, :cond_13

    .line 2224
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.setScene error ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->setGuideType(I)I

    move-result v23

    .line 2227
    if-eqz v23, :cond_10

    .line 2228
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.setGuideType error ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private pcPanoramaProcess([B)V
    .locals 21
    .param p1, "cameraOutputRaw"    # [B

    .prologue
    .line 2237
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "       panorama_process start >>>>>>"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    if-nez v2, :cond_6

    const/16 v17, 0x1

    .line 2240
    .local v17, "is_first":Z
    :goto_0
    if-eqz v17, :cond_1

    .line 2242
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "pc pcPanoramaProcess first "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->end()I

    move-result v18

    .line 2245
    .local v18, "ret":I
    if-eqz v18, :cond_0

    .line 2246
    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->start(I)I

    move-result v18

    .line 2250
    if-eqz v18, :cond_1

    .line 2251
    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    .end local v18    # "ret":I
    :cond_1
    const/4 v12, 0x0

    .line 2257
    .local v12, "use_image":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2258
    const/4 v14, 0x0

    .line 2259
    .local v14, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2260
    .local v9, "g_mat":[D
    const/4 v10, 0x0

    .line 2261
    .local v10, "rv_mat":[D
    const/4 v11, 0x0

    .line 2262
    .local v11, "ac_mat":[D
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcIsUseSensor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2263
    if-eqz v17, :cond_3

    .line 2264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v3, 0x0

    invoke-static {v6, v7, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2268
    .local v4, "dir_path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2269
    .local v5, "mng_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;>;"
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getStockData()[Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Ljava/lang/String;Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSavePreviewSDThread:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SaveInputDataThread;->start()V

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2273
    .end local v4    # "dir_path":Ljava/lang/String;
    .end local v5    # "mng_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcGetShootingSfMode(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setMode(I)V

    .line 2277
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    invoke-virtual {v2, v3, v6, v7, v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getSensorMatrix([D[D[D[I)I

    .line 2278
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2279
    new-instance v19, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 2281
    .local v19, "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    .line 2282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    .line 2283
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->img_ix:I

    .line 2284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v19

    iput-wide v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->time:J

    .line 2285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSaveInputDataDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    const/4 v3, 0x0

    invoke-static {v6, v7, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2289
    .local v15, "dir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->getSaveInputFileName(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2290
    .local v16, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2292
    .end local v15    # "dir":Ljava/lang/String;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v19    # "sinfo_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroMatrix:[D

    .line 2293
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRVMatrix:[D

    .line 2294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mACMatrix:[D

    .line 2296
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mStatus:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcIsStopPanoramaShooting(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2298
    monitor-exit v20

    .line 2309
    :goto_1
    return-void

    .line 2239
    .end local v9    # "g_mat":[D
    .end local v10    # "rv_mat":[D
    .end local v11    # "ac_mat":[D
    .end local v12    # "use_image":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v17    # "is_first":Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 2300
    .restart local v9    # "g_mat":[D
    .restart local v10    # "rv_mat":[D
    .restart local v11    # "ac_mat":[D
    .restart local v12    # "use_image":I
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v17    # "is_first":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v14}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderInfo([BLjava/util/ArrayList;[D[D[DIILjava/lang/String;)V

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 2306
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    const-string v2, "TwGLPanorama360Menu"

    const-string v3, "<<<<<< panorama_process end"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/panorama360/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2306
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private pcPrepareShooting(Z)V
    .locals 6
    .param p1, "sensor_init"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2918
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcPrepareShooting sensor_init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    if-ne p1, v4, :cond_1

    .line 2921
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 2924
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 2927
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 2928
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 2930
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 2935
    :cond_1
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    .line 2936
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    .line 2937
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2938
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    .line 2939
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    .line 2940
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    .line 2941
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isShootable:Z

    .line 2942
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    .line 2943
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImage:[I

    aput v3, v0, v3

    .line 2944
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2945
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2946
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$7200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 2953
    return-void
.end method

.method private pcResetShootingWaitProcess()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2415
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2416
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->doImageClassify:Z

    .line 2417
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    .line 2427
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->resetOffsetValue()V

    .line 2428
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearStockData()V

    .line 2429
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2432
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    aput-wide v4, v2, v0

    .line 2433
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    aput-wide v4, v2, v0

    .line 2431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2435
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2436
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2437
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValueHist:[[D

    aget-object v2, v2, v0

    aput-wide v4, v2, v1

    .line 2436
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2435
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2440
    .end local v1    # "j":I
    :cond_3
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    .line 2441
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    .line 2442
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleIndex:I

    .line 2443
    return-void
.end method

.method private pcRestartToStartupPreview(Z)V
    .locals 3
    .param p1, "save_image"    # Z

    .prologue
    .line 2404
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcRestartToStartupPreview save_image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 2407
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    .line 2409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2411
    :cond_1
    return-void
.end method

.method private pcUpdateScreenRotation()V
    .locals 7

    .prologue
    .line 1800
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1801
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v4, 0x0

    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1802
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pc pcUpdateScreenRotation old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    .line 1805
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v4, :cond_0

    .line 1806
    const/4 v3, 0x1

    .line 1807
    .local v3, "rotation":I
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    sparse-switch v4, :sswitch_data_0

    .line 1821
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setRotation(I)V

    .line 1823
    .end local v3    # "rotation":I
    :cond_0
    const/4 v0, 0x0

    .line 1824
    .local v0, "degrees":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1838
    :goto_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    sub-int v4, v0, v4

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 1839
    .local v2, "preview_rotation":I
    const-string v4, "TwGLPanorama360Menu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " disp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preview:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/panorama360/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetPreviewRotation(I)V

    .line 1842
    return-void

    .line 1809
    .end local v0    # "degrees":I
    .end local v2    # "preview_rotation":I
    .restart local v3    # "rotation":I
    :sswitch_0
    const/4 v3, 0x0

    .line 1810
    goto :goto_0

    .line 1812
    :sswitch_1
    const/4 v3, 0x1

    .line 1813
    goto :goto_0

    .line 1815
    :sswitch_2
    const/4 v3, 0x2

    .line 1816
    goto :goto_0

    .line 1818
    :sswitch_3
    const/4 v3, 0x3

    goto :goto_0

    .line 1826
    .end local v3    # "rotation":I
    .restart local v0    # "degrees":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1827
    goto :goto_1

    .line 1829
    :pswitch_1
    const/16 v0, 0x5a

    .line 1830
    goto :goto_1

    .line 1832
    :pswitch_2
    const/16 v0, 0xb4

    .line 1833
    goto :goto_1

    .line 1835
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 1807
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 1824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private savePanoramaInputData(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "dir_path"    # Ljava/lang/String;
    .param p2, "clear_sensor_info"    # Z

    .prologue
    const/4 v10, 0x0

    .line 3175
    const-string v8, "TwGLPanorama360Menu"

    const-string v9, "pc SaveInputDataThread savePanoramaInputData "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDebugType:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    .line 3221
    :cond_0
    :goto_0
    return-void

    .line 3179
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-nez v8, :cond_2

    .line 3180
    const-string v8, "TwGLPanorama360Menu"

    const-string v9, "SensorFusion is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3183
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3184
    .local v3, "save_dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3185
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 3188
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sg.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3189
    .local v5, "sg_save_path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sa.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3193
    .local v2, "sa_save_path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "input_sensor_info.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3196
    .local v6, "summary_savepath":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getStockData()[Ljava/util/ArrayList;

    move-result-object v0

    .line 3198
    .local v0, "allValueList":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    aget-object v8, v0, v10

    invoke-direct {p0, v8, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3199
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-direct {p0, v8, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3202
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 3203
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveSensorDataSummary(Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3205
    :cond_4
    if-eqz p2, :cond_6

    .line 3206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    array-length v8, v8

    if-ge v1, v8, :cond_5

    .line 3207
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurSensorIndex:[I

    aput v10, v8, v1

    .line 3206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3209
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->clearStockData()V

    .line 3210
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    .line 3211
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorInfoMngList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3214
    .end local v1    # "i":I
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "setting.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3215
    .local v4, "setting_path":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->savePanoramaSetting(Ljava/lang/String;)V

    .line 3216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "use_image_setting.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3217
    .local v7, "use_img_setting_path":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    invoke-direct {p0, v8, v7}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->saveUseImageSetting(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 3218
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 3219
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseImageList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private savePanoramaSetting(Ljava/lang/String;)V
    .locals 12
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 3224
    const-string v6, "TwGLPanorama360Menu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pc SaveInputDataThread savePanoramaSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3227
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v2, v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3228
    .local v2, "filewriter":Ljava/io/FileWriter;
    new-instance v5, Ljava/io/BufferedWriter;

    invoke-direct {v5, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3230
    .local v5, "writer":Ljava/io/BufferedWriter;
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I
    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    const-string v3, "VANILLA2"

    .line 3233
    .local v3, "guide_type":Ljava/lang/String;
    :goto_0
    const-string v6, "build_model:%s\r\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3234
    .local v4, "write_str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "aovd:%f\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v10, v10, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->input_angle_of_view_degree:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "use_thres:%d\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mUseThres:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "motionless_thres:%d\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMotionlessThres:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "engine_version:Ver.%d\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaInitParam:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;

    iget v10, v10, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher$PanoramaInitParam;->version:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "guide_type:%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sensor_fusion_mode:%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "camera_orientation:%s\r\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCameraOrientation:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "scene:%s(%f)\r\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3242
    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 3244
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 3248
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filewriter":Ljava/io/FileWriter;
    .end local v3    # "guide_type":Ljava/lang/String;
    .end local v4    # "write_str":Ljava/lang/String;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 3230
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filewriter":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    const-string v3, "VANILLA"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3245
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filewriter":Ljava/io/FileWriter;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3246
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSensorData(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .param p2, "file_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3288
    .local p1, "sensor_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    const-string v8, "TwGLPanorama360Menu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pc SaveInputDataThread saveSensorData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 3308
    :cond_0
    :goto_0
    return-void

    .line 3293
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3294
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v2, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3295
    .local v2, "filewriter":Ljava/io/FileWriter;
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3297
    .local v7, "writer":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 3298
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    .line 3299
    .local v5, "sinfo_0":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    .line 3300
    .local v4, "sinfo":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v5, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-direct {p0, v4, v3, v10, v11}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorData(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3301
    .local v6, "write_str":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3303
    .end local v4    # "sinfo":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .end local v5    # "sinfo_0":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .end local v6    # "write_str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 3304
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3305
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filewriter":Ljava/io/FileWriter;
    .end local v3    # "i":I
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3306
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveSensorDataSummary(Ljava/util/ArrayList;[Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 19
    .param p3, "file_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;",
            ">;[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3330
    .local p1, "sd_mng":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;>;"
    .local p2, "all_sd":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    const-string v14, "TwGLPanorama360Menu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pc SaveInputDataThread saveSensorData "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3333
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileWriter;

    const/4 v14, 0x1

    invoke-direct {v4, v3, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3334
    .local v4, "filewriter":Ljava/io/FileWriter;
    new-instance v13, Ljava/io/BufferedWriter;

    invoke-direct {v13, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3338
    .local v13, "writer":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 3339
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;

    .line 3340
    .local v10, "sensor_info_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    iget v11, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->stop_thres:I

    .line 3341
    .local v11, "stop_thres":I
    const/4 v14, 0x0

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->g_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v5

    .line 3342
    .local v5, "g_str":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->a_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    .line 3343
    .local v1, "a_str":Ljava/lang/String;
    const/4 v14, 0x0

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->o_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v8

    .line 3344
    .local v8, "o_str":Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->r_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v9

    .line 3345
    .local v9, "r_str":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, p2, v14

    iget v15, v10, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;->m_ix:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v7

    .line 3346
    .local v7, "m_str":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%6d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3347
    .local v12, "write_str":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3338
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3349
    .end local v1    # "a_str":Ljava/lang/String;
    .end local v5    # "g_str":Ljava/lang/String;
    .end local v7    # "m_str":Ljava/lang/String;
    .end local v8    # "o_str":Ljava/lang/String;
    .end local v9    # "r_str":Ljava/lang/String;
    .end local v10    # "sensor_info_mng":Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$SensorInfoManager;
    .end local v11    # "stop_thres":I
    .end local v12    # "write_str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    .line 3350
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .end local v6    # "i":I
    .end local v13    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 3351
    :catch_0
    move-exception v2

    .line 3352
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private saveUseImageSetting(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 13
    .param p2, "file_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3251
    .local p1, "image_id_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "TwGLPanorama360Menu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pc SaveInputDataThread saveUseImageSetting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3285
    :cond_0
    :goto_0
    return-void

    .line 3255
    :cond_1
    const/4 v1, 0x0

    .line 3256
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 3257
    .local v3, "filewriter":Ljava/io/FileWriter;
    const/4 v7, 0x0

    .line 3259
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3260
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    const/4 v9, 0x1

    invoke-direct {v4, v2, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3261
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .local v4, "filewriter":Ljava/io/FileWriter;
    :try_start_2
    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3263
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 3264
    const-string v9, "%d\r\n"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3265
    .local v6, "write_str":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3263
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3270
    .end local v6    # "write_str":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 3272
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3277
    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    .line 3279
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .line 3282
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 3273
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 3274
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3280
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3281
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .line 3282
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 3267
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    :catch_2
    move-exception v0

    .line 3268
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3270
    if-eqz v7, :cond_4

    .line 3272
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3277
    :cond_4
    :goto_4
    if-eqz v3, :cond_0

    .line 3279
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 3280
    :catch_3
    move-exception v0

    .line 3281
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3273
    :catch_4
    move-exception v0

    .line 3274
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3270
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v7, :cond_5

    .line 3272
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 3277
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 3279
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 3282
    :cond_6
    :goto_7
    throw v9

    .line 3273
    :catch_5
    move-exception v0

    .line 3274
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3280
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 3281
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 3270
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_5

    .line 3267
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "i":I
    .restart local v2    # "file":Ljava/io/File;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v5    # "i":I
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_9
    move-exception v0

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filewriter":Ljava/io/FileWriter;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :cond_7
    move-object v7, v8

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "filewriter":Ljava/io/FileWriter;
    .restart local v3    # "filewriter":Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private toStringSensorData(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;IJ)Ljava/lang/String;
    .locals 13
    .param p1, "info"    # Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    .param p2, "index"    # I
    .param p3, "base_time"    # J

    .prologue
    .line 3314
    const-string v6, "%05d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3315
    .local v0, "ix":Ljava/lang/String;
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    sub-long v10, v10, p3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3316
    .local v2, "tm":Ljava/lang/String;
    const-string v6, "%f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v10, 0x0

    aget-wide v10, v9, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3317
    .local v3, "v0":Ljava/lang/String;
    const-string v6, "%f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v10, 0x1

    aget-wide v10, v9, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3318
    .local v4, "v1":Ljava/lang/String;
    const-string v6, "%f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mValues:[D

    const/4 v10, 0x2

    aget-wide v10, v9, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3320
    .local v5, "v2":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3326
    .local v1, "str":Ljava/lang/String;
    return-object v1
.end method

.method private toStringSensorDataSummary(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .param p2, "ix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3358
    .local p1, "s_info_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 3359
    :cond_0
    const-string v3, "Unsupported\t-\t-\t-\t-"

    .line 3375
    .local v3, "str":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3364
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    if-gez p2, :cond_2

    .line 3365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3371
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    iget-wide v0, v4, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    .line 3372
    .local v0, "base_time":J
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;

    .line 3373
    .local v2, "info":Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;
    invoke-direct {p0, v2, p2, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->toStringSensorData(Lcom/sec/android/app/camera/panorama360/core/MorphoSensorFusion$SensorData;IJ)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 2956
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3073
    return-void
.end method

.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "sec_camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    const/4 v2, 0x0

    .line 1912
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    if-eqz v0, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1922
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPreviewFrame mNeedToRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    .line 1927
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 1929
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1930
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    if-nez v0, :cond_3

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    if-nez v0, :cond_4

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z

    .line 1938
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1942
    :pswitch_0
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc onPreviewFrame PANORAMA_STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V

    goto :goto_0

    .line 1938
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1946
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaPreview([B)V

    .line 1947
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaPreviewCount:I

    goto :goto_0

    .line 1950
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaProcess([B)V

    .line 1951
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    goto :goto_0

    .line 1940
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 2962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorLockObj:Ljava/lang/Object;

    monitor-enter v13

    .line 2963
    :try_start_0
    const-string v12, "TwGLPanorama360Menu"

    const-string v14, "       onSensorChanged start >>>>>>"

    invoke-static {v12, v14}, Lcom/sec/android/app/camera/panorama360/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscope:Landroid/hardware/Sensor;

    if-ne v12, v14, :cond_2

    .line 2967
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->isStartShooting:Z

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v14, 0xbb8

    if-ge v12, v14, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ltz v12, :cond_1

    .line 2970
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2971
    .local v8, "pre_time":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_0

    .line 2972
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    int-to-float v12, v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    const v15, 0x358637bd    # 1.0E-6f

    mul-float/2addr v14, v15

    add-float/2addr v12, v14

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    .line 2974
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v12, v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    mul-float/2addr v12, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float v2, v12, v14

    .line 2976
    .local v2, "ax":F
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v12, v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    mul-float/2addr v12, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float v3, v12, v14

    .line 2978
    .local v3, "ay":F
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    mul-float/2addr v12, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float v4, v12, v14

    .line 2981
    .local v4, "az":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v14, 0x0

    aget-wide v16, v12, v14

    float-to-double v0, v2

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v12, v14

    .line 2982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v14, 0x1

    aget-wide v16, v12, v14

    float-to-double v0, v3

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v12, v14

    .line 2983
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mCurGyroscopeAngleValue:[D

    const/4 v14, 0x2

    aget-wide v16, v12, v14

    float-to-double v0, v4

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    aput-wide v16, v12, v14

    .line 2984
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeValueNumPerFrame:I

    .line 2988
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    if-gt v12, v14, :cond_7

    .line 2989
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    int-to-double v14, v12

    const-wide v16, 0x405a200000000000L    # 104.5

    mul-double v14, v14, v16

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .line 2990
    .local v6, "d_progress":D
    mul-double v14, v6, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v9, v14

    .line 3002
    .end local v6    # "d_progress":D
    .local v9, "progress":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 3004
    .end local v2    # "ax":F
    .end local v3    # "ay":F
    .end local v4    # "az":F
    .end local v9    # "progress":I
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v14, 0xbb8

    if-lt v12, v14, :cond_b

    .line 3005
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setAppState(I)V

    .line 3007
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v14, 0x2

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 3011
    const-string v12, "TwGLPanorama360Menu"

    const-string v14, "pc onSensorChanged 3sec FOCUSMODE_AF"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mnSensorCalculationCompleted()Z

    .line 3040
    .end local v8    # "pre_time":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeIx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGyroscopeIx:I

    .line 3041
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->prev_timestamp:J

    .line 3043
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne v12, v14, :cond_3

    .line 3044
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v12}, [F->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    .line 3045
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerTimeStamp:J

    .line 3046
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometerIx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAccelerometerIx:I

    .line 3048
    :cond_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticField:Landroid/hardware/Sensor;

    if-ne v12, v14, :cond_4

    .line 3049
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v12}, [F->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    .line 3050
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticTimeStamp:J

    .line 3051
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticFieldIx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMagneticFieldIx:I

    .line 3053
    :cond_4
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVector:Landroid/hardware/Sensor;

    if-ne v12, v14, :cond_5

    .line 3054
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVectorIx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mRotationVectorIx:I

    .line 3058
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    if-eqz v12, :cond_6

    .line 3059
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->inRM:[F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 3061
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->inRM:[F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->orientationValues:[F

    invoke-static {v12, v14}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 3062
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOrientationIx:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mOrientationIx:I

    .line 3063
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerTimeStamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticTimeStamp:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-lez v12, :cond_c

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerTimeStamp:J

    .line 3065
    .local v10, "ts":J
    :goto_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticValues:[F

    .line 3066
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->accelerometerValues:[F

    .line 3068
    .end local v10    # "ts":J
    :cond_6
    const-string v12, "TwGLPanorama360Menu"

    const-string v14, "<<<<<< onSensorChanged end"

    invoke-static {v12, v14}, Lcom/sec/android/app/camera/panorama360/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    monitor-exit v13

    .line 3070
    return-void

    .line 2991
    .restart local v2    # "ax":F
    .restart local v3    # "ay":F
    .restart local v4    # "az":F
    .restart local v8    # "pre_time":I
    :cond_7
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ge v12, v14, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    if-gt v12, v14, :cond_8

    .line 2992
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    .restart local v9    # "progress":I
    goto/16 :goto_0

    .line 2993
    .end local v9    # "progress":I
    :cond_8
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ge v12, v14, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    if-gt v12, v14, :cond_9

    .line 2994
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    sub-int/2addr v12, v14

    int-to-double v14, v12

    const-wide v16, 0x405a200000000000L    # 104.5

    mul-double v14, v14, v16

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .line 2995
    .restart local v6    # "d_progress":D
    mul-double v14, v6, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v12, v14

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    add-int v9, v12, v14

    .restart local v9    # "progress":I
    goto/16 :goto_0

    .line 2996
    .end local v6    # "d_progress":D
    .end local v9    # "progress":I
    :cond_9
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    if-ge v12, v14, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    if-gt v12, v14, :cond_a

    .line 2997
    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    .restart local v9    # "progress":I
    goto/16 :goto_0

    .line 2999
    .end local v9    # "progress":I
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    sub-int/2addr v12, v14

    int-to-double v14, v12

    const-wide v16, 0x405a200000000000L    # 104.5

    mul-double v14, v14, v16

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    int-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v6, v14, v16

    .line 3000
    .restart local v6    # "d_progress":D
    mul-double v14, v6, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v12, v14

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    add-int v9, v12, v14

    .restart local v9    # "progress":I
    goto/16 :goto_0

    .line 3017
    .end local v2    # "ax":F
    .end local v3    # "ay":F
    .end local v4    # "az":F
    .end local v6    # "d_progress":D
    .end local v9    # "progress":I
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mWaitTime:I

    const/16 v14, 0x3e8

    if-le v12, v14, :cond_1

    .line 3018
    const/16 v12, 0x3e8

    if-gt v8, v12, :cond_1

    .line 3019
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    aput-wide v16, v12, v14

    .line 3020
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    aput-wide v16, v12, v14

    .line 3021
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValue:[D

    const/4 v14, 0x2

    const-wide/16 v16, 0x0

    aput-wide v16, v12, v14

    .line 3022
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mTotalGyroscopeValueNum:I

    .line 3023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setAppState(I)V

    .line 3025
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z
    invoke-static {v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 3026
    const-string v12, "TwGLPanorama360Menu"

    const-string v14, "pc onSensorChanged 1sec FOCUSMODE_AF"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3028
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mContextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CommonEngine;->doAutoFocusAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3029
    :catch_0
    move-exception v5

    .line 3030
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v12, "TwGLPanorama360Menu"

    const-string v14, "pc AutoFocus failed"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3069
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "pre_time":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 3063
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->magneticTimeStamp:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method public pcOnBackProc()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3076
    const/4 v0, 0x0

    .line 3077
    .local v0, "finishPanorama":Z
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pc pcOnBackProc mPanoramaState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    packed-switch v1, :pswitch_data_0

    .line 3110
    :goto_0
    return v0

    .line 3081
    :pswitch_0
    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    .line 3082
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "pcOnBackProc,assertion error!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3092
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$11200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;->onPanorama360CaptureCancelled()V

    .line 3093
    invoke-virtual {p0, v5, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 3094
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    .line 3096
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3097
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    .line 3098
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 3100
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3101
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    .line 3102
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 3104
    :cond_1
    const/4 v0, 0x1

    .line 3105
    goto :goto_0

    .line 3078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pcRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1781
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "pc pcRelease "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1784
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1786
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mGuideImage:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    .line 1783
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1790
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1791
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1792
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mImageClassifyBmp:Landroid/graphics/Bitmap;

    .line 1794
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v1, :cond_3

    .line 1795
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->release()V

    .line 1797
    :cond_3
    return-void
.end method

.method public pcRestartShooting(ZZ)V
    .locals 4
    .param p1, "save_image"    # Z
    .param p2, "do_in_background"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1693
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc pcRestartShooting "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z

    move-result v1

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$4202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z

    .line 1696
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1697
    const/4 p1, 0x0

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 1700
    if-eqz p2, :cond_1

    .line 1701
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartToStartupPreview(Z)V

    .line 1711
    :goto_0
    return-void

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$3300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1704
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 1706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManagerPanorama360()V

    .line 1707
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 1708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStartShooting()V

    .line 1709
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pcSensorCalculationCompleted()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1684
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "pc pcSensorCalculationCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    if-eq v0, v2, :cond_0

    .line 1690
    :goto_0
    return-void

    .line 1688
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->moveToShooting:Z

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mDateTaken:[J

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public pcStartShooting()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 1714
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "pc pcStartShooting "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 1717
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1718
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mActivityContext is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1737
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1738
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1739
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V

    .line 1740
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->start(I)I

    move-result v0

    .line 1741
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 1742
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMorphoImageStitcher.start(1) error int panorama_restart_button onclicked ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/panorama360/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    :cond_2
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1748
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mAppSensorFusionMode:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcGetInitialSfMode(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    .line 1749
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusionMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->setMode(I)V

    .line 1750
    return-void

    .line 1720
    .end local v0    # "ret":I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1721
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mActivityContext.getCameraSettings() is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1723
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$5900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 1724
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenuItems()V

    goto/16 :goto_0

    .line 1728
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEasyCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1729
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEasyCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->showBaseMenu()V

    goto/16 :goto_0
.end method

.method public pcStopShooting(ZZZ)V
    .locals 6
    .param p1, "unregist_sensor"    # Z
    .param p2, "save_image"    # Z
    .param p3, "do_in_background"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1753
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc pcStopShooting unregist_sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " save_image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " do_in_background: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    if-ne p1, v4, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1756
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1758
    :cond_0
    if-eqz p2, :cond_2

    .line 1777
    :cond_1
    :goto_0
    return-void

    .line 1761
    :cond_2
    if-eqz p3, :cond_4

    .line 1762
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 1764
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    invoke-direct {v0, p0, v5, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    .line 1766
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishShootingAsync:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback$FinishShootingAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1769
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1770
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mFinishFlg:Z

    .line 1771
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I

    .line 1772
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->releaseRegisteredImage()I

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 1774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->end()I

    goto :goto_0
.end method
