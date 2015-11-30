.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEasyCameraModeItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;
    }
.end annotation


# static fields
.field private static final MODE_ITEM_SHADOW_HEIGHT:I

.field private static final MODE_ITEM_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLEasyCameraModeItem"

.field private static final TITLE_BG_BOTTOM_POS_Y:F

.field private static final TITLE_BG_HEIGHT:I

.field private static final TITLE_BG_POS_X:F

.field private static final TITLE_BG_TOP_POS_Y:F

.field private static final TITLE_BG_WIDTH:I

.field private static final TITLE_FONT_SIZE:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field protected mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;

.field private mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

.field private mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

.field private mTitle:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 23
    const v0, 0x7f0a0247

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->MODE_ITEM_WIDTH:I

    .line 24
    const v0, 0x7f0a024d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_WIDTH:I

    .line 25
    const v0, 0x7f0a024e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_HEIGHT:I

    .line 26
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->MODE_ITEM_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_POS_X:F

    .line 27
    const v0, 0x7f0a024f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_TOP_POS_Y:F

    .line 28
    const v0, 0x7f0a0250

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    .line 29
    const v0, 0x7f0b0053

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_FONT_SIZE:I

    .line 30
    const v0, 0x7f0a0096

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->MODE_ITEM_SHADOW_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;

    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 56
    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 57
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->initContent()V

    .line 60
    return-void
.end method

.method private initContent()V
    .locals 10

    .prologue
    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getHeight()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->MODE_ITEM_SHADOW_HEIGHT:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 68
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_TOP_POS_Y:F

    const v4, 0x7f02042e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 72
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    const v4, 0x7f02042d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTextBackgroundBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_BOTTOM_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_BG_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->TITLE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setBypassTouch(Z)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 79
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    const v7, 0x7f020434

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setExtraDescription(Z)V

    .line 90
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 99
    return-void
.end method

.method public getButton()Lcom/sec/android/glview/TwGLButton;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method public isSelected()Z
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "TwGLEasyCameraModeItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;->onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 113
    :cond_1
    return v0
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 141
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
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public setOnSelectListener(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->mOnSelectListener:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;

    .line 137
    return-void
.end method
