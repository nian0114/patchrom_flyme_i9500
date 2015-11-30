.class public Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360ViewEventListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ResultInfo;,
        Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    }
.end annotation


# static fields
.field private static final AppVersion:Ljava/lang/String; = "360Panorama AppVer.1.0.2 2013/10/01"

.field public static final BOUNDARY_APS_FOR_CALC_OFFSET:D

.field public static final BOUNDARY_APS_FOR_EXTRA_TIME:D

.field public static CENTER_GUIDE_ANIMATION_PHASE1:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE2:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE3:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE4:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PHASE5:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS1:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS2:I = 0x0

.field public static CENTER_GUIDE_ANIMATION_PROGRESS3:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "TwGLPanorama360Menu"

.field private static final MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

.field private static final MORPHO_HELP_TEXT_ALIGN_POS_X:F

.field private static final MORPHO_HELP_TEXT_ALIGN_POS_Y:F

.field private static final MORPHO_HELP_TEXT_ALIGN_SIZE:F = 45.0f

.field private static final MORPHO_HELP_TEXT_ALIGN_WIDTH:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_SIZE:F = 45.0f

.field private static final MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

.field private static final MORPHO_ROTATE_GUIDE_HEIGHT:F

.field private static final MORPHO_ROTATE_GUIDE_POS_X:F

.field private static final MORPHO_ROTATE_GUIDE_POS_Y:F

.field private static final MORPHO_ROTATE_GUIDE_WIDTH:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_POS_X:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

.field private static final MORPHO_WARNING_TEXT_ALIGN_SIZE:F = 45.0f

.field private static final MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

.field public static final OUTPUT_TYPE_BOUNDING:I = 0x0

.field public static final OUTPUT_TYPE_CLIPPING:I = 0x1

.field public static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field public static final SENSOR_CORRECTION_EXTRA_TIME:I = 0x3e8

.field public static final SENSOR_CORRECTION_TIME_BEFORE_HAND:I = 0x2710

.field public static final SENSOR_CORRECTION_TIME_EVERYTIME:I = 0xbb8

.field public static final SF_MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final SF_MODE_USE_ALL_SENSORS:I = 0x0

.field public static final SF_MODE_USE_GYROSCOPE:I = 0x1

.field public static final SF_MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final SF_MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final SF_MODE_USE_GYROSCOPE_WITH_ACCELEROMETER_EX:I = 0x6

.field public static final SF_MODE_USE_ROTATION_VECTOR:I = 0x5

.field private static final STOP_BUTTON_ICON_POS_X:I

.field private static final STOP_BUTTON_ICON_POS_Y:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field private static final UNDO_BUTTON_POS_X:I

.field private static final UNDO_BUTTON_POS_Y:I


# instance fields
.field private contextActivity:Lcom/sec/android/app/camera/Camera;

.field private imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field private mAllGuideTaken:Z

.field private mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mEmptyPreviewSyncObj:Ljava/lang/Object;

.field private mGuideDialogVisibility:Z

.field private mGuideType:I

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

.field private mImageClassifyResult:D

.field private mInFinishShootingAsync:Z

.field private mIsEnoughSpace:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

.field private mNeedToRestart:Z

.field private mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

.field protected mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRootView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

.field private mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

.field private mSaveStorage:I

.field private mSceneStr:Ljava/lang/String;

.field private mShootingNum:I

.field private mStartingPanorama360Time:J

.field private mStopUpdate:Z

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0a000b

    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x7f0a0475

    .line 102
    const/16 v0, 0x280

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE1:I

    .line 103
    const/16 v0, 0x49c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE2:I

    .line 104
    const/16 v0, 0x71c

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE3:I

    .line 105
    const/16 v0, 0x938

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE4:I

    .line 106
    const/16 v0, 0xbb8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PHASE5:I

    .line 107
    const/16 v0, 0x2aaa

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS1:I

    .line 108
    const/16 v0, 0x5555

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS2:I

    .line 109
    const v0, 0x8000

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->CENTER_GUIDE_ANIMATION_PROGRESS3:I

    .line 111
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_EXTRA_TIME:D

    .line 112
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->BOUNDARY_APS_FOR_CALC_OFFSET:D

    .line 114
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a001a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    .line 116
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    .line 118
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    const v1, 0x7f0a001e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_ICON_POS_X:I

    .line 119
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_ICON_POS_Y:I

    .line 121
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a03e6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->UNDO_BUTTON_POS_X:I

    .line 123
    const v0, 0x7f0a03e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->UNDO_BUTTON_POS_Y:I

    .line 125
    const v0, 0x7f0a03d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    .line 126
    const v0, 0x7f0a03d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

    .line 127
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_X:F

    .line 128
    const v0, 0x7f0a03d8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    .line 130
    const v0, 0x7f0a03de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    .line 131
    const v0, 0x7f0a03df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

    .line 132
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

    .line 133
    const v0, 0x7f0a03e0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    .line 135
    const v0, 0x7f0a03e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    .line 136
    const v0, 0x7f0a03e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

    .line 137
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_X:F

    .line 138
    const v0, 0x7f0a03e4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    .line 141
    const v0, 0x7f0a03da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    .line 142
    const v0, 0x7f0a03db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_HEIGHT:F

    .line 143
    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_X:F

    .line 144
    const v0, 0x7f0a03dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "camera"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "menuidPanorama360"    # I
    .param p3, "mShootingmodeRoot"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "mMenuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 187
    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;

    .line 168
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->setCaptureEnabled(Z)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->setTouchHandled(Z)V

    .line 191
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn TwGLPanorama360Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 198
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020030

    const v5, 0x7f020032

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 205
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->STOP_BUTTON_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02047b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 214
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 215
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->UNDO_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->UNDO_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020043

    const v5, 0x7f020044

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 251
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    .line 254
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c02bf

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x42340000    # 45.0f

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a03d9

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0475

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a03d9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0476

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 269
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_HEIGHT:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c02c0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x42340000    # 45.0f

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a03e1

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0475

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a03e1

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0476

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_HELP_TEXT_PLACE_TARGET_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 284
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_HEIGHT:F

    const-string v6, ""

    const/high16 v7, 0x42340000    # 45.0f

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a03e5

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0475

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const v2, 0x7f0a03e5

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0476

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0476

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_WARNING_TEXT_ALIGN_WIDTH:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 300
    const v0, 0x7f02044e

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    .line 301
    const v0, 0x7f02044f

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 305
    .local v9, "SCREEN_WIDTH":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0476

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 306
    .local v8, "SCREEN_HEIGHT":I
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v9

    int-to-float v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v0}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 311
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 325
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getBaseIndicatorRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mEmptyPreviewSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    return v0
.end method

.method static synthetic access$3408(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showNotEnoughSpaceMsg()V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    return-wide v0
.end method

.method static synthetic access$6702(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;D)D
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # D

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D

    return-wide p1
.end method

.method static synthetic access$6800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSceneStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I

    return v0
.end method

.method static synthetic access$6902(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideType:I

    return p1
.end method

.method static synthetic access$7000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 6

    .prologue
    .line 3530
    const/4 v0, 0x1

    .line 3531
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 3532
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available storage size is not enough. -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    const/4 v0, 0x0

    .line 3535
    :cond_0
    return v0
.end method

.method private createRotateGuideImage(I)Lcom/sec/android/glview/TwGLImage;
    .locals 12
    .param p1, "rid"    # I

    .prologue
    const v11, 0x7f0a03dd

    const v10, 0x7f0a0475

    const/4 v6, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x7f0a0476

    .line 354
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn createRotateGuideImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_HEIGHT:F

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    .line 356
    .local v0, "guide_image":Lcom/sec/android/glview/TwGLImage;
    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v9

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 359
    const/4 v1, 0x2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_POS_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 362
    const/4 v1, 0x3

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->MORPHO_ROTATE_GUIDE_WIDTH:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 365
    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 366
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 367
    return-object v0
.end method

.method public static getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 3539
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method private showNotEnoughSpaceMsg()V
    .locals 1

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showMediaStorageDialog()V

    .line 3544
    return-void
.end method

.method private showVersion()V
    .locals 5

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "engVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 337
    .local v2, "sfusionVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-static {}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 342
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorFusion:Lcom/sec/android/app/camera/panorama360/SensorFusion;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/panorama360/SensorFusion;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 347
    :goto_1
    const-string v0, "360Panorama AppVer.1.0.2 2013/10/01"

    .line 348
    .local v0, "appVersion":Ljava/lang/String;
    const-string v3, "TwGLPanorama360Menu"

    const-string v4, "360Panorama AppVer.1.0.2 2013/10/01"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v3, "TwGLPanorama360Menu"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v3, "TwGLPanorama360Menu"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 340
    .end local v0    # "appVersion":Ljava/lang/String;
    :cond_0
    const-string v1, "engVersion is null"

    goto :goto_0

    .line 345
    :cond_1
    const-string v2, "sfusionVersion is null"

    goto :goto_1
.end method


# virtual methods
.method public LeavePanorama360(Z)V
    .locals 8
    .param p1, "isReleaseEngine"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 678
    const-string v2, "TwGLPanorama360Menu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mn LeavePanorama360 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v2, :cond_0

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    .line 684
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;->onPanorama360CaptureCancelled()V

    .line 685
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_1

    .line 686
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v2, v7, v6, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 688
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 690
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 693
    if-ne p1, v7, :cond_9

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v2, :cond_7

    .line 696
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    .line 699
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-result-object v2

    array-length v0, v2

    .line 700
    .local v0, "arrayLength":I
    const/4 v1, 0x0

    .local v1, "renderInfoID":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 701
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mRenderInfo:[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)[Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View$RenderInfo;

    move-result-object v2

    aput-object v5, v2, v1

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 704
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    if-eqz v2, :cond_3

    .line 705
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->clear()V

    .line 706
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iput-object v5, v2, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    .line 709
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_4

    .line 710
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 713
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_5

    .line 714
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 717
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_6

    .line 718
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360ViewRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 721
    :cond_6
    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 723
    .end local v0    # "arrayLength":I
    .end local v1    # "renderInfoID":I
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v2, :cond_8

    .line 724
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    .line 725
    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 728
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_9
    return-void
.end method

.method public hideBaseIndicator()V
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-nez v0, :cond_0

    .line 772
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "hideBaseIndicator: mBaseIndicatorView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return-void

    .line 775
    :cond_0
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBaseIndicator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideCameraBaseIndicator()V

    .line 780
    :cond_1
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBaseIndicator after...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPanorama360Capturing()Z
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaProcessCount:I

    if-lez v0, :cond_0

    .line 734
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn Panorama360 is capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v0, 0x1

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama360Saving()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 741
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-ne v1, v0, :cond_0

    .line 742
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn Panorama360 is saving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mnSensorCalculationCompleted()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 642
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn mnSensorCalculationCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mAllGuideTaken:Z

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_3

    .line 650
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcSensorCalculationCompleted()V

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 672
    :cond_1
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mShootingNum:I

    .line 674
    :cond_2
    return v3

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_4

    .line 653
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext.getCameraSettings() is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenuItems()V

    goto :goto_0

    .line 660
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEasyCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEasyCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->hideBaseMenu()V

    goto :goto_0
.end method

.method public mnSetOnPanorama360CaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$OnPanorama360CaptureCancelListener;

    .line 373
    return-void
.end method

.method public onAutoFocusCompleted()Z
    .locals 2

    .prologue
    .line 628
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onAutoFocusCompleted()Z

    .line 629
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onAutoFocusCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 3

    .prologue
    .line 378
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mn onBack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 380
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 381
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcOnBackProc()Z

    move-result v0

    .line 384
    .local v0, "fin":Z
    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_2

    .line 386
    const-string v1, "TwGLPanorama360Menu"

    const-string v2, "mActivityContext is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 397
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    return v0
.end method

.method protected onHide()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 404
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 406
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRotateGuideCounterClockwise:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mHelpTextPlaceTarget:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationInfo(II)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetAnimationEnable(Z)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcResetShootingWaitProcess()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 425
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 439
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn onKeyDown ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-ne p1, v4, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 447
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    .line 453
    const-string v1, "TwGLPanorama360Menu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mn onKeyUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-ne p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v1, :cond_0

    .line 463
    :goto_0
    return v0

    .line 457
    :cond_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRestartShooting(ZZ)V

    goto :goto_0

    .line 463
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x3

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$702(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;I)I

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_accelerometer:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1002(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->registered_gyroscope:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1102(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)Z

    .line 480
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCalled:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/16 v1, 0x1388

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 490
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 491
    return-void
.end method

.method protected onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 496
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mSaveStorage:I

    .line 498
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->checkAvailableStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mIsEnoughSpace:Z

    .line 499
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStartingPanorama360Time:J

    .line 502
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mInFinishShootingAsync:Z

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPrepareShooting(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1400(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;Z)V

    .line 506
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    if-eqz v0, :cond_5

    .line 507
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mNeedToRestart:Z

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mAnimationEnable:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1502(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;Z)Z

    .line 511
    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mStopUpdate:Z

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanoramaState:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)I

    move-result v0

    if-nez v0, :cond_7

    .line 521
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "onShow PANORAMA_STATE_UNINITIALIZED call mPanorama360Callback.pcPanoramaInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcPanoramaInitialize()V
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->access$1600(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;)V

    .line 523
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "onShow PANORAMA_STATE_UNINITIALIZED back from mPanorama360Callback.pcPanoramaInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDispType(I)V

    .line 551
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->setVisibility(I)V

    goto :goto_0

    .line 530
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_6

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetDrawBgBlankMode(I)V

    goto :goto_1
.end method

.method public onStartingPreviewCompleted()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStartingPreviewCompleted()Z

    .line 590
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mn onStartingPreviewCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->isPanorama360Saving()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->setFocusModeAuto()V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->enablePreviewCallbackManagerPanorama360()V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->setPreviewCallback(Lcom/sec/android/app/camera/CommonEngine$CommonEnginePreviewCallback;)V

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1300(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;)I

    move-result v0

    if-lez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    const/4 v1, 0x5

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->mResetCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->access$1302(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;I)I

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->isPanorama360Saving()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_2

    .line 605
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    :goto_0
    return v3

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_3

    .line 608
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mActivityContext.getCameraSettings() is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenuItems()V

    goto :goto_0

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEasyCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEasyCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->hideBaseMenu()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 559
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "mn onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->showVersion()V

    .line 561
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcStopShooting(ZZZ)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->mPanorama360View:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360View;->pvSetRenderEnable(Z)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;->pcRelease()V

    .line 578
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mPanorama360Callback:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$Panorama360Callback;

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ReleaseMemory;-><init>(Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setGLQueueEvent(Ljava/lang/Runnable;)V

    .line 582
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->imageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 585
    :cond_3
    return-void
.end method

.method public setGuideDialogVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 3547
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mGuideDialogVisibility:Z

    .line 3548
    return-void
.end method

.method public showBaseIndicator()V
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_0

    .line 750
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBaseIndicator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getBaseIndicatorRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getBaseIndicatorRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->findViewByTag(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mRootView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getBatteryLevel()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getBatteryChargingState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(II)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->contextActivity:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusRect()V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_3

    .line 766
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBaseIndicator after...:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mBaseIndicatorView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_3
    return-void
.end method
