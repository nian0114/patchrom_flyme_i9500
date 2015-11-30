.class public Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSoundShotMenu.java"


# static fields
.field private static final PROGRESS_BAR_HEIGHT:I

.field private static final PROGRESS_BAR_POS_X:[I

.field private static final PROGRESS_BAR_POS_Y:[I

.field private static final PROGRESS_BAR_SEQ_POS_X:[I

.field private static final PROGRESS_BAR_SEQ_POS_Y:I

.field private static final PROGRESS_BAR_TIMER_X:I

.field private static final PROGRESS_BAR_TIMER_Y:I

.field private static final PROGRESS_BAR_WIDTH:I

.field private static STORYRECORD_MAX_PROGRESSBAR_COUNT:I = 0x0

.field protected static final STORY_RECORD_INDICATOR_UPDATE_DURATION:I = 0x32

.field protected static final STORY_RECORD_INDICATOR_UPDATE_TIMER:I = 0x1

.field protected static final STORY_RECORD_PROGRESS_INCREASE_DURATION:I = 0x3e8

.field protected static final STORY_RECORD_PROGRESS_INCREASE_TIMER:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TwGLSoundShotMenu"


# instance fields
.field private RecordedTime:I

.field private mFull:Z

.field protected mMainHandler:Landroid/os/Handler;

.field private mMode:I

.field private mProgessBarSeqFullImage:[I

.field private mProgessBarSeqImage:[I

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

.field private mRecTimerIMG:Lcom/sec/android/glview/TwGLImage;

.field private mRecording:Z

.field public qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

.field rec_audio:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const/16 v0, 0x9

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [I

    const v1, 0x7f0a0324

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a0325

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0326

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a0327

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const v1, 0x7f0a0328

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f0a0329

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0a032a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0a032b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f0a032c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    .line 45
    const v0, 0x7f0a0323

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_SEQ_POS_Y:I

    .line 46
    new-array v0, v7, [I

    const v1, 0x7f0a031b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a031d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a031f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a0321

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_X:[I

    .line 52
    new-array v0, v7, [I

    const v1, 0x7f0a031c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a031e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a0320

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a0322

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_Y:[I

    .line 58
    const v0, 0x7f0a0319

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_WIDTH:I

    .line 59
    const v0, 0x7f0a031a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_HEIGHT:I

    .line 82
    const v0, 0x7f0a032d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_TIMER_X:I

    .line 83
    const v0, 0x7f0a032e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_TIMER_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 85
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->rec_audio:[B

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecording:Z

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMode:I

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqImage:[I

    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqFullImage:[I

    .line 120
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    .line 86
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "TwGLStoryMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->setCaptureEnabled(Z)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->setTouchHandled(Z)V

    .line 89
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMode:I

    .line 90
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setBypassTouch(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_X:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_Y:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_X:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_Y:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_X:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_POS_Y:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 96
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02048f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_TIMER_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_TIMER_Y:I

    int-to-float v3, v3

    const v4, 0x7f020479

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecTimerIMG:Lcom/sec/android/glview/TwGLImage;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecTimerIMG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecTimerIMG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v7, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v7

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->PROGRESS_BAR_SEQ_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqImage:[I

    aget v5, v5, v7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->init()V

    .line 109
    return-void

    .line 60
    nop

    :array_0
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

    .line 71
    :array_1
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

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    return p1
.end method

.method static synthetic access$208(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)I
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->setProgressBar(IZ)V

    return-void
.end method

.method private hideProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 290
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecTimerIMG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    .line 115
    return-void
.end method

.method private setProgressBar(IZ)V
    .locals 4
    .param p1, "time"    # I
    .param p2, "full"    # Z

    .prologue
    .line 299
    if-nez p2, :cond_2

    .line 301
    if-lez p1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqImage:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqFullImage:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 316
    :cond_1
    return-void

    .line 309
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v0, v1, :cond_1

    .line 310
    if-ne v0, p1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqFullImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 309
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mProgessBarSeqImage:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto :goto_1
.end method

.method private showProgressBar()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecTimerIMG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 284
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 285
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 213
    return-void
.end method

.method public clearGLView()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 206
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clearGLView()V

    .line 207
    return-void
.end method

.method public getAudio()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "getAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->rec_audio:[B

    .line 217
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->stopSoundRecording()V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 166
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->stopSoundRecording()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getPostCaptureLayoutVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 321
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 327
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getProgressingPopup()Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->getPostCaptureLayoutVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->stopSoundRecording()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMode:I

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->startSoundRecording()V

    .line 197
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMode:I

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->startSoundRecording()V

    .line 154
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 177
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->setTouchHandled(Z)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showEffectButton()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->stopSoundRecording()V

    .line 190
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->rec_audio:[B

    .line 191
    return-void
.end method

.method public saveAudio(Ljava/lang/String;)V
    .locals 3
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 219
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "saveAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 221
    const-string v0, "TwGLSoundShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while addAudio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSoundShotManualOptionDone()V

    .line 226
    :cond_1
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 228
    const-string v0, "TwGLSoundShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMode:I

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShootingModeOptions()V

    .line 231
    return-void
.end method

.method public startSoundRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 257
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "startSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecording:Z

    if-ne v0, v3, :cond_0

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 262
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->startRecorder()V

    .line 266
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecording:Z

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->updateAudioRecordIndicator(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->updateRecordingAmplevel()V

    .line 272
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->showProgressBar()V

    goto :goto_0
.end method

.method public stopSoundRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "stopSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecording:Z

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 238
    const-string v0, "TwGLSoundShotMenu"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->stopRecorder()V

    .line 242
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mRecording:Z

    .line 243
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    .line 244
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z

    .line 245
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->RecordedTime:I

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mFull:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->setProgressBar(IZ)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->updateAudioRecordIndicator(Z)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->hideProgressBar()V

    goto :goto_0
.end method

.method public updateRecordingAmplevel()V
    .locals 4

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotMenu;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    :cond_0
    return-void
.end method
