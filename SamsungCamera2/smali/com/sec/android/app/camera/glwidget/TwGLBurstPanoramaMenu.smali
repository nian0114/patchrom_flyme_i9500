.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final CAPTURETRI_HEIGHT:F

.field private static final CAPTURETRI_WIDTH:F

.field private static final EASYMODE_STOP_BUTTON_ICON_POS_X:I

.field private static final EASYMODE_STOP_BUTTON_ICON_POS_Y:I

.field private static final EASYMODE_STOP_BUTTON_POS_X:I

.field private static final EASYMODE_STOP_BUTTON_POS_Y:I

.field private static final GUIDE_TEXT_HEIGHT:F

.field private static final GUIDE_TEXT_MARGIN:F

.field private static final GUIDE_TEXT_SIZE:F

.field private static final GUIDE_TEXT_WIDTH:F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_X:F

.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_X:F

.field private static final INIT_BACKGROUND_RECT_PORTRAIT_Y:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_X:F

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_Y:F = 0.0f

.field private static final INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_X:F

.field private static final INIT_PREVIEW_RECT_PORTRAIT_Y:F = 0.0f

.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F

.field private static final LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F

.field private static final LIVEPREVIEW_LANDSCAPE_X:F

.field private static final LIVEPREVIEW_LANDSCAPE_Y:F

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

.field private static final LIVEPREVIEW_PORTRAIT_DOWN_ARROW_MARGIN:F

.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 60.0f

.field private static final LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_UP_ARROW_MARGIN:F

.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_PORTRAIT_X:F

.field private static final LIVEPREVIEW_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_PORTRAIT_Y_PADDING:F

.field private static final LIVEPREVIEW_RECT_THICKNESS:F

.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_X:F

.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

.field private static final LIVEPREVIEW_SINGLE_WIDTH:F

.field private static final LIVEPREVIEW_SINGLE_X:F

.field private static final LIVEPREVIEW_SINGLE_Y:F

.field private static final MESSAGE_PANORAMA_PROCESSING:I = 0x4

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVESLOWLY:I = 0x5

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static final PANORAMASHOT_RECT_HEIGHT:F

.field private static final PANORAMASHOT_RECT_MARGIN:F

.field private static final PANORAMASHOT_RECT_WIDTH:F

.field private static final PANORAMASHOT_ROOT_SHIFT:F

.field private static final PANORAMASHOT_TRI_HEIGHT_WIDTH:I

.field private static final PANORAMASHOT_TRI_POS_X:[I

.field private static final PANORAMASHOT_TRI_POS_Y:[I

.field private static final PANORAMASHOT_TRI_WIDTH:I

.field private static final PANORAMASHOT_TRI_WIDTH_HEIGHT:I

.field private static final PANORAMASHOT_XOFFSET:F = 234.0f

.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x190

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:I = 0x0

.field private static final SCREEN_RATIO:F

.field protected static SCREEN_WIDTH:I = 0x0

.field private static final STOP_BUTTON_ICON_POS_X:I

.field private static final STOP_BUTTON_ICON_POS_Y:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstPanoramaMenu"

.field private static final WARNING_ARROW_OFFSET:F

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static WARNING_DISTANCE_HORIZONTAL:I

.field private static WARNING_DISTANCE_VERTICAL:I

.field private static WARNING_LEVEL_HIGH:I

.field private static WARNING_LEVEL_LOW:I

.field private static WARNING_LEVEL_NONE:I

.field private static WARNING_LEVEL_STOP:I


# instance fields
.field private bDrawLivePreview:Z

.field private bSupportRotatePreviewRect:Z

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEnterOrientation:I

.field private mGTShow:Z

.field private mGuideText:Lcom/sec/android/glview/TwGLText;

.field private mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaWarning:Z

.field private mPostProgress:I

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mSideMenuHidden:Z

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreallocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mTri:[[Lcom/sec/android/glview/TwGLImage;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 68
    const v0, 0x7f0a0478

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    .line 69
    const v0, 0x7f0a047b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    .line 70
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    .line 75
    const v0, 0x7f0a0566

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    .line 76
    new-array v0, v6, [F

    const v1, 0x7f0a053b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x436a0000    # 234.0f

    add-float/2addr v1, v2

    aput v1, v0, v4

    const v1, 0x7f0a053c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x436a0000    # 234.0f

    add-float/2addr v1, v2

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 78
    new-array v0, v6, [F

    const v1, 0x7f0a053d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0a053e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0a0567

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0568

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0xea

    aput v1, v0, v5

    const v1, 0x7f0a0569

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const v1, 0x7f0a056a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0xea

    aput v1, v0, v7

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f0a056b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a056c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a056d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const v1, 0x7f0a056e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    .line 92
    const v0, 0x7f0a02c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    .line 93
    const v0, 0x7f0a056f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    .line 94
    const v0, 0x7f0a0570

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    .line 95
    const v0, 0x7f0a0574

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    .line 96
    const v0, 0x7f0a0575

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    .line 97
    const v0, 0x7f0a0576

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    .line 99
    const v0, 0x7f0a0577

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_WIDTH:F

    .line 100
    const v0, 0x7f0a0578

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_HEIGHT:F

    .line 101
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_X:F

    .line 102
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_Y:F

    .line 103
    const v0, 0x7f0b0066

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_SIZE:F

    .line 105
    const v0, 0x7f0a0571

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    .line 106
    const v0, 0x7f0a0572

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    .line 107
    const v0, 0x7f0b0067

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    .line 108
    const v0, 0x7f0a0573

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    .line 110
    const v0, 0x7f0a0579

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 111
    const v0, 0x7f0a057a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 112
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 113
    const v0, 0x7f0a057c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 114
    const v0, 0x7f0a057d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 115
    const v0, 0x7f0a057e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 116
    const v0, 0x7f0a02c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y_PADDING:F

    .line 117
    const v0, 0x7f0a02c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_DOWN_ARROW_MARGIN:F

    .line 118
    const v0, 0x7f0a02c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_UP_ARROW_MARGIN:F

    .line 119
    const v0, 0x7f0a057f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    .line 120
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y_PADDING:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 121
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 122
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 123
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 124
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 125
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_RATIO:F

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 126
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 127
    const v0, 0x7f0a0584

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    .line 128
    const v0, 0x7f0a0585

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 129
    const v0, 0x7f0a02c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    .line 132
    const v0, 0x7f0a0588

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 135
    const v0, 0x7f0a058d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    .line 136
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    .line 137
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    .line 138
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    .line 139
    const v0, 0x7f0a0591

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    .line 140
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    .line 141
    const v0, 0x7f0a058f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    .line 142
    const v0, 0x7f0a0590

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    .line 144
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    .line 145
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    .line 146
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    .line 148
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    .line 149
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    .line 150
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    .line 153
    const v0, 0x7f0a05a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 154
    const v0, 0x7f0a05a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    .line 164
    const v0, 0x7f0a0589

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    .line 165
    const v0, 0x7f0a058a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    .line 166
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    .line 168
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    .line 179
    sput v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 180
    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    .line 181
    sput v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    .line 182
    sput v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    .line 184
    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    .line 185
    const v0, 0x7f0b0038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    .line 200
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a000b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a001a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    .line 202
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    .line 203
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    const v1, 0x7f0a001e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_X:I

    .line 204
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_Y:I

    .line 206
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a023b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a0237

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_X:I

    .line 208
    const v0, 0x7f0a0236

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_Y:I

    .line 209
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_X:I

    const v1, 0x7f0a023a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_X:I

    .line 210
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_Y:I

    const v1, 0x7f0a0239

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 325
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 189
    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/sec/android/glview/TwGLImage;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 228
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 229
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 252
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setCaptureEnabled(Z)V

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 331
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 332
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 337
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0c0226

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 346
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 347
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 348
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 349
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 357
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 359
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x44340000    # 720.0f

    const/high16 v5, 0x43080000    # 136.0f

    const v6, 0x7f0201f8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 361
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x435c0000    # 220.0f

    const/high16 v5, 0x43020000    # 130.0f

    const v6, 0x7f0201f9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 365
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 369
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 373
    const v0, 0x7f0a05a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v8

    .line 375
    .local v8, "arrowOffsetPx":F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201f1

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ef

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201f0

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201f4

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ee

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201ed

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const v6, 0x7f0201f1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 396
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f0201f4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 404
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fe

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fb

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fc

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201fd

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 418
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    const v6, 0x7f0201f9

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 421
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 423
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 426
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    const v6, 0x7f0c0222

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 431
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02031f

    const v5, 0x7f020321

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 438
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020328

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 449
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 471
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->onOrientationChanged(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 481
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    const/4 v0, 0x4

    if-ge v9, v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 481
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 368
    .end local v8    # "arrowOffsetPx":F
    .end local v9    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 436
    .restart local v8    # "arrowOffsetPx":F
    :cond_1
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020030

    const v5, 0x7f020032

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_1

    .line 447
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02047b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_2

    .line 489
    .restart local v9    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 492
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->init()V

    .line 493
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 1723
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1724
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    const/high16 v2, 0x43fa0000    # 500.0f

    add-float/2addr v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v2, v2, v4

    const/high16 v3, 0x43700000    # 240.0f

    add-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v3, v3, v4

    const/high16 v4, 0x42480000    # 50.0f

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 514
    return-void
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 52
    .param p1, "detectedDirection"    # Z

    .prologue
    .line 1755
    monitor-enter p0

    :try_start_0
    const-string v6, "TwGLBurstPanoramaMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLivePreviewLayout: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " direction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v9, 0x1

    if-gt v6, v9, :cond_6

    if-nez p1, :cond_6

    .line 1759
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 1766
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1767
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-nez v6, :cond_2

    .line 1769
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1770
    .local v25, "groupX":F
    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1771
    .local v26, "groupY":F
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1772
    .local v24, "groupW":F
    sget v21, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1773
    .local v21, "groupH":F
    sget v41, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1774
    .local v41, "rectW":F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1797
    .local v40, "rectH":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v9, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1804
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1805
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1806
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1809
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 1810
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1776
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 1778
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1779
    .restart local v25    # "groupX":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float v26, v6, v9

    .line 1780
    .restart local v26    # "groupY":F
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1781
    .restart local v24    # "groupW":F
    sget v21, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1782
    .restart local v21    # "groupH":F
    sget v41, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1783
    .restart local v41    # "rectW":F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .restart local v40    # "rectH":F
    goto :goto_0

    .line 1785
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v9, 0x1

    if-eq v6, v9, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_5

    .line 1787
    :cond_4
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    .line 1788
    .restart local v25    # "groupX":F
    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1789
    .restart local v26    # "groupY":F
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1790
    .restart local v24    # "groupW":F
    sget v21, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1791
    .restart local v21    # "groupH":F
    sget v41, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1792
    .restart local v41    # "rectW":F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .restart local v40    # "rectH":F
    goto/16 :goto_0

    .line 1794
    .end local v21    # "groupH":F
    .end local v24    # "groupW":F
    .end local v25    # "groupX":F
    .end local v26    # "groupY":F
    .end local v40    # "rectH":F
    .end local v41    # "rectW":F
    :cond_5
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v9, "komlang : updateLivePreviewLayout: Invalid orientation"

    invoke-static {v6, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1755
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1813
    :cond_6
    if-eqz p1, :cond_1

    .line 1814
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 1815
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v6, :cond_8

    .line 1817
    :cond_7
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v9, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v6, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1820
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showStopButton()V

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->playPanoramaProcessingSound()V

    .line 1832
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v48, v6, v9

    .line 1833
    .local v48, "widthFocus":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v28, v6, v9

    .line 1835
    .local v28, "heightFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v36, v6, v9

    .line 1836
    .local v36, "oldLeftGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v38, v6, v9

    .line 1837
    .local v38, "oldTopGroup":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v35

    .line 1838
    .local v35, "oldLeft":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v37

    .line 1839
    .local v37, "oldTop":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v39

    .line 1840
    .local v39, "oldWidth":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v34

    .line 1841
    .local v34, "oldHeight":F
    const/16 v30, 0x1

    .line 1843
    .local v30, "landscape":Z
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v47, v6, v9

    .line 1844
    .local v47, "width":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float v27, v6, v9

    .line 1846
    .local v27, "height":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v51, v0

    monitor-enter v51
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1847
    :try_start_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v6, :pswitch_data_0

    .line 1927
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v18, v36, v6

    .line 1928
    .local v18, "fromXDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v20, v38, v6

    .line 1929
    .local v20, "fromYDeltaRect":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x0

    aget v6, v6, v9

    sub-float v6, v36, v6

    add-float v35, v35, v6

    .line 1930
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v6

    sub-float v17, v35, v6

    .line 1931
    .local v17, "fromXDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v6

    const/4 v9, 0x1

    aget v6, v6, v9

    sub-float v6, v38, v6

    add-float v37, v37, v6

    .line 1932
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v6

    sub-float v19, v37, v6

    .line 1933
    .local v19, "fromYDelta":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v6

    div-float v5, v39, v6

    .line 1934
    .local v5, "scaleX":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v6

    div-float v7, v34, v6

    .line 1936
    .local v7, "scaleY":F
    new-instance v29, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v29 .. v29}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1941
    .local v29, "interpol":Landroid/view/animation/Interpolator;
    if-eqz v30, :cond_9

    .line 1942
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1943
    .local v4, "animRect":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1944
    const-wide/16 v10, 0xb2

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1945
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1946
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1947
    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1972
    :goto_3
    new-instance v44, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1973
    .local v44, "ta":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1974
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1975
    const-wide/16 v10, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1976
    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1977
    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1979
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->resetClipRect()V

    .line 1980
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    .line 1984
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLBitmapTexture;->startAnimation()V

    .line 1985
    monitor-exit v51

    goto/16 :goto_1

    .end local v4    # "animRect":Landroid/view/animation/Animation;
    .end local v5    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v17    # "fromXDelta":F
    .end local v18    # "fromXDeltaRect":F
    .end local v19    # "fromYDelta":F
    .end local v20    # "fromYDeltaRect":F
    .end local v29    # "interpol":Landroid/view/animation/Interpolator;
    .end local v44    # "ta":Landroid/view/animation/Animation;
    :catchall_1
    move-exception v6

    monitor-exit v51
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1849
    :pswitch_1
    const/16 v22, 0x0

    .local v22, "groupLeft":F
    const/16 v23, 0x0

    .line 1850
    .local v23, "groupTop":F
    const/16 v49, 0x0

    .local v49, "x":F
    const/16 v50, 0x0

    .line 1851
    .local v50, "y":F
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    add-float v43, v6, v9

    .line 1852
    .local v43, "startOffsetPosition":F
    move/from16 v32, v43

    .line 1853
    .local v32, "leftFocus":F
    sget v22, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 1854
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float v23, v6, v9

    .line 1855
    move/from16 v49, v32

    .line 1856
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v50, v6, v9

    .line 1858
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v9, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1866
    add-float v6, v32, v48

    const/high16 v9, 0x41400000    # 12.0f

    sub-float v47, v6, v9

    .line 1867
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1872
    .end local v22    # "groupLeft":F
    .end local v23    # "groupTop":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v49    # "x":F
    .end local v50    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float/2addr v11, v12

    invoke-virtual {v6, v9, v10, v11}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v6

    neg-float v6, v6

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float v43, v6, v9

    .line 1878
    .restart local v43    # "startOffsetPosition":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    sub-float v31, v6, v47

    .line 1879
    .local v31, "left":F
    move/from16 v32, v43

    .line 1880
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, v31

    invoke-virtual {v6, v0, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v47

    invoke-virtual {v6, v0, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    move/from16 v0, v32

    invoke-virtual {v6, v0, v9}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1883
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v48, v6

    sub-float v6, v32, v6

    const/high16 v9, 0x41400000    # 12.0f

    sub-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v47, v6, v9

    .line 1884
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/high16 v9, 0x42200000    # 40.0f

    add-float v9, v9, v47

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1889
    .end local v31    # "left":F
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    :pswitch_3
    const/16 v30, 0x0

    .line 1890
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1894
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v6, v6, v27

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v45, v6, v9

    .line 1895
    .local v45, "top":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    neg-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sub-float v43, v6, v9

    .line 1896
    .restart local v43    # "startOffsetPosition":F
    move/from16 v46, v43

    .line 1897
    .local v46, "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1898
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 1899
    .restart local v32    # "leftFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1901
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    sub-float v6, v45, v6

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v6, v9

    const/high16 v9, 0x41b00000    # 22.0f

    sub-float v27, v6, v9

    .line 1902
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1907
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
    :pswitch_4
    const/16 v30, 0x0

    .line 1908
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1909
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v6, v9, v10, v11}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1913
    const/16 v45, 0x0

    .line 1914
    .restart local v45    # "top":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v10, 0x40000000    # 2.0f

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v10, v27, v10

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v9, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v9, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1916
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x41100000    # 9.0f

    div-float/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    add-float v28, v6, v9

    .line 1917
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float v43, v6, v9

    .line 1918
    .restart local v43    # "startOffsetPosition":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    sub-float v32, v6, v9

    .line 1919
    .restart local v32    # "leftFocus":F
    move/from16 v46, v43

    .line 1920
    .restart local v46    # "topFocus":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v32

    move/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1921
    add-float v6, v27, v28

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v28, v9

    sub-float v27, v6, v9

    .line 1922
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41900000    # 18.0f

    sub-float/2addr v9, v10

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1949
    .end local v32    # "leftFocus":F
    .end local v43    # "startOffsetPosition":F
    .end local v45    # "top":F
    .end local v46    # "topFocus":F
    .restart local v5    # "scaleX":F
    .restart local v7    # "scaleY":F
    .restart local v17    # "fromXDelta":F
    .restart local v18    # "fromXDeltaRect":F
    .restart local v19    # "fromYDelta":F
    .restart local v20    # "fromYDeltaRect":F
    .restart local v29    # "interpol":Landroid/view/animation/Interpolator;
    :cond_9
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    move v9, v5

    move v11, v7

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1950
    .local v8, "scaleRect":Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8, v6, v9, v10, v11}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1951
    const-wide/16 v10, 0xb2

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1952
    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1953
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1954
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1956
    new-instance v33, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v6, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1957
    .local v33, "moveRect":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v11

    float-to-int v11, v11

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1958
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1959
    const-wide/16 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1960
    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1961
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1963
    new-instance v42, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1964
    .local v42, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1965
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1966
    const-wide/16 v10, 0xb2

    move-object/from16 v0, v42

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1967
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1968
    move-object/from16 v4, v42

    .restart local v4    # "animRect":Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1847
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 620
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 625
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 629
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 636
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 638
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_4

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 641
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_5

    .line 644
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 645
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 647
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 649
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 652
    :cond_6
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 653
    return-void
.end method

.method public clearGLView()V
    .locals 3

    .prologue
    .line 597
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_a

    .line 598
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    .line 600
    .local v1, "rootView":Lcom/sec/android/glview/TwGLViewGroup;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 604
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 605
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 606
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 607
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 609
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_a

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 611
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 609
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    .end local v0    # "i":I
    .end local v1    # "rootView":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_a
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 616
    return-void
.end method

.method public clearPanoramaRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1727
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1729
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 1732
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 1733
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1736
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1737
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1738
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 1740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1741
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1742
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1740
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1747
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1748
    return-void
.end method

.method public getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .param p1, "speed"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 555
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 556
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 558
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 584
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 585
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 586
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 587
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 588
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 592
    :cond_0
    return-object v1

    .line 561
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 562
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 567
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 568
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 573
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v2, -0x40800000    # -1.0f

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 574
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 579
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 580
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getEnterOrientation()I
    .locals 1

    .prologue
    .line 2363
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    return v0
.end method

.method public getPreviewThumbnailSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2003
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 2004
    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewThumbnailSize : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 2023
    :pswitch_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 2024
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 2028
    :goto_0
    return-void

    .line 2011
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 2012
    .local v0, "Ratio":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 2013
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 2018
    .end local v0    # "Ratio":F
    :pswitch_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 2019
    .restart local v0    # "Ratio":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 2020
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 2008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 808
    return-void
.end method

.method public hideGuideText()V
    .locals 2

    .prologue
    .line 538
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public hideLivePreview()V
    .locals 2

    .prologue
    .line 906
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 907
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 909
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method public hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 723
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 724
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_1
    return-void
.end method

.method public hideStopButton()V
    .locals 2

    .prologue
    .line 793
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 803
    return-void
.end method

.method public hideWarningArrow(Z)V
    .locals 3
    .param p1, "all"    # Z

    .prologue
    const/4 v2, 0x4

    .line 1706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1707
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    .line 1708
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1711
    :cond_0
    if-eqz p1, :cond_1

    .line 1712
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1714
    :cond_1
    return-void
.end method

.method public hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1719
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStopped()V

    .line 659
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 668
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 662
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetPanoramaCapturing()V

    .line 663
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    goto :goto_0

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 881
    const/4 v0, 0x1

    .line 884
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 736
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 737
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 740
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 741
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 742
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    .line 743
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    .line 744
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 922
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 923
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_1

    .line 924
    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_0
    return v0

    .line 929
    :cond_1
    if-ne p1, v2, :cond_2

    .line 930
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_2

    .line 931
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 946
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_3

    .line 952
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_1

    .line 968
    :goto_0
    return v0

    .line 955
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 956
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 961
    :cond_3
    if-ne p1, v2, :cond_4

    .line 962
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_4

    .line 963
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 27
    .param p1, "data"    # [B

    .prologue
    .line 2037
    monitor-enter p0

    :try_start_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lmj onLivePreviewData , mCapturecount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v9, 0x0

    .line 2040
    .local v9, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_4

    .line 2041
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    .line 2042
    .local v21, "rotation":[Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2043
    if-nez v9, :cond_2

    .line 2044
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to decode RGBA data for live preview. Data: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2360
    .end local v21    # "rotation":[Ljava/lang/Integer;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2048
    .restart local v21    # "rotation":[Ljava/lang/Integer;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    .line 2055
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    .line 2056
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .line 2058
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 2219
    .end local v21    # "rotation":[Ljava/lang/Integer;
    :cond_3
    :goto_1
    if-nez v9, :cond_12

    .line 2220
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, " data:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2037
    .end local v9    # "bmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2061
    .restart local v9    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-eq v3, v4, :cond_1

    .line 2070
    const/4 v14, 0x1

    .line 2072
    .local v14, "bCheckPassed":Z
    const v7, 0x1869f

    .line 2073
    .local v7, "width":I
    const v8, 0x1869f

    .line 2074
    .local v8, "height":I
    const/4 v15, 0x0

    .line 2075
    .local v15, "datarotation":I
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_7

    .line 2076
    :cond_5
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Received null or invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v14, 0x0

    .line 2100
    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-ne v14, v3, :cond_3

    .line 2102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v3, :cond_a

    .line 2103
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_0

    .line 2119
    :pswitch_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2080
    :cond_7
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_8

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_8

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_9

    .line 2081
    :cond_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Data is invalid (RGBA tag not found)"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2082
    const/4 v14, 0x0

    .line 2086
    :cond_9
    const/4 v3, 0x4

    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v7

    .line 2087
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v8

    .line 2088
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    .line 2094
    :goto_3
    :try_start_4
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v7, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_6

    .line 2095
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onLivePreviewData: The buffer is too small to contain a image of "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "x"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2089
    :catch_0
    move-exception v16

    .line 2090
    .local v16, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Could not parse panorama bitmap header"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v14, 0x0

    goto :goto_3

    .line 2106
    .end local v16    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 2107
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 2108
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 2109
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2129
    :cond_a
    :goto_4
    :try_start_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 2130
    .local v18, "intData":[I
    const/16 v10, 0xff

    .line 2131
    .local v10, "MASK":I
    const/16 v20, 0x0

    .line 2132
    .local v20, "result":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_b

    .line 2134
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v20, v3, 0x10

    .line 2135
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x8

    add-int v20, v20, v3

    .line 2136
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    add-int v20, v20, v3

    .line 2137
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x18

    add-int v20, v20, v3

    .line 2138
    aput v20, v18, v17
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2132
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 2113
    .end local v10    # "MASK":I
    .end local v17    # "i":I
    .end local v18    # "intData":[I
    .end local v20    # "result":I
    :pswitch_2
    :try_start_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 2114
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 2115
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 2116
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 2141
    .restart local v10    # "MASK":I
    .restart local v17    # "i":I
    .restart local v18    # "intData":[I
    .restart local v20    # "result":I
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_1

    .line 2207
    :pswitch_3
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 2211
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v10    # "MASK":I
    .end local v17    # "i":I
    .end local v18    # "intData":[I
    .end local v20    # "result":I
    :catch_1
    move-exception v16

    .line 2212
    .restart local v16    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Index Control Failed!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2143
    .end local v16    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    .restart local v10    # "MASK":I
    .restart local v17    # "i":I
    .restart local v18    # "intData":[I
    .restart local v20    # "result":I
    :pswitch_4
    :try_start_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_c

    .line 2144
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2146
    :cond_c
    const/16 v23, 0x0

    .local v23, "y":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_d

    .line 2147
    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v24, v24, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2146
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 2149
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2151
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 2152
    :catch_2
    move-exception v19

    .line 2153
    .local v19, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2159
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v23    # "y":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_e

    .line 2160
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2162
    :cond_e
    const/16 v23, 0x0

    .restart local v23    # "y":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_f

    .line 2163
    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v25, v0

    mul-int v25, v25, v23

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2162
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 2166
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2168
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 2170
    :catch_3
    move-exception v19

    .line 2171
    .restart local v19    # "oom":Ljava/lang/OutOfMemoryError;
    :try_start_d
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2177
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v23    # "y":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_10

    .line 2178
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2180
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v8

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2182
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2184
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 2186
    :catch_4
    move-exception v19

    .line 2187
    .restart local v19    # "oom":Ljava/lang/OutOfMemoryError;
    :try_start_f
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2193
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_11

    .line 2194
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2196
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2197
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2199
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7    # "width":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8    # "height":I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v9

    goto/16 :goto_1

    .line 2200
    :catch_5
    move-exception v19

    .line 2201
    .restart local v19    # "oom":Ljava/lang/OutOfMemoryError;
    :try_start_11
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 2223
    .end local v10    # "MASK":I
    .end local v14    # "bCheckPassed":Z
    .end local v15    # "datarotation":I
    .end local v17    # "i":I
    .end local v18    # "intData":[I
    .end local v19    # "oom":Ljava/lang/OutOfMemoryError;
    .end local v20    # "result":I
    :cond_12
    :try_start_12
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    .line 2225
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    .line 2227
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_14

    .line 2228
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2232
    :cond_14
    const/4 v12, 0x0

    .line 2233
    .local v12, "arrowleft":F
    const/4 v13, 0x0

    .line 2234
    .local v13, "arrowtop":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 2235
    .local v5, "left":F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 2236
    .local v6, "top":F
    const/16 v22, 0x0

    .line 2238
    .local v22, "stopPanorama":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1e

    .line 2239
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 2240
    :cond_15
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 2241
    .local v7, "width":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2308
    .local v8, "height":F
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_17

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2310
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v3, :cond_16

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 2315
    :cond_16
    new-instance v3, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 2316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 2317
    monitor-exit v24
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2320
    :cond_17
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ge v3, v4, :cond_26

    .line 2321
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 2323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v4, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 2328
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 2329
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v11, v3, v4

    .line 2334
    .local v11, "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    :goto_9
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 2335
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2336
    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2338
    if-eqz v22, :cond_19

    .line 2339
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 2340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    .line 2355
    .end local v11    # "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 2356
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 2242
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 2243
    :cond_1c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2244
    .restart local v8    # "height":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .restart local v7    # "width":F
    goto/16 :goto_8

    .line 2246
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_1d
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "komlang : onLivePreviewData : invalid orientation "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2250
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1f

    .line 2251
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 2252
    .restart local v7    # "width":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2253
    .restart local v8    # "height":F
    const/16 v22, 0x1

    .line 2268
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_2

    .line 2303
    :pswitch_8
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2254
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 2255
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 2256
    .restart local v7    # "width":F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2257
    .restart local v8    # "height":F
    const/16 v22, 0x1

    goto :goto_b

    .line 2259
    .end local v7    # "width":F
    .end local v8    # "height":F
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v7, v3, v4

    .line 2261
    .restart local v7    # "width":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    .line 2262
    :cond_21
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v7, v3

    .line 2265
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .restart local v8    # "height":F
    goto :goto_b

    .line 2270
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x40000000    # 2.0f

    div-float v4, v4, v24

    add-float/2addr v3, v4

    const v4, 0x7f0a05a4

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    add-float v12, v3, v4

    .line 2271
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v3, v4

    .line 2272
    goto/16 :goto_8

    .line 2275
    :pswitch_a
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v5, v3, v7

    .line 2276
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x40000000    # 2.0f

    div-float v4, v4, v24

    sub-float/2addr v3, v4

    const v4, 0x7f0a05a4

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float v12, v3, v4

    .line 2278
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v3, v4

    .line 2279
    goto/16 :goto_8

    .line 2282
    :pswitch_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_23

    .line 2283
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f800000    # 1.0f

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c80000    # 400.0f

    div-float v8, v3, v4

    .line 2284
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    .line 2286
    :cond_23
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v3, v8

    const v4, 0x7f0a05a4

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    const/high16 v24, 0x40000000    # 2.0f

    div-float v4, v4, v24

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_DOWN_ARROW_MARGIN:F

    sub-float v13, v3, v4

    .line 2287
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v12, v3, v4

    .line 2288
    goto/16 :goto_8

    .line 2291
    :pswitch_c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v6, v3, v8

    .line 2293
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_24

    .line 2294
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x40000000    # 2.0f

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f800000    # 1.0f

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c80000    # 400.0f

    div-float v8, v3, v4

    .line 2295
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    .line 2297
    :cond_24
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v4

    const v4, 0x7f0a05a4

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_UP_ARROW_MARGIN:F

    sub-float v13, v3, v4

    .line 2299
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    add-float v12, v3, v4

    .line 2300
    goto/16 :goto_8

    .line 2317
    :catchall_1
    move-exception v3

    :try_start_15
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v3

    .line 2331
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v11, v3, v4

    .restart local v11    # "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    goto/16 :goto_9

    .line 2344
    .end local v11    # "activeGroup":Lcom/sec/android/glview/TwGLViewGroup;
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 2345
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2349
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ne v3, v4, :cond_19

    .line 2350
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 2351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_a

    .line 2347
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_c

    .line 2358
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 2103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2141
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 2268
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 13
    .param p1, "orientation"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 2372
    const-string v6, "TwGLBurstPanoramaMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-nez v6, :cond_0

    .line 2375
    const/4 p1, 0x0

    .line 2383
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v6, :cond_2

    .line 2384
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged - Already mActivityContext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_1
    :goto_0
    return-void

    .line 2389
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isPanoramaCapturing()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v6, :cond_4

    .line 2390
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eq v6, p1, :cond_4

    .line 2391
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 2412
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 2413
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 2416
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 2422
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v6, :cond_3

    .line 2423
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2424
    :cond_3
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 2425
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/Camera;->showPanoramaToastPopup(I)V

    .line 2430
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 2432
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    if-eq v6, p1, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lt v6, v11, :cond_6

    .line 2433
    const/4 v0, 0x0

    .line 2434
    .local v0, "bStop":Z
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 2452
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 2453
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 2455
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 2456
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 2458
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 2460
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    .line 2464
    .end local v0    # "bStop":Z
    :cond_6
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 2465
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    .line 2470
    :cond_7
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 2474
    :pswitch_0
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    .line 2475
    .local v4, "rectX":F
    const/4 v5, 0x0

    .line 2476
    .local v5, "rectY":F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    .line 2477
    .local v1, "groupX":F
    if-nez p1, :cond_9

    .line 2478
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    .line 2482
    .local v2, "groupY":F
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 2485
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 2486
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2488
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2490
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2491
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 2494
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v10, :cond_1

    .line 2495
    if-ge v3, v12, :cond_a

    .line 2496
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 2497
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2494
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2436
    .end local v1    # "groupX":F
    .end local v2    # "groupY":F
    .end local v3    # "i":I
    .end local v4    # "rectX":F
    .end local v5    # "rectY":F
    .restart local v0    # "bStop":Z
    :pswitch_1
    if-eq p1, v12, :cond_5

    .line 2437
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2440
    :pswitch_2
    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    .line 2441
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2444
    :pswitch_3
    if-eqz p1, :cond_5

    .line 2445
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2448
    :pswitch_4
    if-eq p1, v11, :cond_5

    .line 2449
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2480
    .end local v0    # "bStop":Z
    .restart local v1    # "groupX":F
    .restart local v4    # "rectX":F
    .restart local v5    # "rectY":F
    :cond_9
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float v2, v6, v7

    .restart local v2    # "groupY":F
    goto :goto_2

    .line 2500
    .restart local v3    # "i":I
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 2507
    .end local v1    # "groupX":F
    .end local v2    # "groupY":F
    .end local v3    # "i":I
    .end local v4    # "rectX":F
    .end local v5    # "rectY":F
    :pswitch_5
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    .line 2508
    .restart local v4    # "rectX":F
    const/4 v5, 0x0

    .line 2509
    .restart local v5    # "rectY":F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    .line 2510
    .restart local v1    # "groupX":F
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    .line 2512
    .restart local v2    # "groupY":F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 2515
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 2516
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2518
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2520
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2521
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 2524
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v10, :cond_1

    .line 2525
    if-ge v3, v12, :cond_c

    .line 2526
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2524
    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2528
    :cond_c
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    .line 2529
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 2434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 972
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 975
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 978
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 731
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 981
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 988
    :cond_0
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1004
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_3

    .line 1005
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 1028
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 1048
    :goto_1
    :pswitch_0
    if-eqz p1, :cond_2

    .line 1049
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_2

    .line 1050
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1051
    .local v0, "height":F
    if-eq p1, v4, :cond_0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_4

    .line 1052
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1053
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1054
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1060
    :cond_1
    :goto_2
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 1061
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1062
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 1065
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_2
    return-void

    .line 1008
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1009
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1010
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1011
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1015
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1016
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1017
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1018
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1022
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1023
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1024
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1025
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1030
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f0201f3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 1031
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f0201f4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1034
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f0201ee

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 1035
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f0201ed

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1038
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f0201ef

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 1039
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f0201f0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1042
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f0201f2

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 1043
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f0201f1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 1055
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_1

    .line 1056
    :cond_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1057
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1058
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    goto/16 :goto_2

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1028
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public panoramaMoveSlowly()V
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showGuideText()V

    .line 552
    :cond_0
    return-void
.end method

.method public panoramaRectChanged(II)V
    .locals 28
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1133
    const/4 v13, 0x0

    .line 1134
    .local v13, "rect_x":F
    const/4 v14, 0x0

    .line 1135
    .local v14, "rect_y":F
    const/4 v15, 0x0

    .line 1137
    .local v15, "startOffsetPosition":F
    const/16 v16, 0x0

    .line 1138
    .local v16, "text_x":F
    const/16 v17, 0x0

    .line 1139
    .local v17, "text_y":F
    const/4 v5, 0x0

    .line 1140
    .local v5, "arrow_x":F
    const/4 v6, 0x0

    .line 1141
    .local v6, "arrow_y":F
    const/4 v11, 0x0

    .line 1142
    .local v11, "box_x":F
    const/4 v12, 0x0

    .line 1143
    .local v12, "box_y":F
    const/4 v10, 0x0

    .line 1144
    .local v10, "box_w":F
    const/4 v9, 0x0

    .line 1145
    .local v9, "box_h":F
    const/4 v7, 0x0

    .line 1146
    .local v7, "box_absx":F
    const/4 v8, 0x0

    .line 1150
    .local v8, "box_absy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 1703
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1152
    :pswitch_1
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v15, v24, v25

    .line 1153
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v26, v26, v27

    div-float v25, v25, v26

    add-float v13, v24, v25

    .line 1154
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42700000    # 60.0f

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v14, v15, v24

    .line 1175
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 1181
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1183
    .local v4, "WarningLevel":I
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 1184
    .local v20, "xDistance":D
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 1185
    .local v22, "yDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    if-gez p2, :cond_4

    .line 1186
    :cond_2
    const-wide/16 v22, 0x0

    .line 1190
    :cond_3
    :goto_2
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    .line 1192
    .local v18, "totalDistance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_1

    .line 1694
    :goto_3
    :pswitch_2
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    move/from16 v0, v24

    if-ne v4, v0, :cond_0

    .line 1695
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Stop case - totalDistance:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1697
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1698
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 1699
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 1700
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    .line 1157
    .end local v4    # "WarningLevel":I
    .end local v18    # "totalDistance":D
    .end local v20    # "xDistance":D
    .end local v22    # "yDistance":D
    :pswitch_3
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v25

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v15, v24, v25

    .line 1158
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v26, v26, v27

    div-float v25, v25, v26

    add-float v13, v24, v25

    .line 1159
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42700000    # 60.0f

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v14, v15, v24

    .line 1160
    goto/16 :goto_1

    .line 1162
    :pswitch_4
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v25, v0

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v15, v24, v25

    .line 1163
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v15, v24

    .line 1164
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float v24, v24, v25

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v26, v26, v27

    div-float v25, v25, v26

    add-float v14, v24, v25

    .line 1165
    goto/16 :goto_1

    .line 1167
    :pswitch_5
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    sub-float v15, v24, v25

    .line 1168
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v15, v24

    .line 1169
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float v24, v24, v25

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v26, v26, v27

    div-float v25, v25, v26

    add-float v14, v24, v25

    .line 1170
    goto/16 :goto_1

    .line 1187
    .restart local v4    # "WarningLevel":I
    .restart local v20    # "xDistance":D
    .restart local v22    # "yDistance":D
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    if-gtz p1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 1188
    :cond_6
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 1195
    .restart local v18    # "totalDistance":D
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v11

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v12

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v10

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v9

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v7

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v8

    .line 1201
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", abs xy = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fd3333333333333L    # 0.3

    mul-double v24, v24, v26

    cmpg-double v24, v18, v24

    if-gez v24, :cond_b

    .line 1204
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1212
    :goto_4
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v24

    if-ne v4, v0, :cond_d

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1215
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1218
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1228
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1258
    :cond_8
    :goto_5
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v24

    if-lt v4, v0, :cond_14

    .line 1259
    cmpl-double v24, v22, v20

    if-lez v24, :cond_12

    .line 1260
    if-lez p2, :cond_11

    .line 1261
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v5, v13, v24

    .line 1264
    const/high16 v24, 0x40000000    # 2.0f

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v24, v24, v25

    add-float v6, v14, v24

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_2

    .line 1294
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1417
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v24

    if-nez v24, :cond_a

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v24

    if-nez v24, :cond_a

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1429
    :cond_a
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " XY = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1205
    :cond_b
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    cmpg-double v24, v18, v24

    if-gez v24, :cond_c

    .line 1206
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_4

    .line 1208
    :cond_c
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_4

    .line 1230
    :cond_d
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v24

    if-ne v4, v0, :cond_f

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1236
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1246
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_5

    .line 1249
    :cond_f
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1250
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->isPanoramaCapturing()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->playPanoramaProcessingSound()V

    .line 1255
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 1253
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    goto :goto_8

    .line 1269
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1270
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v13, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v24, v25

    .line 1271
    const/high16 v24, 0x40800000    # 4.0f

    div-float v24, v9, v24

    add-float v17, v14, v24

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1275
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1276
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v24

    .line 1277
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v9

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v14, v24

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1281
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1282
    add-float v24, v13, v10

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v24, v25

    .line 1283
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v9, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v14, v24

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1287
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1288
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v13, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v16, v24, v25

    .line 1289
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v9

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v14, v24

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1300
    :cond_11
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v5, v13, v24

    .line 1303
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v6, v14, v24

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_3

    .line 1333
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1308
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1309
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v13, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v24, v25

    .line 1310
    const/high16 v24, 0x40800000    # 4.0f

    div-float v24, v9, v24

    add-float v17, v14, v24

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_9

    .line 1314
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1315
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v24

    .line 1316
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v9

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v14, v24

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1320
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1321
    add-float v24, v13, v10

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v24, v25

    .line 1322
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v9, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v14, v24

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1326
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1327
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v13, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v16, v24, v25

    .line 1328
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v9

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v14, v24

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1340
    :cond_12
    if-lez p1, :cond_13

    .line 1341
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v24

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v6, v14, v24

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_4

    .line 1374
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1349
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1350
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v5, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v24, v25

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1355
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1356
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v24

    .line 1357
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1361
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1362
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v5

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v16, v24, v25

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1367
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1368
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v5, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v16, v24, v25

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x3

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1378
    :cond_13
    if-gez p1, :cond_9

    .line 1379
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    add-float v24, v24, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v25

    sub-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v5, v24, v25

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v6, v14, v24

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_5

    .line 1412
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1387
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    add-float v24, v24, v5

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v16, v24, v25

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1393
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    add-float v24, v24, v5

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v16, v24, v25

    .line 1395
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1399
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    add-float v24, v24, v5

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v24, v25

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1405
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v24, v24, v5

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v16, v24, v25

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v17, v6, v24

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1432
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1435
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1437
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    .line 1443
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v11

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v12

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v10

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v9

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v7

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v8

    .line 1449
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", abs xy = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fd3333333333333L    # 0.3

    mul-double v24, v24, v26

    cmpg-double v24, v18, v24

    if-gez v24, :cond_19

    .line 1452
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1460
    :goto_c
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v24

    if-ne v4, v0, :cond_1b

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1463
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1466
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v24, v0

    if-nez v24, :cond_16

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x12c

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1476
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1506
    :cond_16
    :goto_d
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v24

    if-lt v4, v0, :cond_22

    .line 1508
    cmpl-double v24, v20, v22

    if-lez v24, :cond_20

    .line 1509
    if-lez p1, :cond_1f

    .line 1510
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v24

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v6, v14, v24

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_6

    .line 1543
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1666
    :cond_17
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v24

    if-nez v24, :cond_18

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v24

    if-nez v24, :cond_18

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 1679
    :cond_18
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " XY = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1453
    :cond_19
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    cmpg-double v24, v18, v24

    if-gez v24, :cond_1a

    .line 1454
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_c

    .line 1456
    :cond_1a
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_c

    .line 1478
    :cond_1b
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v24

    if-ne v4, v0, :cond_1d

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 1481
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1484
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v24, v0

    if-nez v24, :cond_16

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x96

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1494
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_d

    .line 1497
    :cond_1d
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->isPanoramaCapturing()Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->playPanoramaProcessingSound()V

    .line 1503
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_d

    .line 1501
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    goto :goto_10

    .line 1518
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1519
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v10, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1520
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v14, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v24, v25

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1524
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1525
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1526
    add-float v24, v14, v9

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v17, v24, v25

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1530
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1531
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1532
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v14, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v17, v24, v25

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1536
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1537
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v10, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1538
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v14, v24

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1549
    :cond_1f
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    add-float v24, v24, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v25

    sub-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v5, v24, v25

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v6, v14, v24

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1555
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_7

    .line 1582
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_f

    .line 1557
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1558
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v10, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1559
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v14, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v24, v25

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_11

    .line 1563
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1564
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1565
    add-float v24, v14, v9

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v17, v24, v25

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1569
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1570
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1571
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v14, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v17, v24, v25

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1575
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1576
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v10, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1577
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v14, v24

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1587
    :cond_20
    if-gez p2, :cond_21

    .line 1588
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v5, v13, v24

    .line 1591
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v6, v14, v24

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_8

    .line 1621
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_f

    .line 1596
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v5, v24

    .line 1598
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v6, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v24, v25

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1602
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v5, v24

    .line 1604
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v6, v24

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1608
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v5, v24

    .line 1610
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v6, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v17, v24, v25

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1614
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v5, v24

    .line 1616
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v6, v24

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1627
    :cond_21
    if-lez p2, :cond_17

    .line 1628
    const-string v24, "TwGLBurstPanoramaMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v5, v13, v24

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v24, v24, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v25

    sub-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v6, v24, v25

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_9

    .line 1661
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_f

    .line 1636
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0223

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1637
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v24, v10, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v24, v24, v14

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v17, v24, v25

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1642
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0222

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v5, v24

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v24, v24, v6

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v25

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v17, v24, v25

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1648
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0225

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1649
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v24, v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1650
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v24, v14, v24

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v17, v24, v25

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1654
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v25, v0

    const v26, 0x7f0c0224

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1655
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v24, v10, v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    add-float v16, v13, v24

    .line 1656
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v17, v14, v24

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x2

    invoke-virtual/range {v24 .. v26}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1682
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1685
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1687
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1192
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1267
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 1306
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 1347
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 1385
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 1516
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    .line 1555
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    .line 1594
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1634
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public playPanoramaProcessingSound()V
    .locals 4

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1120
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .param p1, "removeLivePreview"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 748
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "komlang : called reset!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->resetAcquisitionProgress()V

    .line 751
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 752
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 753
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    .line 754
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 755
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 756
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    .line 757
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 758
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 759
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 761
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 762
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 763
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 772
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 780
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 782
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    .line 783
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideCaptureTri()V

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 785
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 676
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 678
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 818
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->startCancelTimer()V

    .line 821
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1, "nProgress"    # I

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuItems()V

    .line 689
    :cond_0
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1096
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1102
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1103
    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panoramaRectChanged mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 834
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 835
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    monitor-exit p0

    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnterOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 2367
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    .line 2368
    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1994
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    .line 913
    return-void
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 855
    :cond_0
    if-nez p1, :cond_1

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    :cond_1
    monitor-exit p0

    return-void

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 1998
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1999
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 2000
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 901
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 902
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 903
    return-void
.end method

.method public showGuideText()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 517
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 519
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 535
    :cond_1
    return-void

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method

.method public showPostCaptureLayout()V
    .locals 0

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 869
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 870
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 873
    return-void
.end method

.method public showPreviewGroup()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    .line 700
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 714
    :cond_1
    return-void

    .line 703
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showStopButton()V
    .locals 2

    .prologue
    .line 788
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 790
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 815
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 824
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    :cond_0
    return-void
.end method

.method public stopPanoramaProcessingSound()V
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_PROCESSING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 1130
    :cond_1
    return-void
.end method

.method public stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 1114
    :cond_2
    return-void
.end method

.method public updateArrow()V
    .locals 9

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 1068
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1092
    :goto_0
    return-void

    .line 1070
    :pswitch_0
    const v1, 0x7f0a05a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    .line 1072
    .local v0, "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 1077
    .end local v0    # "triOffset":F
    :pswitch_1
    const v1, 0x7f0a05a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    .line 1079
    .restart local v0    # "triOffset":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1080
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_TOP_PADDING:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1084
    .end local v0    # "triOffset":F
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1085
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v6

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1088
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1089
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
