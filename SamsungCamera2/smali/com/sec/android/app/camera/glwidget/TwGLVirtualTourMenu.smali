.class public Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLVirtualTourMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler$VirtualTourModelerEventListener;


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

.field private static final BUTTON_TEXT_FONT_SIZE:I

.field private static final CALIBRATION_DURATION:I = 0x3

.field private static final CALIBRATION_NOTIFICATION_PER_SECOND:I = 0xe

.field private static final CALIBRATION_UPDATE_DEGREE:I = 0xc

.field private static final CALIBRATION_UPDATE_THRESHOLD_PER_SECOND:I = 0xa

.field private static final COUNTER_DISPLAY_THRESHOLD:I = 0x14

.field private static final COUNTER_INDICATOR_HEIGHT:I

.field private static final COUNTER_INDICATOR_POS_X:I

.field private static final COUNTER_INDICATOR_POS_Y:I

.field private static final COUNTER_INDICATOR_WIDTH:I

.field private static final COUNTER_TEXT_STROKE_WIDTH:I

.field private static final DONE_BUTTON_POS_X:I

.field private static final DONE_BUTTON_POS_Y:I

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_VERITCAL:F

.field private static final HELP_TEXT_POS_X:F

.field private static final HELP_TEXT_POS_Y:F

.field private static final HELP_TEXT_SET_SHADOW:Z

.field private static final HELP_TEXT_SIDE_MARGIN:F

.field private static final HELP_TEXT_SIZE:F

.field private static final HELP_TEXT_STROKE_WIDTH:I

.field private static final HELP_TEXT_WIDTH:F

.field private static final HELP_TEXT_WIDTH_VERITCAL:F

.field private static final INDICATOR_TEXT_STROKE_COLOR:I

.field private static final LEFT_INDICATOR_POS_X:[I

.field private static final LEFT_INDICATOR_POS_Y:[I

.field private static final MAX_SWEEP_COUNT:I = 0x1e

.field private static final MSG_DONE_WITHOUT_SAVING:I = 0xc9

.field private static final MSG_DONE_WITH_SAVING:I = 0xc8

.field private static final MSG_DONE_WITH_SAVING_ON_ORIENTATION_CHANGED:I = 0xca

.field private static final MSG_GUIDE_ROTATE_DEVICE_ANTICLOCKWISE:I = 0x66

.field private static final MSG_GUIDE_ROTATE_DEVICE_CLOCKWISE:I = 0x65

.field private static final MSG_SAVING_DONE:I = 0x3e8

.field private static final MSG_WARNING_APPROACHING_WALK_MAX_BOUNDARY:I = 0xcb

.field private static final MSG_WARNING_ARROW_SOUND:I = 0xcc

.field private static final PROGRESSWHEEL_CALIBRATION_HEIGHT:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_X:I

.field private static final PROGRESSWHEEL_CALIBRATION_POS_Y:I

.field private static final PROGRESSWHEEL_CALIBRATION_WIDTH:I

.field private static final PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_X:I

.field private static final PROGRESSWHEEL_CAPTURABLE_POS_Y:I

.field private static final PROGRESSWHEEL_CAPTURABLE_WIDTH:I

.field private static final REMAIN_STEP_THRESHOLD:I = 0x6

.field private static final REQUIRED_STORAGE_SIZE:J = 0x1400000L

.field private static final RIGHT_INDICATOR_POS_X:[I

.field private static final RIGHT_INDICATOR_POS_Y:[I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

.field private static final SIDE_MENU_WIDTH:I

.field private static final STABILIZER_STATE_CALIBRATION:I = 0x1

.field private static final STABILIZER_STATE_CAPTURABLE:I = 0x2

.field private static final STABILIZER_STATE_INVISIBLE:I = 0x0

.field private static final STRAIGHT_INDICATOR_POS_X:[I

.field private static final STRAIGHT_INDICATOR_POS_Y:[I

.field private static final TAG:Ljava/lang/String; = "TwGLVirtualTourMenu"

.field private static final THUMBNAIL_LIST_HEIGHT:I

.field private static final THUMBNAIL_LIST_POS_X:I

.field private static final THUMBNAIL_LIST_POS_Y:I

.field private static final THUMBNAIL_LIST_WIDTH:I

.field private static final UNDO_BUTTON_HEIGHT:I

.field private static final UNDO_BUTTON_TEXT_PADDING:I

.field private static final UNDO_THRESHOLD:I = 0x2

.field private static final WARNING_ARROW_HEIGHT:I

.field private static final WARNING_ARROW_SHUTTER_POS_X:I

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static final WARNING_ARROW_WIDTH:I

.field private static final WARNING_TEXT_HEIGHT:F

.field private static final WARNING_TEXT_MARGIN:F

.field private static final WARNING_TEXT_WIDTH:F

.field private static mActivityContext:Lcom/sec/android/app/camera/Camera;

.field static mPs32Direction:[I


# instance fields
.field private mBlinkingAnimation:Landroid/view/animation/Animation;

.field private mCalibrationInProgressCount:I

.field private mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

.field private mCapturing:Z

.field private mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCounterText:Lcom/sec/android/glview/TwGLText;

.field private volatile mCurrentPhotoCount:I

.field private mDoneButton:Lcom/sec/android/glview/TwGLButton;

.field private mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerActiveFlag:Z

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOrientation:I

.field private mOrientationForPicture:I

.field private mPlayWarningArrowSound:Z

.field private mProgressDegree:I

.field private mRemainingStepCount:I

.field private mRightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mRunning:Z

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

.field private mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

.field private mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButton:Lcom/sec/android/glview/TwGLButton;

.field private mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    const/high16 v0, 0x7f0a0000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    .line 53
    const v0, 0x7f0a0001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    .line 54
    const v0, 0x7f0a0441

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    .line 55
    const v0, 0x7f0a0442

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    .line 57
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    .line 58
    const v0, 0x7f0a0443

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    .line 59
    const v0, 0x7f0a0444

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    .line 60
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    .line 61
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    .line 62
    const v0, 0x7f0a000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SIDE_MENU_WIDTH:I

    .line 63
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_X:I

    .line 64
    const v0, 0x7f0a001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_Y:I

    .line 65
    const v0, 0x7f0a0445

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    .line 66
    const v0, 0x7f0a0446

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    .line 67
    const v0, 0x7f0b0041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    .line 68
    new-array v0, v6, [I

    const v3, 0x7f0a0447

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0448

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0449

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a044a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    .line 70
    new-array v0, v6, [I

    const v3, 0x7f0a044b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a044c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a044d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a044e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    .line 72
    new-array v0, v6, [I

    const v3, 0x7f0a044f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0450

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0451

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0452

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    .line 75
    new-array v0, v6, [I

    const v3, 0x7f0a0453

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0454

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0455

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a0456

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    .line 78
    new-array v0, v6, [I

    const v3, 0x7f0a0457

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a0458

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a0459

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a045a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    .line 80
    new-array v0, v6, [I

    const v3, 0x7f0a045b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    const v3, 0x7f0a045c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    const v3, 0x7f0a045d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v4

    const v3, 0x7f0a045e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    .line 82
    const v0, 0x7f0a045f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_X:I

    .line 83
    const v0, 0x7f0a0460

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_Y:I

    .line 84
    const v0, 0x7f0a0461

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_WIDTH:I

    .line 85
    const v0, 0x7f0a0462

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    .line 87
    const v0, 0x7f0a0467

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    .line 88
    const v0, 0x7f0a0468

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    .line 89
    const v0, 0x7f0a05a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 90
    const v0, 0x7f0a0469

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    .line 92
    const v0, 0x7f0a046a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    .line 93
    const v0, 0x7f0a046b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    .line 94
    const v0, 0x7f0a046c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    .line 96
    const v0, 0x7f0a046d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    .line 97
    const v0, 0x7f0a046e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    .line 98
    const v0, 0x7f0a046f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    .line 99
    const v0, 0x7f0a0470

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    .line 100
    const v0, 0x7f0a00cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    .line 101
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_X:F

    .line 102
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    .line 103
    const v0, 0x7f0b0066

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIZE:F

    .line 104
    const v0, 0x7f0b0026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    .line 105
    const v0, 0x7f0b0028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SET_SHADOW:Z

    .line 106
    const v0, 0x7f0b001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    .line 107
    const/high16 v0, 0x7f090000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    .line 109
    const v0, 0x7f0a0465

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    .line 110
    const v0, 0x7f0a0466

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    .line 111
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_X:I

    .line 112
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    float-to-int v0, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    sub-int/2addr v0, v3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_Y:I

    .line 113
    const v0, 0x7f0b0026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    .line 253
    new-array v0, v1, [I

    aput v2, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 15
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 660
    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    .line 213
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/android/glview/TwGLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 224
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    .line 226
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRunning:Z

    .line 230
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    .line 239
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    .line 241
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    .line 247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    .line 249
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    .line 255
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    .line 661
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setCaptureEnabled(Z)V

    .line 662
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setTouchHandled(Z)V

    .line 664
    sput-object p1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 666
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 671
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 672
    .local v12, "paint":Landroid/graphics/Paint;
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 673
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c02cc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_TEXT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v14, v1, v2

    .line 674
    .local v14, "undoButtonWidth":I
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    sub-int v13, v1, v14

    .line 676
    .local v13, "undoButtonPosX":I
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    int-to-float v3, v13

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 677
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    .line 679
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c02cc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIIZZ)V

    .line 680
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0c02cc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 685
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    int-to-float v3, v14

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->UNDO_BUTTON_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 686
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    int-to-float v4, v14

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 688
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->DONE_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020265

    const v6, 0x7f02026a

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    .line 689
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 690
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 691
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 697
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 700
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 701
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 705
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 706
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204af

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 707
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204b1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 708
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204b0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 709
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-float v4, v4

    const v5, 0x7f0204b2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 711
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 712
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->LEFT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 717
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 719
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 720
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 721
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->RIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 724
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_X:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->STRAIGHT_INDICATOR_POS_Y:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;->setLeftTop(IFF)V

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 728
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 729
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 732
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 737
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 738
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 741
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_POS_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 742
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 743
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 747
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 749
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 751
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_INDICATOR_HEIGHT:I

    int-to-float v6, v6

    const-string v7, ""

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->BUTTON_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    .line 752
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 753
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->COUNTER_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 754
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 755
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 757
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setOnThumbnailListCloseListener(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;)V

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 762
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->THUMBNAIL_LIST_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02028a

    const v6, 0x7f02028c

    const v7, 0x7f02028b

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    .line 764
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 769
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    const v7, 0x7f0201fe

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const v7, 0x7f0201fb

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 772
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201fc

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const v7, 0x7f0201fd

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v3, v1, v2

    .line 776
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v11, v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 776
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 781
    :cond_0
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    const v7, 0x7f0c0222

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 783
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 784
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 785
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 788
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    const v7, 0x7f0c016b

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SET_SHADOW:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SHOOTINGMODE_TEXT_SHADOW_OFFSET:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 794
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->INDICATOR_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_X:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_POS_Y:F

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_HEIGHT_VERITCAL:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_SIDE_MARGIN:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->HELP_TEXT_WIDTH_VERITCAL:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 799
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 802
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CALIBRATION_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 804
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 807
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->PROGRESSWHEEL_CAPTURABLE_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setRotatable(Z)V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setCenterPivot(Z)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 813
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0204b3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    .line 814
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveBaseLayout(FF)V

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 816
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 817
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 819
    new-instance v1, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-direct {v1}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    .line 821
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 842
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLUtil;->getBlinkAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    .line 843
    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/app/camera/Camera;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V

    return-void
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1812(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mLeftIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mStraightWarningIndicator:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->onDone(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mBlinkingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->restart()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method private calculateOrientationForPicture(I)I
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1237
    move v0, p1

    .line 1238
    .local v0, "rotation":I
    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_1

    .line 1239
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1240
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1247
    :cond_1
    :goto_0
    return v0

    .line 1242
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1243
    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method private getAnimation(I)Landroid/view/animation/AnimationSet;
    .locals 8
    .param p1, "warningArrowIndex"    # I

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 1431
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1432
    .local v1, "animation":Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 1433
    .local v0, "anim":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 1434
    .local v2, "xDistance":F
    const/4 v3, 0x0

    .line 1436
    .local v3, "yDistance":F
    packed-switch p1, :pswitch_data_0

    .line 1457
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v6, v2, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1458
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_HEIGHT:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1460
    if-eqz v0, :cond_0

    .line 1461
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1462
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1463
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1464
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1465
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1468
    :cond_0
    return-object v1

    .line 1438
    :pswitch_0
    const/4 v2, 0x0

    .line 1439
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v3, v5, v4

    .line 1440
    goto :goto_0

    .line 1442
    :pswitch_1
    const/4 v2, 0x0

    .line 1443
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 1444
    goto :goto_0

    .line 1446
    :pswitch_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float v2, v5, v4

    .line 1447
    const/4 v3, 0x0

    .line 1448
    goto :goto_0

    .line 1450
    :pswitch_3
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 1451
    const/4 v3, 0x0

    .line 1452
    goto :goto_0

    .line 1436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onDone(Z)V
    .locals 5
    .param p1, "saveOutput"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 938
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onDone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    .line 940
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 942
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 948
    if-eqz p1, :cond_0

    .line 949
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideThumbnailButton()V

    .line 950
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    .line 954
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 955
    invoke-direct {p0, v3, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V

    .line 956
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 957
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->horizonIndicatorUpdate(FF)V

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->resetList()V

    .line 959
    if-eqz p1, :cond_1

    .line 960
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->saveSEFFile()V

    .line 967
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c016b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 971
    :goto_2
    return-void

    .line 952
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    goto :goto_0

    .line 962
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->restart()V

    .line 963
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->prepareDirectories()V

    .line 964
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetContinuousFileSequence()V

    .line 965
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->on3DTourComplete()V

    goto :goto_1

    .line 969
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->stop()V

    goto :goto_2
.end method

.method private prepareDirectories()V
    .locals 8

    .prologue
    .line 1212
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1213
    :cond_0
    const-string v6, "TwGLVirtualTourMenu"

    const-string v7, "prepareDirectories return because of null pointer"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1216
    :cond_2
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    .line 1217
    .local v1, "dstDir":Ljava/lang/String;
    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    const-string v7, "/.3DTour"

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1219
    .local v5, "tempDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1220
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1221
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1223
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v4, "temp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1225
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 1227
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1228
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 1229
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1230
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1228
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private resetStabilizer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1188
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationInProgressCount:I

    .line 1189
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setProgress(I)V

    .line 1190
    return-void
.end method

.method private restart()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x42780000    # 62.0f

    const/high16 v7, 0x42360000    # 45.5f

    .line 1058
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "restart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    if-nez v0, :cond_1

    .line 1061
    :cond_0
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_0
    return-void

    .line 1065
    :cond_1
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    const/16 v0, 0x27

    if-gt v8, v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    .line 1077
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    .line 1079
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1081
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto :goto_0

    .line 1086
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto/16 :goto_0

    .line 1091
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto/16 :goto_0

    .line 1096
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->restart(IIIIIFF)V

    goto/16 :goto_0

    .line 1079
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private saveSEFFile()V
    .locals 12

    .prologue
    .line 1119
    const-string v0, "TwGLVirtualTourMenu"

    const-string v10, "saveSEFFile"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v0, "TwGLVirtualTourMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total Photos:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->startShutterAnimation()V

    .line 1123
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1124
    .local v6, "calendar":Ljava/util/GregorianCalendar;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 1125
    .local v8, "time":Landroid/text/format/Time;
    iget-object v0, v8, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 1126
    .local v9, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v6, v9}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1127
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1128
    .local v4, "dateTaken":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ".jpg"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1129
    .local v3, "fileName":Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v7

    .line 1130
    .local v7, "dstDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1131
    .local v2, "strFilePath":Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const-string v10, "/.3DTour"

    invoke-static {v0, v10}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "tempDir":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->saveTour(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1135
    return-void
.end method

.method private setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1193
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mProgressDegree:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setProgress(I)V

    .line 1195
    return-void
.end method

.method private setRemainCounter()V
    .locals 3

    .prologue
    .line 1203
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterText:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCounterIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStabilizerVisibleState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 1472
    packed-switch p1, :pswitch_data_0

    .line 1491
    :goto_0
    return-void

    .line 1474
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 1479
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 1484
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 1472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStabilizerVisibleState(IZ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "update"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 1494
    packed-switch p1, :pswitch_data_0

    .line 1513
    :goto_0
    return-void

    .line 1496
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 1497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 1498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 1501
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 1506
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCalibrationProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturableProgressWheel:Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/camera/glwidget/TwGLProgressWheel;->setVisibility(IZ)V

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0

    .line 1494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setWarningArrowVisibleState(ZI)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "msg"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "rect_x":F
    const/4 v1, 0x0

    .line 1319
    .local v1, "rect_y":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1320
    if-eqz p1, :cond_8

    .line 1321
    packed-switch p2, :pswitch_data_0

    .line 1415
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    .line 1428
    :goto_0
    return-void

    .line 1323
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-nez v2, :cond_1

    .line 1324
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 1325
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    .line 1326
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1327
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1328
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1329
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1330
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1331
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1360
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1361
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c0222

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1362
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1363
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 1364
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1365
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    .line 1366
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1332
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v2, v7, :cond_2

    .line 1333
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 1334
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v1, v2, v3

    .line 1335
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1336
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1337
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1338
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1339
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1340
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_1

    .line 1341
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v2, v8, :cond_3

    .line 1342
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v0, v2, v3

    .line 1343
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 1344
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1345
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1346
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1347
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1348
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1349
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 1350
    :cond_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v2, v9, :cond_0

    .line 1351
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    .line 1352
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1353
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1354
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1355
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1356
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1357
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1358
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_1

    .line 1369
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-nez v2, :cond_5

    .line 1370
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 1371
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v1, v2, v3

    .line 1372
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1373
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1374
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1375
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1376
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1377
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1406
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1407
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v4, 0x7f0c0223

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1408
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1409
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 1410
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1411
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    .line 1412
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1378
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v2, v7, :cond_6

    .line 1379
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 1380
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v1, v2, v3

    .line 1381
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1382
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1383
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1384
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1385
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1386
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_2

    .line 1387
    :cond_6
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v2, v8, :cond_7

    .line 1388
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    add-float v0, v2, v3

    .line 1389
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 1390
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1391
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1392
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1393
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1394
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1395
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 1396
    :cond_7
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-ne v2, v9, :cond_4

    .line 1397
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_ARROW_SHUTTER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_MARGIN:F

    sub-float v0, v2, v3

    .line 1398
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->WARNING_TEXT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1399
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->getAnimation(I)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1400
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1401
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1402
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1403
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1404
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_2

    .line 1419
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1420
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1421
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1422
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1423
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v5}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1424
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 1425
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1426
    :cond_9
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPlayWarningArrowSound:Z

    goto/16 :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private start()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x42780000    # 62.0f

    const/high16 v9, 0x42360000    # 45.5f

    .line 1002
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    if-nez v0, :cond_1

    .line 1005
    :cond_0
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :goto_0
    return-void

    .line 1009
    :cond_1
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    const/16 v0, 0x27

    if-gt v10, v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandlerActiveFlag:Z

    .line 1021
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    .line 1023
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1025
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto :goto_0

    .line 1030
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x4

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto/16 :goto_0

    .line 1035
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto/16 :goto_0

    .line 1040
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewWidth()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->getPreviewHeight()I

    move-result v4

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->SCREEN_WIDTH:I

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->start(IIIIIIIFF)V

    goto/16 :goto_0

    .line 1023
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized stop()V
    .locals 2

    .prologue
    .line 1048
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    if-nez v0, :cond_0

    .line 1051
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "Return because of null pointer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :goto_0
    monitor-exit p0

    return-void

    .line 1054
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-virtual {v0}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getRequiredStorageSize()J
    .locals 2

    .prologue
    .line 1516
    const-wide/32 v0, 0x1400000

    return-wide v0
.end method

.method public hideCaptureLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->resetList()V

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 990
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    .line 992
    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setWarningArrowVisibleState(ZI)V

    .line 993
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 994
    return-void
.end method

.method public horizonIndicatorUpdate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHorizonIndicator:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1200
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 883
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 885
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 887
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 888
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x4

    .line 892
    const-string v5, "TwGLVirtualTourMenu"

    const-string v6, "onClick"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 894
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 895
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 896
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->removeLastThumbnail()V

    .line 898
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    const-string v5, "/.3DTour"

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/ImageSavingUtils;->getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "tempDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3DTour_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "FileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    .local v1, "temp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 902
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 904
    :cond_0
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->reduceContinuousFileSequence()V

    .line 905
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    .line 906
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-nez v4, :cond_1

    .line 907
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 910
    .end local v0    # "FileName":Ljava/lang/String;
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "tempDir":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-nez v4, :cond_2

    .line 911
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 912
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 913
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 914
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    .line 915
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 916
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v6, 0x7f0c016b

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 917
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 919
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 920
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    invoke-virtual {v4}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->onUndo()V

    .line 921
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V

    .line 934
    :goto_0
    return v3

    .line 923
    :cond_3
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 924
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 926
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 927
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 928
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setVisibility(I)V

    .line 929
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v7}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 930
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;)V

    .line 931
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->startAnimation()V

    :cond_5
    move v3, v4

    .line 934
    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 860
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->hideCaptureLayout()V

    .line 862
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->stop()V

    .line 863
    return-void
.end method

.method public onImageStoringCompleted()V
    .locals 2

    .prologue
    .line 997
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mVirtualTourModeler:Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCapturing:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->updateCapturingStatus(Z)V

    .line 999
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1106
    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back button pressed current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-gtz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1112
    :goto_0
    const/4 v0, 0x1

    .line 1115
    :goto_1
    return v0

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1115
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onOnThumbnailListCloseListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHideAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->startAnimation()V

    .line 1313
    :cond_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1303
    return-void
.end method

.method public onOrientationChangedEngine(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1267
    packed-switch p1, :pswitch_data_0

    .line 1281
    :goto_0
    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChangedEngine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1292
    :cond_0
    :goto_1
    return-void

    .line 1269
    :pswitch_0
    const/4 p1, 0x0

    .line 1270
    goto :goto_0

    .line 1272
    :pswitch_1
    const/4 p1, 0x2

    .line 1273
    goto :goto_0

    .line 1275
    :pswitch_2
    const/4 p1, 0x1

    .line 1276
    goto :goto_0

    .line 1278
    :pswitch_3
    const/4 p1, 0x3

    goto :goto_0

    .line 1285
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    .line 1287
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    if-lez v0, :cond_2

    .line 1288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 867
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->hideCaptureLayout()V

    .line 869
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->stop()V

    .line 870
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 874
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRunning:Z

    .line 876
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    .line 877
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->start()V

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->showCaptureLayout()V

    .line 879
    return-void
.end method

.method public onShow()V
    .locals 3

    .prologue
    .line 847
    const-string v0, "TwGLVirtualTourMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->prepareDirectories()V

    .line 849
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->resetStabilizer()V

    .line 850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRunning:Z

    .line 851
    invoke-static {}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->getInstance()Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler;->setStackStateListener(Lcom/sec/android/secvision/solutions/virtualtour/VirtualTourModeler$VirtualTourModelerEventListener;)V

    .line 852
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    .line 853
    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->start()V

    .line 855
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->showCaptureLayout()V

    .line 856
    return-void
.end method

.method public onStateChanged(II)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "data"    # I

    .prologue
    .line 1256
    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    .line 1257
    const-string v0, "TwGLVirtualTourMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining StepCount - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mRemainingStepCount:I

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1263
    :goto_0
    return-void

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postSEFEncode(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "result"    # I
    .param p2, "strFilePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "dateTaken"    # J

    .prologue
    const/4 v8, 0x1

    .line 1140
    const-string v3, "TwGLVirtualTourMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->prepareDirectories()V

    .line 1142
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mCurrentPhotoCount:I

    .line 1144
    if-ne p1, v8, :cond_2

    .line 1145
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1146
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v3, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v3, "_data"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v3, "height"

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    const-string v3, "width"

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    const-string v3, "orientation"

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    mul-int/lit8 v4, v4, 0x5a

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->calculateOrientationForPicture(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1153
    const-string v3, "sef_file_type"

    const/16 v4, 0x850

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1154
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    .line 1155
    .local v1, "loc":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 1156
    const-string v3, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1157
    const-string v3, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1159
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1160
    .local v0, "fileUri":Landroid/net/Uri;
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 1167
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1170
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    if-ne v3, v8, :cond_1

    .line 1171
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "reviewon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1173
    :cond_1
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderWidth()I

    move-result v5

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->getOriginalViewFinderHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v4

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    mul-int/lit8 v5, v5, 0x5a

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->calculateOrientationForPicture(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1182
    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "loc":Landroid/location/Location;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->endShutterAnimation()V

    .line 1183
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    .line 1184
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1185
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mUndoButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mDoneButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailOpenButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mGuideGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 978
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setStabilizerVisibleState(I)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->setRemainCounter()V

    .line 981
    return-void
.end method

.method public updateThumbnail([B)V
    .locals 3
    .param p1, "jpegData"    # [B

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mThumbnailList:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mPs32Direction:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourMenu;->mOrientationForPicture:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->addThumbnail([BII)V

    .line 1252
    return-void
.end method
