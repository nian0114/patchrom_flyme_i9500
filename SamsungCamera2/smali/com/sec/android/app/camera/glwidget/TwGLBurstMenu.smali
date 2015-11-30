.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;,
        Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    }
.end annotation


# static fields
.field private static BESTFACE_MAX_IMAGE_COUNT:I = 0x0

.field public static final BESTPIC_ICON_POX_X:[I

.field public static final BESTPIC_ICON_POX_Y:[I

.field public static final BESTPIC_TEXT_POX_X:[I

.field public static final BESTPIC_TEXT_POX_Y:[I

.field private static BEST_MAX_IMAGE_COUNT:I = 0x0

.field public static final BEST_PIC_ICON_HEIGHT:I

.field public static final BEST_PIC_ICON_TEXT:I

.field public static final BEST_PIC_ICON_WIDTH:I

.field private static final BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

.field private static final BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

.field private static final BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

.field private static final BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

.field public static final BURSTSHOT_RESULT_TEXT_HEIGHT:I

.field public static final BURSTSHOT_RESULT_TEXT_POS_X:F

.field public static final BURSTSHOT_RESULT_TEXT_POS_Y:F

.field public static final BURSTSHOT_RESULT_TEXT_WIDTH:I

.field private static BURST_MAX_IMAGE_COUNT:I = 0x0

.field private static final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

.field private static final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

.field private static final CAPTURE_PROGRESSBAR_STEP_GAP:I

.field private static final CAPTURE_PROGRESSBAR_STEP_WIDTH:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

.field private static final CAPTURE_PROGRESSBAR_TEXT_SIZE:F

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstMenu"

.field private static mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;


# instance fields
.field private BestPoseFilePath:[Ljava/lang/String;

.field private mBestFaceMode:Z

.field private mBestFacepCount:I

.field private mBestPicMode:Z

.field private mBestPicNum:I

.field private mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

.field protected mBurstMsgHandler:Landroid/os/Handler;

.field private mCaptureCount:I

.field private mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

.field protected mDBupdateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mDBupdateThread:Ljava/lang/Thread;

.field private mIsBurstCapturing:Z

.field private mLastOrientationTake:I

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

.field private mMaxStep:I

.field private mOrientation:I

.field private mProgressBarHeight:I

.field private mProgressBarWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStoreCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    .line 72
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    .line 73
    const-string v0, "20"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    .line 85
    new-array v0, v6, [I

    const v1, 0x7f0a05ae

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a05af

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a05b0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a05b1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    .line 87
    new-array v0, v6, [I

    const v1, 0x7f0a05b2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a05b3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a05b4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a05b5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    .line 89
    const v0, 0x7f0a05b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    .line 90
    const v0, 0x7f0a05b7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    .line 91
    const v0, 0x7f0a05b8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_X:F

    .line 92
    const v0, 0x7f0a05bc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_POS_Y:F

    .line 93
    const v0, 0x7f0a0525

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_WIDTH:I

    .line 94
    const v0, 0x7f0a0526

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_RESULT_TEXT_HEIGHT:I

    .line 96
    const v0, 0x7f0a05cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_WIDTH:I

    .line 97
    const v0, 0x7f0a05cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_HEIGHT:I

    .line 98
    const v0, 0x7f0a05ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_TEXT:I

    .line 99
    new-array v0, v6, [I

    const v1, 0x7f0a05cd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a05ce

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a05cf

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a05d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_X:[I

    .line 101
    new-array v0, v6, [I

    const v1, 0x7f0a05d1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a05d2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a05d3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a05d4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_ICON_POX_Y:[I

    .line 103
    new-array v0, v6, [I

    const v1, 0x7f0a05d5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a05d6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a05d7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a05d8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_X:[I

    .line 105
    new-array v0, v6, [I

    const v1, 0x7f0a05d9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0a05da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a05db

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a05dc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTPIC_TEXT_POX_Y:[I

    .line 109
    const v0, 0x7f0a0389

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    .line 110
    const v0, 0x7f0a038a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    .line 111
    const v0, 0x7f0a038b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    .line 112
    const v0, 0x7f0a038c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    .line 113
    const v0, 0x7f0a038d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    .line 114
    const v0, 0x7f0a038e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    .line 115
    const v0, 0x7f0b0065

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_SIZE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 13
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "modeId"    # I

    .prologue
    .line 161
    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 79
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    .line 127
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    .line 133
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    .line 139
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureEnabled(Z)V

    .line 165
    const/16 v1, 0x19

    move/from16 v0, p5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    move/from16 v0, p5

    if-ne v0, v1, :cond_1

    .line 166
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    .line 172
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    .line 173
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    .line 174
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    .line 175
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    .line 176
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    sub-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_HEIGHT:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_BOTTOM_PADDING:I

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_TEXT_SIZE:F

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFFFIFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    .line 181
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f020006

    const v8, 0x7f020002

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_WIDTH:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_PIC_ICON_HEIGHT:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setRotatable(Z)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setRotatable(Z)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 193
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->init()V

    .line 195
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    .line 196
    return-void

    .line 167
    :cond_1
    const/16 v1, 0x18

    move/from16 v0, p5

    if-ne v0, v1, :cond_2

    .line 168
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto/16 :goto_0

    .line 170
    :cond_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setLeftTop(IFF)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setLeftTop(IFF)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarHeight:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScreenHeight:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mProgressBarWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setLeftTop(IFF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v6

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_X:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURSTSHOT_POST_PROGRESSBAR_POS_Y:[I

    aget v2, v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setLeftTop(IFF)V

    .line 209
    return-void
.end method


# virtual methods
.method public DBUpdateLastImage()V
    .locals 13

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    new-instance v12, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 866
    .local v12, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 867
    .local v1, "fileUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "values":Landroid/content/ContentValues;
    check-cast v12, Landroid/content/ContentValues;

    .line 868
    .restart local v12    # "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 869
    const-string v0, "TwGLBurstMenu"

    const-string v2, "db insert last image E"

    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 872
    const-string v0, "TwGLBurstMenu"

    const-string v2, "db insert last image X"

    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    const/4 v6, 0x0

    .line 877
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 879
    .local v10, "startId":I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 880
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 882
    .local v8, "rowId":J
    long-to-int v0, v8

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v2

    add-int/lit8 v10, v0, 0x1

    .line 885
    .end local v8    # "rowId":J
    :cond_1
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 888
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-ge v7, v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "startId":I
    .local v11, "startId":I
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->addUriListInSecureMode(Landroid/net/Uri;)V

    .line 888
    add-int/lit8 v7, v7, 0x1

    move v10, v11

    .end local v11    # "startId":I
    .restart local v10    # "startId":I
    goto :goto_0

    .line 885
    .end local v7    # "i":I
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 893
    .end local v1    # "fileUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "startId":I
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method public DBUpdatebyThread()V
    .locals 2

    .prologue
    .line 895
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    const-string v1, "mDBupdateThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mDBupdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 923
    return-void
.end method

.method protected calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1020
    move v0, p1

    .line 1021
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1023
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1030
    :cond_1
    :goto_0
    return v0

    .line 1025
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1026
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .line 224
    sput-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->clear()V

    .line 227
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->clear()V

    .line 233
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    .line 235
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 236
    return-void
.end method

.method public clearBurstProgressBar()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->clearProgressBar()V

    .line 402
    :cond_0
    return-void
.end method

.method public clearGLView()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 217
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 218
    return-void
.end method

.method public convertToExifInterfaceOrientation(I)I
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1007
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 1008
    const/4 v0, 0x6

    .line 1016
    :cond_0
    :goto_0
    return v0

    .line 1009
    :cond_1
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_2

    .line 1010
    const/4 v0, 0x3

    goto :goto_0

    .line 1011
    :cond_2
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_3

    .line 1012
    const/16 v0, 0x8

    goto :goto_0

    .line 1013
    :cond_3
    const/16 v1, 0x168

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method public createDirForBurst()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1034
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 1036
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v1, :cond_1

    .line 1038
    new-instance v0, Ljava/io/File;

    const-string v1, "mnt/sdcard/DCIM"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1042
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    const-string v1, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1043
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1047
    .end local v0    # "directory":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1050
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1051
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1052
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1054
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1056
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1059
    .end local v0    # "directory":Ljava/io/File;
    :cond_3
    return v3
.end method

.method getBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "index"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "tempBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v4, v5, v3, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 689
    return-object v0
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    return v0
.end method

.method public getPostCaptureProgress()I
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getProgress()I

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getProgressValue()I

    move-result v0

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPostCaptureProgressMax()I
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-eqz v0, :cond_0

    .line 347
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    .line 353
    :goto_0
    return v0

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 349
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getPostCaptureProgressMax()I

    move-result v0

    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    goto :goto_0
.end method

.method public interruptProcessforBestPics()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 948
    iget-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v11, :cond_1

    .line 949
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBurstShots()Z

    move-result v9

    .line 1003
    :cond_0
    :goto_0
    return v9

    .line 952
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, "directory":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/.BestPic"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    .local v4, "fromBestpic":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 962
    .local v0, "bMove":Z
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v5, v11

    .line 963
    .local v5, "i":I
    const-string v11, "TwGLBurstMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Move BestPics to /Camera folder. file number is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_2
    if-lez v5, :cond_3

    .line 970
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v5, v11

    .line 971
    if-nez v5, :cond_5

    .line 995
    :cond_3
    if-eqz v0, :cond_4

    .line 997
    const-string v8, "bucket_id = ?"

    .line 998
    .local v8, "mWhereClause":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 999
    .local v1, "bucketId":I
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v13, v10, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-virtual {v11, v12, v8, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .end local v1    # "bucketId":I
    .end local v8    # "mWhereClause":Ljava/lang/String;
    :cond_4
    move v9, v10

    .line 1003
    goto/16 :goto_0

    .line 964
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 965
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v10, "TwGLBurstMenu"

    const-string v11, "directory is not valid, so return."

    invoke-static {v10, v11}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 973
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "i":I
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 975
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 977
    .local v6, "mFilePath":Ljava/lang/String;
    const-string v11, "_bestshot"

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    if-eqz v6, :cond_0

    .line 980
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const-string v12, "_bestshot"

    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v7, v11, v9, v12}, Ljava/lang/String;-><init>([BII)V

    .line 981
    .local v7, "mFilename":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 983
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    aget-object v11, v11, v5

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 984
    if-eqz v0, :cond_6

    .line 985
    sget-object v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    if-eqz v11, :cond_6

    .line 986
    sget-object v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mScannerClient:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$ScannerClient;->scanPath(Ljava/lang/String;)V

    .line 989
    :cond_6
    if-nez v0, :cond_2

    goto/16 :goto_0
.end method

.method public interruptProcessforBurstShots()Z
    .locals 5

    .prologue
    .line 927
    const/4 v1, 0x0

    .line 928
    .local v1, "mDelete":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    if-gt v0, v3, :cond_6

    .line 929
    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 930
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 931
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    .local v2, "mFile":Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 928
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 933
    .end local v2    # "mFile":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "mFile":Ljava/io/File;
    goto :goto_1

    .line 935
    .end local v2    # "mFile":Ljava/io/File;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 936
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "mFile":Ljava/io/File;
    goto :goto_1

    .line 938
    .end local v2    # "mFile":Ljava/io/File;
    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Burst"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "mFile":Ljava/io/File;
    goto/16 :goto_1

    .line 944
    .end local v2    # "mFile":Ljava/io/File;
    :cond_6
    return v1
.end method

.method public isBestGroupMode()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    return v0
.end method

.method public isBestPicMode()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    return v0
.end method

.method public isBurstCapturing()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    return v0
.end method

.method public isNeedInternalStorage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 257
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 405
    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_5

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_5

    .line 411
    :cond_4
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - block zoom function."

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_5
    if-eq p1, v4, :cond_6

    if-ne p1, v5, :cond_8

    .line 417
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v2

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_7

    .line 418
    const-string v2, "TwGLBurstMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - it is stitching ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_7
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v2, :cond_8

    .line 421
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :cond_8
    if-ne p1, v4, :cond_9

    .line 427
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_9

    .line 428
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_9
    const/16 v2, 0x1a

    if-eq p1, v2, :cond_a

    const/4 v2, 0x3

    if-ne p1, v2, :cond_b

    .line 434
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    .line 435
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 440
    :cond_b
    if-ne p1, v5, :cond_11

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 442
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - BEST_MAX_IMAGE_COUNT"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    :cond_c
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v2, :cond_d

    .line 445
    const-string v2, "TwGLBurstMenu"

    const-string v3, "onKeyDown - Now Burst capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 449
    :cond_d
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 450
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    mul-int/lit8 v2, v2, 0x5a

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    .line 451
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-nez v2, :cond_f

    .line 453
    new-instance v0, Ljava/io/File;

    const-string v2, "mnt/sdcard/DCIM"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 457
    :cond_e
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    const-string v2, "mnt/sdcard/DCIM/Camera"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 462
    .end local v0    # "directory":Ljava/io/File;
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v1, :cond_11

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    if-ne v2, v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v1

    if-nez v1, :cond_11

    .line 465
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 469
    :cond_10
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .restart local v0    # "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 478
    .end local v0    # "directory":Ljava/io/File;
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x1b

    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 482
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_2

    .line 484
    :cond_1
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyDown - block zoom function."

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return v0

    .line 489
    :cond_2
    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_5

    .line 490
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_4

    .line 491
    const-string v1, "TwGLBurstMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v1, :cond_5

    .line 494
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_5
    if-ne p1, v2, :cond_6

    .line 500
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v1, :cond_6

    .line 501
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_6
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    .line 507
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 508
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyDown - Now Burst capturing"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 513
    :cond_8
    if-ne p1, v3, :cond_9

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 515
    const-string v1, "TwGLBurstMenu"

    const-string v2, "onKeyUp - BEST_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mOrientation:I

    .line 571
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 535
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onBurstCaptureCancelled()V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->onHide()V

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->resetPostCaptureProgress()V

    .line 545
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 546
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 531
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 532
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 253
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "TwGLBurstMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 551
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    const-string v0, "TwGLBurstMenu"

    const-string v1, "Burstshot restart"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->resetProgressBar()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setProgress(I)V

    .line 265
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    .line 266
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 269
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    .line 271
    return-void
.end method

.method public resetPostCaptureProgress()V
    .locals 3

    .prologue
    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 276
    .local v0, "modeid":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 277
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BESTFACE_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    .line 284
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    .line 288
    :cond_1
    return-void

    .line 278
    :cond_2
    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    .line 279
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BEST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto :goto_0

    .line 281
    :cond_3
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BURST_MAX_IMAGE_COUNT:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mMaxStep:I

    goto :goto_0
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "TwGLBurstMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->stopCancelTimer()V

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->startCancelTimer()V

    .line 301
    return-void
.end method

.method public setBestGroupMode(Z)V
    .locals 0
    .param p1, "bestGroupMode"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFaceMode:Z

    .line 592
    return-void
.end method

.method public setBestPic(I)V
    .locals 0
    .param p1, "bestpicNum"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    .line 583
    return-void
.end method

.method public setBestPicMode(Z)V
    .locals 1
    .param p1, "bestPicMode"    # Z

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainCounter()V

    .line 588
    return-void
.end method

.method public setBurstCapturing(Z)V
    .locals 0
    .param p1, "capture"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 567
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setProgress(I)V

    .line 318
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setTouchHandled(Z)V

    goto :goto_0
.end method

.method public setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    .line 396
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 326
    const-string v0, "TwGLBurstMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "captureBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 574
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    invoke-virtual {v0, p1, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setCaptureProgressIncreased(Landroid/graphics/Bitmap;Landroid/net/Uri;I)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setAcquisitionProgress(I)V

    .line 579
    :cond_0
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setPostCaptureProgressMax(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public showBestGroupHighlight()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 610
    .local v2, "dateTaken":J
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "address":Ljava/lang/String;
    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, "mTempName":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "directory":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "mResultName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "com.arcsoft.picturesbest.app"

    const-string v10, "com.arcsoft.picturesbest.app.ArcPicturesBestActivity"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    const-string v9, "Camera-BestPose"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    const-string v9, "from-Camera"

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    const-string v9, "FilePath1"

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v10, v10, v8

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v9, "FilePath2"

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v9, "FilePath3"

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v9, "FilePath4"

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string v9, "FilePath5"

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v9, "ResultFilePath"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 631
    const-string v9, "Orientation"

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v10

    mul-int/lit8 v10, v10, 0x5a

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v11

    if-ne v11, v7, :cond_0

    :goto_0
    invoke-static {v10, v7}, Lcom/sec/android/app/camera/Util;->calculateOrientation(IZ)I

    move-result v7

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v9, 0x7d7

    invoke-virtual {v7, v4, v9}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 637
    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/high16 v9, 0x7f050000

    const v10, 0x7f050001

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 638
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 640
    return-void

    :cond_0
    move v7, v8

    .line 631
    goto :goto_0

    .line 633
    :cond_1
    const-string v7, "Orientation"

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v9

    mul-int/lit8 v9, v9, 0x5a

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->setVisibility(I)V

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 392
    return-void
.end method

.method public showEraserMode()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 644
    .local v2, "dateTaken":J
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "address":Ljava/lang/String;
    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 646
    .local v7, "mTempName":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v12

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(II)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "directory":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, "mResultName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v4, "intent":Landroid/content/Intent;
    const-string v11, "com.arcsoft.demo.piclear"

    const-string v12, "com.arcsoft.demo.piclear.PiClearAppActivity"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    new-array v8, v14, [I

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v11

    aput v11, v8, v10

    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v11

    invoke-static {v11}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v11

    aput v11, v8, v9

    .line 656
    .local v8, "pictureSize":[I
    const-string v11, "size_key"

    invoke-virtual {v4, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 657
    const-string v11, "TwGLBurstMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showEraserMode, set size is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v8, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v8, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v5, "mEraserModeFilePath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v11, v11, v10

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    aget-object v11, v11, v14

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    const/4 v12, 0x4

    aget-object v11, v11, v12

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    const-string v11, "file_list_key"

    invoke-virtual {v4, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 669
    const-string v11, "ResultFilePath"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string v11, "mode_key"

    invoke-virtual {v4, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 675
    const-string v11, "Orientation"

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v12

    mul-int/lit8 v12, v12, 0x5a

    iget-object v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v13

    if-ne v13, v9, :cond_0

    :goto_0
    invoke-static {v12, v9}, Lcom/sec/android/app/camera/Util;->calculateOrientation(IZ)I

    move-result v9

    invoke-virtual {v4, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v11, 0x7d8

    invoke-virtual {v9, v4, v11}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 681
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/high16 v11, 0x7f050000

    const v12, 0x7f050001

    invoke-virtual {v9, v11, v12}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 682
    iput-boolean v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 683
    return-void

    :cond_0
    move v9, v10

    .line 675
    goto :goto_0

    .line 677
    :cond_1
    const-string v9, "Orientation"

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v11

    mul-int/lit8 v11, v11, 0x5a

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public showHighlight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 595
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mIsBurstCapturing:Z

    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicNum:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->getUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 601
    const-string v1, "Camera-BestPic"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const-string v1, "from-Camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 603
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x7dd

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 606
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestPicMode:Z

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestProgressBar:Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLImageProgressBar;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 377
    return-void

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->showPostCaptureLayout()V

    goto :goto_0
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 304
    const-string v0, "TwGLBurstMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBurstMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public storeBurstStrings([B)V
    .locals 34
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 694
    .local v25, "mTemp":Ljava/lang/String;
    const-string v4, "jpeg"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const-string v4, "Burst"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const-string v4, "jpeg"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 706
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Burst"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const-string v32, "jpeg"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v32, v32, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 710
    .local v21, "mFilePath":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setAcquisitionProgress(I)V

    .line 715
    :cond_3
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v15, "fromPix":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    .line 717
    .local v20, "mFileName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 719
    .local v22, "mFileSize":J
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 720
    const-string v4, "TwGLBurstMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v32, " is not exist.."

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    const/16 v4, 0xf

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 723
    :try_start_0
    const-string v4, "TwGLBurstMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "sleep 50ms and then retry!!! times: "

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 725
    invoke-virtual {v15}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_8

    .line 731
    :cond_4
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 732
    const-string v4, "TwGLBurstMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v32, " is still not exist.."

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;

    invoke-interface {v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;->onBurstCaptureCancelled()V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 738
    .end local v16    # "i":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 739
    .local v10, "dateTaken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    invoke-static {v10, v11, v2, v4}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 742
    .local v26, "mTempName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CommonEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isNeedInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 746
    :cond_6
    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 751
    .local v12, "directory":Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 753
    .local v24, "mTargetName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 754
    .local v9, "bMove":Z
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestGroupMode()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->BestPoseFilePath:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    add-int/lit8 v32, v5, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mBestFacepCount:I

    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v32, v4, v5

    goto/16 :goto_0

    .line 708
    .end local v2    # "address":Ljava/lang/String;
    .end local v9    # "bMove":Z
    .end local v10    # "dateTaken":J
    .end local v12    # "directory":Ljava/lang/String;
    .end local v15    # "fromPix":Ljava/io/File;
    .end local v20    # "mFileName":Ljava/lang/String;
    .end local v21    # "mFilePath":Ljava/lang/String;
    .end local v22    # "mFileSize":J
    .end local v24    # "mTargetName":Ljava/lang/String;
    .end local v26    # "mTempName":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Burst"

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const-string v32, "jpeg"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v32, v32, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "mFilePath":Ljava/lang/String;
    goto/16 :goto_1

    .line 727
    .restart local v15    # "fromPix":Ljava/io/File;
    .restart local v16    # "i":I
    .restart local v20    # "mFileName":Ljava/lang/String;
    .restart local v22    # "mFileSize":J
    :catch_0
    move-exception v4

    .line 721
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 748
    .end local v16    # "i":I
    .restart local v2    # "address":Ljava/lang/String;
    .restart local v10    # "dateTaken":J
    .restart local v26    # "mTempName":Ljava/lang/String;
    :cond_9
    sget-object v12, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v12    # "directory":Ljava/lang/String;
    goto/16 :goto_3

    .line 761
    .restart local v9    # "bMove":Z
    .restart local v24    # "mTargetName":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_f

    .line 763
    new-instance v31, Landroid/content/ContentValues;

    const/16 v4, 0x8

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 764
    .local v31, "values":Landroid/content/ContentValues;
    const-string v4, "title"

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v4, "_display_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v32, ".jpg"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v4, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v4, "orientation"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    const-string v4, "_data"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v4, "height"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const-string v4, "width"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v4, "_size"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v19

    .line 779
    .local v19, "loc":Landroid/location/Location;
    if-eqz v19, :cond_b

    .line 780
    const-string v4, "latitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLatitude()D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 781
    const-string v4, "longitude"

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getLongitude()D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_b

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->IsWeatherEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "weather_ID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "city_ID"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCityId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    :cond_b
    const-string v4, "group_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->getGroupID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    const-string v4, "date_modified"

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    const/4 v14, 0x0

    .line 797
    .local v14, "fileUri":Landroid/net/Uri;
    :try_start_1
    const-string v4, "TwGLBurstMenu"

    const-string v5, "db insert E"

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 799
    const-string v4, "TwGLBurstMenu"

    const-string v5, "db insert X"

    invoke-static {v4, v5}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    if-eqz v14, :cond_e

    .line 802
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 803
    const-string v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "<GATE-M>PICTURE_TAKEN : "

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v32, " </GATE-M>"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v14}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v4, :cond_d

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v4, v14}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 812
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isSecureKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/sec/android/app/camera/CameraSettings;->addUriListInSecureMode(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 850
    .end local v14    # "fileUri":Landroid/net/Uri;
    .end local v19    # "loc":Landroid/location/Location;
    .end local v31    # "values":Landroid/content/ContentValues;
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mStoreCount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mCaptureCount:I

    if-ne v4, v5, :cond_0

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v32

    mul-int v5, v5, v32

    int-to-double v0, v5

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderHeight()I

    move-result v33

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v5

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/sec/android/app/camera/Util;->makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mLastOrientationTake:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->calculateOrientationForPicture(I)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    goto/16 :goto_0

    .line 816
    .restart local v14    # "fileUri":Landroid/net/Uri;
    .restart local v19    # "loc":Landroid/location/Location;
    .restart local v31    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v29

    .line 817
    .local v29, "sfe":Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "TwGLBurstMenu"

    const-string v5, "Not enough space in database"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0c0184

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-static {v4, v5, v0}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 823
    .end local v14    # "fileUri":Landroid/net/Uri;
    .end local v19    # "loc":Landroid/location/Location;
    .end local v29    # "sfe":Landroid/database/sqlite/SQLiteFullException;
    .end local v31    # "values":Landroid/content/ContentValues;
    :cond_f
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    .local v30, "sourceFile":Ljava/io/File;
    const/16 v17, 0x0

    .line 825
    .local v17, "input":Ljava/io/FileInputStream;
    const/16 v27, 0x0

    .line 826
    .local v27, "output":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 827
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 829
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    :try_start_2
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 830
    .end local v17    # "input":Ljava/io/FileInputStream;
    .local v18, "input":Ljava/io/FileInputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    if-nez v4, :cond_10

    .line 831
    new-instance v28, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v27    # "output":Ljava/io/FileOutputStream;
    .local v28, "output":Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .line 835
    .end local v28    # "output":Ljava/io/FileOutputStream;
    .restart local v27    # "output":Ljava/io/FileOutputStream;
    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 836
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 838
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 839
    .local v6, "size":J
    const-string v32, "TwGLBurstMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file transfered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 845
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 846
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 833
    .end local v6    # "size":J
    :cond_10
    :try_start_4
    new-instance v28, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v27    # "output":Ljava/io/FileOutputStream;
    .restart local v28    # "output":Ljava/io/FileOutputStream;
    move-object/from16 v27, v28

    .end local v28    # "output":Ljava/io/FileOutputStream;
    .restart local v27    # "output":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 840
    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v13

    .line 841
    .local v13, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 842
    const-string v4, "TwGLBurstMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "storeBurstStrings copying failed "

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 845
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 846
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    .line 845
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_7
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 846
    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 845
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .line 840
    .end local v17    # "input":Ljava/io/FileInputStream;
    .restart local v18    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v13

    move-object/from16 v17, v18

    .end local v18    # "input":Ljava/io/FileInputStream;
    .restart local v17    # "input":Ljava/io/FileInputStream;
    goto :goto_6
.end method
