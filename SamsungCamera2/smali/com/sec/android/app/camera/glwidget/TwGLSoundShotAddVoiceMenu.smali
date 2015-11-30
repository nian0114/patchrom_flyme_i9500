.class public Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSoundShotAddVoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;
    }
.end annotation


# static fields
.field public static final BASE_MENU_WIDTH:I

.field private static final INDICATOR_EQBAR_POS_X:[I

.field private static final INDICATOR_EQBAR_POS_Y:I

.field private static final NUM_OF_EQBAR:I = 0x14

.field private static final PREVIEW_NORMAL_HEIGHT:I

.field private static final PREVIEW_NORMAL_WIDTH:I

.field private static final PREVIEW_WIDE_WIDTH:I

.field private static final PROGRESS_BAR_HEIGHT:I

.field private static final PROGRESS_BAR_POS_X:I

.field private static final PROGRESS_BAR_POS_Y:I

.field private static final PROGRESS_BAR_SEQ_POS_X:[I

.field private static final PROGRESS_BAR_WIDTH:I

.field private static final PROGRESS_BG_IMG_POS_X:I

.field private static final PROGRESS_BG_IMG_POS_Y:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_POS_X:[I

.field private static final PROGRESS_GROUP_POS_Y:[I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_MIC_POS_X:I

.field private static final PROGRESS_MIC_POS_Y:I

.field private static final PROGRESS_TEXT_FONT_SIZE:I

.field private static final PROGRESS_TEXT_HEIGHT:I

.field private static final PROGRESS_TEXT_POS_X:[I

.field private static final PROGRESS_TEXT_POS_Y:[I

.field private static final PROGRESS_TEXT_SHADOW_OFFSET:I

.field private static final PROGRESS_TEXT_STROKE_COLOR:I

.field private static final PROGRESS_TEXT_STROKE_WIDTH:I

.field private static final PROGRESS_TEXT_WIDTH:I

.field private static final RIGHT_SIDE_MENU_POS_X:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SOUNDSHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

.field private static final STOP_BUTTON_ICON_POS_X:I

.field private static final STOP_BUTTON_ICON_POS_Y:I

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field private static STORYRECORD_MAX_PROGRESSBAR_COUNT:I = 0x0

.field protected static final STORY_RECORD_INDICATOR_UPDATE_DURATION:I = 0x32

.field protected static final STORY_RECORD_INDICATOR_UPDATE_TIMER:I = 0x2

.field protected static final STORY_RECORD_PROGRESS_INCREASE_DURATION:I = 0x3e8

.field protected static final STORY_RECORD_PROGRESS_INCREASE_TIMER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLSoundShotAddVoiceMenu"


# instance fields
.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mEqBGImage:Lcom/sec/android/glview/TwGLImage;

.field private mEqValueArray:[I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMicImage:Lcom/sec/android/glview/TwGLImage;

.field private mMicImageArray:[I

.field private mProgessBarSeqFullImage:[I

.field private mProgessBarSeqImage:[I

.field private mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

.field private mRecProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordProgressCounter:I

.field private mRecording:Z

.field private mReviewImage:Lcom/sec/android/glview/TwGLImage;

.field private mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTimer:Ljava/util/Timer;

.field public qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

.field rec_audio:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    const/16 v2, 0x9

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    .line 102
    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_WIDTH:I

    .line 103
    const v2, 0x7f0a0476

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_HEIGHT:I

    .line 105
    const v2, 0x7f0a032f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_WIDTH:I

    .line 106
    const v2, 0x7f0a0330

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 108
    const v2, 0x7f0a000b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->BASE_MENU_WIDTH:I

    .line 110
    const v2, 0x7f0a0475

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->BASE_MENU_WIDTH:I

    sub-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->RIGHT_SIDE_MENU_POS_X:I

    .line 112
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->RIGHT_SIDE_MENU_POS_X:I

    const v3, 0x7f0a001a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_X:I

    .line 113
    const v2, 0x7f0a001b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_Y:I

    .line 114
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_X:I

    const v3, 0x7f0a001e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_ICON_POS_X:I

    .line 115
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_Y:I

    const v3, 0x7f0a001f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_ICON_POS_Y:I

    .line 117
    const/16 v2, 0x14

    new-array v2, v2, [I

    const v3, 0x7f0a033a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f0a033b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f0a033c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f0a033d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    const v3, 0x7f0a033e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v7

    const/4 v3, 0x5

    const v4, 0x7f0a033f

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x7f0a0340

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x7f0a0341

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x7f0a0342

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x7f0a0343

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x7f0a0344

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x7f0a0345

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xc

    const v4, 0x7f0a0346

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x7f0a0347

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x7f0a0348

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x7f0a0349

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x10

    const v4, 0x7f0a034a

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x11

    const v4, 0x7f0a034b

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x12

    const v4, 0x7f0a034c

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x13

    const v4, 0x7f0a034d

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_X:[I

    .line 148
    const/16 v2, 0x9

    new-array v2, v2, [I

    const v3, 0x7f0a0361

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f0a0362

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f0a0363

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f0a0364

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    const v3, 0x7f0a0365

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v7

    const/4 v3, 0x5

    const v4, 0x7f0a0366

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x7f0a0367

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x7f0a0368

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x7f0a0369

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    .line 172
    const v2, 0x7f0a0339

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_Y:I

    .line 230
    new-array v2, v7, [I

    const v3, 0x7f0a0331

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f0a0333

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f0a0335

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f0a0337

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    .line 237
    new-array v2, v7, [I

    const v3, 0x7f0a0332

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f0a0334

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f0a0336

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f0a0338

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    .line 244
    const v2, 0x7f0a034e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_X:I

    .line 246
    const v2, 0x7f0a034f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_Y:I

    .line 248
    const v2, 0x7f0a0350

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_X:I

    .line 250
    const v2, 0x7f0a0351

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_Y:I

    .line 252
    const v2, 0x7f0a0352

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_X:I

    .line 254
    const v2, 0x7f0a0353

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_Y:I

    .line 256
    const v2, 0x7f0a0354

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_WIDTH:I

    .line 258
    const v2, 0x7f0a0355

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_HEIGHT:I

    .line 306
    new-array v2, v7, [I

    const v3, 0x7f0a0356

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f0a0357

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f0a0358

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f0a0359

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I

    .line 313
    new-array v2, v7, [I

    const v3, 0x7f0a035a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f0a035b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f0a035c

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f0a035d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I

    .line 320
    const v2, 0x7f0a0360

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_FONT_SIZE:I

    .line 321
    const v2, 0x7f0a035e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_WIDTH:I

    .line 322
    const v2, 0x7f0a035f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_HEIGHT:I

    .line 324
    const v2, 0x7f0b0026

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 326
    const/high16 v2, 0x7f090000

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 328
    const v2, 0x7f0a0478

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_WIDE_WIDTH:I

    .line 329
    const v2, 0x7f0a0479

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_WIDTH:I

    .line 330
    const v2, 0x7f0a047a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_HEIGHT:I

    .line 332
    const v2, 0x7f0b002b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SOUNDSHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    .line 334
    const v0, 0x7f0b0034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_SHADOW_OFFSET:I

    return-void

    :cond_0
    move v0, v1

    .line 332
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 338
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    .line 175
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqValueArray:[I

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImageArray:[I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    .line 262
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqImage:[I

    .line 284
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqFullImage:[I

    .line 495
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setCaptureEnabled(Z)V

    .line 341
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 342
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020030

    const v5, 0x7f020032

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 352
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02047b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 370
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 374
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020477

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 382
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02046a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 390
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x14

    if-ge v8, v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02046b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 390
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    .line 402
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02048f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 408
    const/4 v8, 0x0

    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v8, v0, :cond_3

    .line 410
    if-nez v8, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f020491

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 408
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 414
    :cond_1
    const/16 v0, 0x8

    if-ne v8, v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f020492

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f020490

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 428
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 432
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c0255

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SOUNDSHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 457
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->init()V

    .line 458
    return-void

    .line 175
    :array_0
    .array-data 4
        0x7f02046b
        0x7f02046c
        0x7f02046d
        0x7f02046e
        0x7f02046f
        0x7f020470
        0x7f020471
        0x7f020472
        0x7f020473
        0x7f020474
        0x7f020475
        0x7f020476
    .end array-data

    .line 203
    :array_1
    .array-data 4
        0x7f020477
        0x7f020478
    .end array-data

    .line 262
    :array_2
    .array-data 4
        0x7f020491
        0x7f020490
        0x7f020490
        0x7f020490
        0x7f020490
        0x7f020490
        0x7f020490
        0x7f020490
        0x7f020492
    .end array-data

    .line 284
    :array_3
    .array-data 4
        0x7f02048d
        0x7f02048c
        0x7f02048c
        0x7f02048c
        0x7f02048c
        0x7f02048c
        0x7f02048c
        0x7f02048c
        0x7f02048e
    .end array-data
.end method

.method private StartMicAnimation()V
    .locals 6

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StopMicAnimation()V

    .line 518
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 522
    return-void
.end method

.method private StopMicAnimation()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    .line 536
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImageArray:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecordProgressIncreased()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
    .param p1, "x1"    # [I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->updateRecordingAmplevel()V

    return-void
.end method

.method private hideStoryRecordProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 732
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "hideStoryRecordProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showEffectButton()V

    .line 744
    :cond_0
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 461
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 485
    new-instance v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    .line 486
    return-void
.end method

.method public static isSoundScene(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1062
    const-string v3, "TwGLSoundShotAddVoiceMenu"

    const-string v4, "isSoundScene"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    if-nez p0, :cond_1

    .line 1064
    const-string v3, "TwGLSoundShotAddVoiceMenu"

    const-string v4, "filepath is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    :goto_0
    return v2

    .line 1067
    :cond_1
    const/4 v1, 0x0

    .line 1069
    .local v1, "qdioData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1073
    :goto_1
    if-eqz v1, :cond_0

    .line 1074
    const/4 v2, 0x1

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setProgressBar(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 542
    if-lez p1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqImage:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 550
    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge p1, v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqFullImage:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 558
    :cond_1
    return-void
.end method

.method private setRecordProgressIncreased()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 616
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-gt v1, v2, :cond_1

    .line 617
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    add-int/lit8 v0, v1, 0x1

    .line 619
    .local v0, "progressCountForDisplay":I
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-gt v0, v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0255

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 621
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setProgressBar(I)V

    .line 624
    .end local v0    # "progressCountForDisplay":I
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-le v1, v2, :cond_4

    .line 626
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setProgressBar(I)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSoundshotAddVoiceRecordingFinished()V

    .line 642
    :cond_3
    :goto_0
    return-void

    .line 637
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setRecoringAmplitude([I)V
    .locals 6
    .param p1, "MicAmplitude"    # [I

    .prologue
    const/16 v4, 0xa

    const/16 v5, 0x14

    .line 569
    new-array v0, v5, [I

    .line 573
    .local v0, "EqBandLevel":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 575
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_5

    .line 582
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-le v2, v4, :cond_1

    .line 584
    div-int/lit8 v2, v1, 0x2

    aput v4, p1, v2

    .line 588
    :cond_1
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    .line 590
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    .line 580
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    :cond_2
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-eqz v2, :cond_3

    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-ne v2, v4, :cond_4

    .line 594
    :cond_3
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    goto :goto_2

    .line 600
    :cond_4
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_2

    .line 607
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_6

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqValueArray:[I

    aget v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 609
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 612
    :cond_6
    return-void
.end method

.method private showStoryRecordProgress()V
    .locals 2

    .prologue
    .line 726
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "showStoryRecordProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 729
    return-void
.end method

.method private startSoundRecording()V
    .locals 3

    .prologue
    .line 695
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "startSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 698
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 712
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    if-nez v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->startRecorder()V

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 718
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->updateRecordingAmplevel()V

    .line 719
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecordProgressIncreased()V

    goto :goto_0
.end method

.method private stopSoundRecording()V
    .locals 3

    .prologue
    .line 650
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "stopSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->stopRecorder()V

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->hideStoryRecordProgressBar()V

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->resetManualMode()V

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_2

    .line 668
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateRecordingAmplevel()V
    .locals 4

    .prologue
    .line 561
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 562
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 564
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 566
    :cond_0
    return-void
.end method


# virtual methods
.method public addAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    if-nez v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "addAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_2

    .line 821
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error while addAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->stopSoundRecording()V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSoundShotManualOptionDone()V

    goto :goto_0
.end method

.method public addRawAudioEffect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "RawID"    # I

    .prologue
    .line 796
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "addRawAudioEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 800
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream(Landroid/content/res/AssetFileDescriptor;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    invoke-static {p1, v1}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v1

    if-gez v1, :cond_0

    .line 802
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while addAudio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 805
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showEffectButton()V

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSoundShotManualOptionDone()V

    .line 810
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 840
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 845
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StopMicAnimation()V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 849
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 853
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 857
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 861
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 864
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_5

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 869
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 873
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 876
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 878
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 880
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 881
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 883
    :cond_6
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    .line 884
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 885
    return-void
.end method

.method public clearGLView()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 835
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 836
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 975
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onActivityTouchEvent : ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    return v2
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x1

    .line 890
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v1, :cond_1

    .line 892
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "mCaptureStopButton onClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->createAudioFinishedbyButton()V

    .line 900
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 965
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 968
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StopMicAnimation()V

    .line 969
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1027
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1032
    :cond_0
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1038
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "onKeyUp"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 1040
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 1054
    const/16 v1, 0x52

    if-ne p1, v1, :cond_5

    .line 1058
    :cond_0
    :goto_0
    return v0

    .line 1042
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1043
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1046
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1047
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 1050
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->createAudioFinishedbyButton()V

    goto :goto_0

    .line 1058
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 982
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->stopSoundRecording()V

    .line 987
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showEffectButton()V

    .line 994
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 905
    const-string v2, "TwGLSoundShotAddVoiceMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 908
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    .line 909
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideEffectButton()V

    .line 911
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 912
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 913
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V

    .line 915
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    .line 916
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 917
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->bringToFront()V

    .line 918
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 919
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->bringToFront()V

    .line 920
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 922
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 924
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->bringToFront()V

    .line 926
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->bringToFront()V

    .line 933
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 934
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->bringToFront()V

    .line 936
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 938
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    .line 940
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 944
    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v1, v2, :cond_2

    .line 946
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->bringToFront()V

    .line 948
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 954
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    .line 955
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 956
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->startRecordingByCreateButton()V

    .line 957
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 958
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 960
    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 961
    return-void

    .line 912
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public resetManualMode()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 997
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "resetManualMode"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setTouchHandled(Z)V

    .line 1000
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1002
    :cond_0
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0255

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1011
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1015
    :cond_2
    const/16 v1, 0xb

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1016
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V

    .line 1018
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1020
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_3

    .line 1021
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1023
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 1024
    return-void

    .line 1015
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public showReviewImage(Lcom/sec/android/glview/TwGLViewGroup;Landroid/graphics/Bitmap;IZ)V
    .locals 10
    .param p1, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "data"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I
    .param p4, "is_front_camera"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 755
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "showReviewImage"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 760
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->clear()V

    .line 765
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 770
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 773
    :cond_2
    if-eqz p4, :cond_4

    const/16 v0, 0x5a

    if-eq p3, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_4

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v0

    if-nez v0, :cond_4

    .line 775
    const/16 v0, 0xb4

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 778
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    .line 786
    :goto_0
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_WIDE_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_HEIGHT:I

    int-to-float v5, v3

    const v6, 0x7f02045b

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 793
    return-void

    .line 783
    :cond_5
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_WIDE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_WIDTH:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_HEIGHT:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method public startRecordingByCreateButton()V
    .locals 2

    .prologue
    .line 747
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "startRecordingByCreateButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->startSoundRecording()V

    .line 749
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->showStoryRecordProgress()V

    .line 750
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StartMicAnimation()V

    .line 752
    return-void
.end method

.method public stopSoundRecrodingByExternalEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 683
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "stopSoundRecrodingByExternalEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-nez p1, :cond_1

    .line 685
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "stopSoundRecrodingByExternalEvent filepath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 690
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error stopSoundRecrodingByExternalEvent while saveAudioJPEG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
