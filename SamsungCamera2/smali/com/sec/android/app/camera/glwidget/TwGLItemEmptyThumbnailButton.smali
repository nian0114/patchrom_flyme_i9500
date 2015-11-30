.class public Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemEmptyThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLItemEmptyThumbnailButton"

.field private static final THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButton:Lcom/sec/android/glview/TwGLSelectButton;

.field private mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0a01cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 37
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    .line 38
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 39
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 42
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->refreshButton()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 10

    .prologue
    const/16 v2, 0x1f40

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 123
    .local v8, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 125
    :cond_0
    if-nez v8, :cond_1

    .line 126
    const-string v0, "TwGLItemEmptyThumbnailButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x41a

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    if-lt v0, v2, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_4

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-nez v0, :cond_4

    .line 133
    new-instance v0, Lcom/sec/android/glview/TwGLSurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLSurfaceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-nez v0, :cond_5

    .line 139
    new-instance v0, Lcom/sec/android/glview/TwGLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v2, v9

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_7

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 151
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto/16 :goto_0

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLSelectButton;->clear()V

    .line 60
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLSurfaceTexture;->clear()V

    .line 64
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    .line 66
    :cond_3
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 67
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public setMargin(I)V
    .locals 4
    .param p1, "margin"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 81
    return-void
.end method

.method public setMargin(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    int-to-float v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 95
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLSelectButton;->setMute(Z)V

    .line 226
    :cond_0
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 175
    if-nez p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 189
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto :goto_0
.end method

.method public setPaddings(I)V
    .locals 4
    .param p1, "padding"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->setSize(FF)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setSize(FF)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 107
    :cond_1
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->setSize(FF)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setSize(FF)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 119
    :cond_1
    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->setSize(FF)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLSelectButton;->setSize(FF)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemEmptyThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 219
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
