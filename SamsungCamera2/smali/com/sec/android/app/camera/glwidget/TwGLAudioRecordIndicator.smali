.class public Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAudioRecordIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;
    }
.end annotation


# static fields
.field private static final INDICATOR_EQBAR_BAND_POS_X:[I

.field private static final INDICATOR_EQBAR_GROUP_PADDING:I

.field private static final INDICATOR_EQBAR_GROUP_POS_X:[I

.field private static final INDICATOR_EQBAR_GROUP_POS_Y:[I

.field private static final INDICATOR_EQBAR_HEIGHT:I

.field private static final INDICATOR_EQBAR_MIC_X:I

.field private static final INDICATOR_EQBAR_MIC_Y:I

.field private static final INDICATOR_EQBAR_WIDTH:I

.field private static final INDICATOR_EQBAR_Y:I

.field private static final NUM_OF_EQBAR:I = 0x8

.field private static final SETTING_MENU_PADDING:I

.field private static final SOUNDSHOT_EQBAR_PADDING_X:I

.field private static final SOUNDSHOT_EQBAR_PADDING_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLAudioRecordIndicator"


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

.field private mEqValueArray:[I

.field private mMicImageArray:[I

.field private mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

.field private mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const v0, 0x7f0a00ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_X:I

    .line 23
    const v0, 0x7f0a00ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_Y:I

    .line 24
    const v0, 0x7f0a00dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_Y:I

    .line 25
    const v0, 0x7f0a0014

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_PADDING:I

    .line 26
    sput v3, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SETTING_MENU_PADDING:I

    .line 27
    sput v3, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SOUNDSHOT_EQBAR_PADDING_Y:I

    .line 28
    sput v3, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SOUNDSHOT_EQBAR_PADDING_X:I

    .line 30
    new-array v0, v7, [I

    const v1, 0x7f0a00d5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SETTING_MENU_PADDING:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SOUNDSHOT_EQBAR_PADDING_X:I

    sub-int/2addr v1, v2

    aput v1, v0, v3

    const v1, 0x7f0a00d7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a00d9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SETTING_MENU_PADDING:I

    add-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SOUNDSHOT_EQBAR_PADDING_X:I

    sub-int/2addr v1, v2

    aput v1, v0, v5

    const v1, 0x7f0a00db

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    .line 37
    new-array v0, v7, [I

    const v1, 0x7f0a00d6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SOUNDSHOT_EQBAR_PADDING_Y:I

    add-int/2addr v1, v2

    aput v1, v0, v3

    const v1, 0x7f0a00d8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a00da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->SOUNDSHOT_EQBAR_PADDING_Y:I

    add-int/2addr v1, v2

    aput v1, v0, v5

    const v1, 0x7f0a00dc

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    .line 44
    const v0, 0x7f0a00de

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_WIDTH:I

    .line 45
    const v0, 0x7f0a00df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_HEIGHT:I

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [I

    const v1, 0x7f0a00e5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a00e6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0a00e7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0a00e8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const v1, 0x7f0a00e9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f0a00ea

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0a00eb

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0a00ec

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_BAND_POS_X:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 12
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mEqValueArray:[I

    .line 68
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mMicImageArray:[I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    .line 88
    const-string v0, "TwGLAudioRecordIndicator"

    const-string v1, "TwGLAudioRecordIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v7

    int-to-float v2, v1

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v1, v1, v7

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v8

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v9

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v10

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v2, v2, v10

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 97
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020489

    invoke-direct {v0, p1, v11, v11, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 100
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_Y:I

    int-to-float v2, v2

    const v3, 0x7f020468

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_BAND_POS_X:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_Y:I

    int-to-float v3, v3

    const v4, 0x7f020483

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x7f020483
        0x7f020484
        0x7f020485
        0x7f020486
        0x7f020487
        0x7f020488
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0x7f020468
        0x7f020469
    .end array-data
.end method

.method private StartMicAnimation()V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->StopMicAnimation()V

    .line 120
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 122
    return-void
.end method

.method private StopMicAnimation()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mMicImageArray:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "TwGLAudioRecordIndicator"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->StopMicAnimation()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    .line 174
    :cond_0
    return-void
.end method

.method public setRecoring()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "TwGLAudioRecordIndicator"

    const-string v1, "setRecoring"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->StartMicAnimation()V

    .line 136
    return-void
.end method

.method public setRecoringAmplitude([I)V
    .locals 5
    .param p1, "MicAmplitude"    # [I

    .prologue
    const/4 v4, 0x5

    .line 140
    const/16 v2, 0x8

    new-array v0, v2, [I

    .line 141
    .local v0, "EqBandLevel":[I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 164
    :cond_0
    return-void

    .line 145
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 151
    aget v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 153
    aget v2, v0, v1

    if-le v2, v4, :cond_3

    .line 154
    aput v4, v0, v1

    .line 149
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mEqValueArray:[I

    aget v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
