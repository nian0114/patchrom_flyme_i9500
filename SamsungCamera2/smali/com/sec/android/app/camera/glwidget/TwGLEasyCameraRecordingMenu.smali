.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraRecordingMenu.java"


# static fields
.field private static final BASEMENU_LEFT_MARGIN:I

.field private static final BASEMENU_TOP_MARGIN:I

.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field public static final HELP_TUTORIAL_STEP_COMPLETE_MSG:I = 0x2

.field private static final INDICATOR_GROUP_HEIGHT:I

.field private static final INDICATOR_GROUP_POS_X:I

.field private static final INDICATOR_GROUP_POS_Y:I

.field private static final INDICATOR_GROUP_WIDTH:I

.field private static final INDICATOR_REC_ICON_LEFT_MARGIN:I

.field private static final INDICATOR_REC_ICON_SIDE_MARGIN:I

.field private static final INDICATOR_REC_ICON_TOP_MARGIN:I

.field private static final INDICATOR_REC_ICON_WIDTH:I

.field private static final INDICATOR_REC_TEXT_MARGIN:I

.field private static final INDICATOR_REC_TEXT_WIDTH:I

.field private static final INDICATOR_REC_TIME_WIDTH:I

.field private static final INDICATOR_REC_WIDTH:I

.field private static final INDICATOR_SIDE_MARGIN:I

.field public static final MAX_EMAIL_SIZE:J = 0x3200000L

.field private static final MAX_RECORDING_TIME:I = 0x1517f

.field private static final ONE_SECOND:I = 0x1

.field private static final PROGRESSBAR_HEIGHT:I

.field private static final PROGRESSBAR_POS_X:I

.field private static final PROGRESSBAR_SIDE_MARGIN:I

.field private static final PROGRESSBAR_WIDTH:I

.field private static final PROGRESS_GROUP_BOTTOM_MARGIN:I

.field private static final PROGRESS_GROUP_BOTTOM_MARGIN_180:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_SIDE_MARGIN:I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_GROUP_X:I

.field private static final PROGRESS_GROUP_Y:I

.field private static final PROGRESS_MAX_SIZE_POS_X:I

.field private static final PROGRESS_SIZE_TEXT_WIDTH:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final RECORDING_BUTTON_STOP_ICON_LEFT_MARGIN:I

.field private static final RECORDING_BUTTON_STOP_ICON_TOP_MARGIN:I

.field public static final RECORDING_MENU_CANCEL:I = 0x4

.field public static final RECORDING_MENU_PAUSE:I = 0x1

.field public static final RECORDING_MENU_RESUME:I = 0x3

.field public static final RECORDING_MENU_STOP:I = 0x2

.field public static final RECORDING_MENU_TAKEPICTURE:I = 0x5

.field private static final RECORDING_MODE_TEXT_SHADOW:Z

.field private static final RECORDING_SIZE_TEXT_STROKE_COLOR:I

.field private static final RECORDING_TEXT_STROKE_WIDTH:I

.field public static final RECORDING_TIMER_STEP_MSG:I = 0x1

.field private static final RECORDING_TIME_TEXT_STROKE_COLOR:I

.field private static final REC_ICON_TEXT_STROKE_COLOR:I

.field private static final REC_SIZE_TEXT_SIZE:I

.field private static final REC_TIME_TEXT_SIZE:I

.field private static final REMAIN_TIME_GROUP_HEIGHT:I

.field private static final REMAIN_TIME_GROUP_POS_X:I

.field private static final REMAIN_TIME_GROUP_POS_Y:I

.field private static final REMAIN_TIME_GROUP_WIDTH:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final RIGHT_SIDE_MENU_WIDTH:I

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final SIDE_MENU_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLEasyCameraRecordingMenu"


# instance fields
.field private isEmailMode:Z

.field private isSharingMode:Z

.field private mCurRecSize:Lcom/sec/android/glview/TwGLText;

.field private mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mHMS:Ljava/lang/String;

.field private mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

.field private mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

.field private mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgress:I

.field private mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

.field private mRecordingHelpCompleteHandler:Landroid/os/Handler;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecordingState:I

.field private mRecordingTime:I

.field private mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

.field private mStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mStopButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mStopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 26
    const v1, 0x7f0a0475

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    .line 27
    const v1, 0x7f0a0476

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    .line 28
    const v1, 0x7f0a000b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->SIDE_MENU_WIDTH:I

    .line 29
    const v1, 0x7f0b0068

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    .line 30
    const v1, 0x7f0b0069

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_TIME_TEXT_SIZE:I

    .line 32
    const v1, 0x7f0a023b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f0a0237

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RIGHT_SIDE_MENU_WIDTH:I

    .line 34
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RIGHT_SIDE_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 37
    const v1, 0x7f0a0236

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_POS_Y:I

    .line 38
    const v1, 0x7f0a0239

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_STOP_ICON_TOP_MARGIN:I

    .line 39
    const v1, 0x7f0a023a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_STOP_ICON_LEFT_MARGIN:I

    .line 41
    const v1, 0x7f0a022b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->BASEMENU_LEFT_MARGIN:I

    .line 42
    const v1, 0x7f0a022a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->BASEMENU_TOP_MARGIN:I

    .line 44
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->BASEMENU_LEFT_MARGIN:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_X:I

    .line 45
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->BASEMENU_TOP_MARGIN:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    .line 47
    const v1, 0x7f0a0228

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    .line 48
    const v1, 0x7f0a0229

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    .line 49
    const v1, 0x7f0a022f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_TOP_MARGIN:I

    .line 50
    const v1, 0x7f0a022e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_LEFT_MARGIN:I

    .line 51
    const v1, 0x7f0a0230

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_SIDE_MARGIN:I

    .line 52
    const v1, 0x7f0a022d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_WIDTH:I

    .line 53
    const v1, 0x7f0a0231

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_WIDTH:I

    .line 54
    const v1, 0x7f0a0232

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_TEXT_MARGIN:I

    .line 55
    const v1, 0x7f0a0233

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_TEXT_WIDTH:I

    .line 56
    const v1, 0x7f0a0234

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    .line 57
    const v1, 0x7f0a0235

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    .line 60
    const v1, 0x7f0a0130

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_WIDTH:I

    .line 61
    const v1, 0x7f0a0131

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_HEIGHT:I

    .line 62
    const v1, 0x7f0a0132

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    .line 63
    const v1, 0x7f0a0133

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    .line 64
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_WIDTH:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    .line 65
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_POS_X:I

    .line 66
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    .line 67
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 68
    const v1, 0x7f0a0135

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    .line 69
    const v1, 0x7f0a0136

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN:I

    .line 70
    const v1, 0x7f0a0137

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    .line 71
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_X:I

    .line 72
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_Y:I

    .line 75
    const v1, 0x7f0a00fa

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    .line 76
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_HEIGHT:I

    .line 77
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_POS_X:I

    .line 78
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->BASEMENU_TOP_MARGIN:I

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_POS_Y:I

    .line 80
    const v1, 0x7f0b0026

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    .line 81
    const v1, 0x7f090002

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    .line 82
    const/high16 v1, 0x7f090000

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    .line 83
    const v1, 0x7f090003

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    .line 84
    const v1, 0x7f0b0022

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "zOrder"    # I

    .prologue
    const/4 v6, 0x0

    .line 156
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingState:I

    .line 125
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mHMS:Ljava/lang/String;

    .line 127
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingTime:I

    .line 128
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgress:I

    .line 129
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isSharingMode:Z

    .line 130
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isEmailMode:Z

    .line 131
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopping:Z

    .line 133
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->setTouchHandled(Z)V

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->init()V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hmsConvert(I)Ljava/lang/String;
    .locals 6
    .param p1, "seconds"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 353
    const v3, 0x1517f

    if-le p1, v3, :cond_0

    .line 354
    const p1, 0x1517f

    .line 357
    :cond_0
    div-int/lit8 v0, p1, 0x3c

    .line 358
    .local v0, "min":I
    rem-int/lit8 v1, p1, 0x3c

    .line 360
    .local v1, "sec":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v2, "str":Ljava/lang/StringBuilder;
    if-ge v0, v5, :cond_1

    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    :goto_0
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    if-ge v1, v5, :cond_2

    .line 372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 366
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private init()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    .line 166
    .local v1, "glContext":Lcom/sec/android/glview/TwGLContext;
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 167
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_LEFT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_TOP_MARGIN:I

    int-to-float v3, v3

    const v4, 0x7f020009

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 168
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_LEFT_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_ICON_SIDE_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_TEXT_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v3

    const-string v6, "REC"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_TIME_TEXT_SIZE:I

    int-to-float v7, v3

    const v3, 0x7f09000e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_ICON_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 171
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_TEXT_MARGIN:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_REC_TIME_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mHMS:Ljava/lang/String;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_TIME_TEXT_SIZE:I

    int-to-float v7, v3

    move v3, v11

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    sget-boolean v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v14, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 192
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 193
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v2

    const-string v6, "0K"

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v2

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v14, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 197
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202f8

    const v7, 0x7f0202f7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 198
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v3

    const-string v6, ""

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v3

    const v3, 0x7f090006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 200
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v3

    const-string v6, "50M"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v3

    const v3, 0x7f090006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_BOTTOM_MARGIN_180:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_SIDE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v14, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 218
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 219
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_HEIGHT:I

    int-to-float v5, v2

    const-string v6, "0K"

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REC_SIZE_TEXT_SIZE:I

    int-to-float v7, v2

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    sget-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_MODE_TEXT_SHADOW:Z

    move v2, v11

    move v3, v11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->SIDE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->SIDE_MENU_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->INDICATOR_SIDE_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->SIDE_MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->REMAIN_TIME_GROUP_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v0, v14, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v14, v12}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 232
    new-instance v2, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RIGHT_SIDE_MENU_WIDTH:I

    int-to-float v6, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->FULL_SCREEN_HEIGHT:I

    int-to-float v7, v0

    move v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 233
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v3, v2

    const v4, 0x7f02031f

    const v5, 0x7f020321

    const v6, 0x7f020321

    const/4 v7, 0x0

    move v2, v11

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_STOP_ICON_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->RECORDING_BUTTON_STOP_ICON_TOP_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x7f020328

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 255
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 260
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 263
    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    .line 264
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    .line 265
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    .line 266
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 267
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    .line 268
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 269
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    .line 271
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 272
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 273
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 274
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    .line 275
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    .line 277
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 278
    return-void
.end method

.method public doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 417
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingTime:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopping:Z

    if-eqz v0, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->stopTimer()V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 423
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingState:I

    .line 425
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopping:Z

    goto :goto_0
.end method

.method public forceStop()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 429
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->stopTimer()V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->handleRecordingCommand(I)V

    .line 431
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingState:I

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopping:Z

    .line 434
    return-void
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingState:I

    return v0
.end method

.method public getRecordingTime()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingTime:I

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->doStop()V

    .line 484
    :goto_0
    return v0

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->STEP_NUM:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStep_complete()V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingHelpCompleteHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->doStop()V

    goto :goto_0

    .line 484
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->stopTimer()V

    .line 341
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 342
    return-void
.end method

.method public onHideMenu()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->onHide()V

    .line 346
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 488
    sparse-switch p1, :sswitch_data_0

    .line 496
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 494
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 500
    sparse-switch p1, :sswitch_data_0

    .line 524
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 502
    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopping:Z

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->doStop()V

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial2:Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial2;->setStepHide()V

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 514
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 521
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->doStop()V

    goto :goto_0

    .line 500
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->onHide()V

    .line 350
    return-void
.end method

.method protected onShow()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingSideMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIconText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isSharingMode:Z

    .line 293
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isEmailMode:Z

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecRemainTimeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 322
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mStopping:Z

    .line 323
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgress:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 331
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 332
    return-void

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isSharingMode:Z

    .line 302
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isEmailMode:Z

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isSharingMode:Z

    .line 311
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isEmailMode:Z

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLProgressBar;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBarGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mSharingMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mEmailMaxRecSize:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public pauseTimer()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    return-void
.end method

.method public setRecordingState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingState:I

    .line 468
    return-void
.end method

.method public startTimer()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 438
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingState:I

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->stepSecond()V

    .line 443
    return-void
.end method

.method public stepSecond()V
    .locals 6

    .prologue
    .line 446
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->handleRecordingTimerElapsed()I

    move-result v0

    .line 448
    .local v0, "drift":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    rsub-int/lit8 v3, v0, 0x64

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 449
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingTime:I

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 455
    return-void
.end method

.method public updateProgressBarText(J)V
    .locals 7
    .param p1, "bytes"    # J

    .prologue
    .line 399
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isSharingMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->isEmailMode:Z

    if-eqz v2, :cond_3

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRequestedRecordingSize()J

    move-result-wide v0

    .line 401
    .local v0, "mMaxSize":J
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgress:I

    .line 402
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 404
    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->doStop()V

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mCurRecSize:Lcom/sec/android/glview/TwGLText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x400

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 414
    .end local v0    # "mMaxSize":J
    :cond_2
    :goto_0
    return-void

    .line 409
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getRemainTime()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->doStop()V

    goto :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 2
    .param p1, "second"    # I

    .prologue
    .line 382
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mRecordingTime:I

    .line 383
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->hmsConvert(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mHMS:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecTime:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mHMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraRecordingMenu;->mIndicatorRecIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method
