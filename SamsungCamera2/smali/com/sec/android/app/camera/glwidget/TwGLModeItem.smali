.class public Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLModeItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeItem$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;,
        Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;
    }
.end annotation


# static fields
.field private static final MODE_ITEM_SHADOW_HEIGHT:I

.field private static final MODE_ITEM_USE_HOVER2_RES:Z

.field private static final MODE_ITEM_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLModeItem"

.field private static final TEXT_STROKE_COLOR:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TITLE_BG_BOTTOM_POS_Y:F

.field private static final TITLE_BG_HEIGHT:I

.field private static final TITLE_BG_POS_X:F

.field private static final TITLE_BG_TOP_POS_Y:F

.field private static final TITLE_BG_WIDTH:I

.field private static final TITLE_BOTTOM:I = 0x0

.field private static final TITLE_FONT_SIZE:I

.field private static final TITLE_TEXT_SHADOW_OFFSET:I

.field private static final TITLE_TOP:I = 0x1

.field public static final TYPE_GRID:I = -0x5

.field public static final TYPE_NONE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mHighlightImage:Lcom/sec/android/glview/TwGLImage;

.field private mIsBackCamera:Z

.field private mIsSelected:Z

.field protected mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

.field private mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

.field private mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitlePosition:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    .line 25
    const v1, 0x7f0a005b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->MODE_ITEM_WIDTH:I

    .line 26
    const v1, 0x7f0a0092

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_WIDTH:I

    .line 27
    const v1, 0x7f0a0093

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_HEIGHT:I

    .line 28
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->MODE_ITEM_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_POS_X:F

    .line 29
    const v1, 0x7f0a0094

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_TOP_POS_Y:F

    .line 30
    const v1, 0x7f0a0095

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    .line 32
    const v1, 0x7f0b0048

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_FONT_SIZE:I

    .line 33
    const v1, 0x7f0b0024

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_TEXT_SHADOW_OFFSET:I

    .line 35
    const v1, 0x7f0b0006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->MODE_ITEM_USE_HOVER2_RES:Z

    .line 36
    const v0, 0x7f0a0096

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->MODE_ITEM_SHADOW_HEIGHT:I

    .line 38
    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TEXT_STROKE_WIDTH:I

    .line 39
    const v0, 0x7f090001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TEXT_STROKE_COLOR:I

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 54
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitlePosition:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mType:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsBackCamera:Z

    .line 62
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsSelected:Z

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 72
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 75
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 76
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->initContent()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8, "type"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitlePosition:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mType:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsBackCamera:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsSelected:Z

    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 85
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsBackCamera:Z

    .line 92
    :cond_0
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 93
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 95
    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mType:I

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setAsyncLoad(Z)V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->initContent()V

    .line 101
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 102
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;Lcom/sec/android/app/camera/glwidget/TwGLModeItem$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$LoadItemAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/glview/TwGLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeItem;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method private initContent()V
    .locals 10

    .prologue
    .line 106
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getHeight()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->MODE_ITEM_SHADOW_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->MODE_ITEM_USE_HOVER2_RES:Z

    iput-boolean v1, v0, Lcom/sec/android/glview/TwGLButton;->mUseHover2Res:Z

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 112
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_TOP_POS_Y:F

    const v4, 0x7f02042e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    const v4, 0x7f02042d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBypassTouch(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    const v7, 0x7f020434

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setExtraDescription(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setObjectTag(I)V

    .line 138
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 174
    return-void
.end method

.method public getButton()Lcom/sec/android/glview/TwGLButton;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public isHighlight()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 217
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsSelected:Z

    .line 223
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 221
    const/4 v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTitleToBottom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitlePosition:I

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitlePosition:I

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    goto :goto_0
.end method

.method public moveTitleToTop()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 148
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitlePosition:I

    if-ne v0, v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitlePosition:I

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(IZ)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->TITLE_BG_TOP_POS_Y:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FFZ)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "TwGLModeItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;->onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 185
    :cond_0
    const/4 v0, 0x1

    .line 187
    :cond_1
    return v0
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    move-object v0, p2

    .line 257
    .local v0, "ev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    .line 258
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p0, v0}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 274
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 263
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_1

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setHighlightImage(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public setModeItemSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setOnSelectListener(Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;

    .line 233
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 242
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 243
    return-void
.end method

.method public setSelect(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsSelected:Z

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mHighlightImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 207
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->mIsSelected:Z

    goto :goto_0
.end method
