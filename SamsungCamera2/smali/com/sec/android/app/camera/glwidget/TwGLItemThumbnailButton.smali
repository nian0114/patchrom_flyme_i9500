.class public Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final BUTTON_BUTTON_MARGIN:I

.field private static final BUTTON_HIGHLIGHT_MARGIN:I

.field private static final BUTTON_HIGHLIGHT_POS_X:I

.field private static final TAG:Ljava/lang/String; = "TwGLItemThumbnailButton"

.field private static final THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

.field private static final THUMBNAIL_TYPE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButton:Lcom/sec/android/glview/TwGLSelectButton;

.field private mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0a01cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    .line 26
    const v0, 0x7f0a01cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    .line 27
    const v0, 0x7f0a01cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    .line 28
    const v0, 0x7f0a01d4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_BUTTON_MARGIN:I

    .line 29
    const v0, 0x7f0a01d5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_MARGIN:I

    .line 30
    const v0, 0x7f0a01d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_POS_X:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 43
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    .line 44
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 45
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 48
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLSelectButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLNinePatch;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/app/camera/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 12

    .prologue
    const/16 v7, 0x41a

    const/16 v6, 0x3e8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 171
    .local v8, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v8

    .line 173
    :cond_0
    if-nez v8, :cond_2

    .line 174
    const-string v0, "TwGLItemThumbnailButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 178
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    if-lt v0, v6, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    if-lt v0, v7, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    const/16 v1, 0x1f40

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_5

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-nez v0, :cond_5

    .line 181
    new-instance v0, Lcom/sec/android/glview/TwGLSurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLSurfaceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 183
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setVisibility(I)V

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-nez v0, :cond_6

    .line 188
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    if-lt v0, v6, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    if-ge v0, v7, :cond_7

    .line 189
    new-instance v0, Lcom/sec/android/glview/TwGLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f0203cc

    move v2, v10

    move v3, v10

    move v5, v9

    move v6, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 190
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setObjectTag(I)V

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLSelectButton;->setRotatable(Z)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLSelectButton;->setCenterPivot(Z)V

    .line 201
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_POS_X:I

    neg-int v2, v2

    int-to-float v2, v2

    const v3, 0x7f0203ce

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLNinePatch;->setBypassTouch(Z)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 217
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto/16 :goto_0

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    new-instance v0, Lcom/sec/android/glview/TwGLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f0203cc

    move v2, v10

    move v3, v10

    move v5, v9

    move v6, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalFilterName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 195
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLSelectButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v8, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    move v2, v10

    move v3, v10

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 196
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setObjectTag(I)V

    goto/16 :goto_1

    .line 213
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 62
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLSelectButton;->clear()V

    .line 66
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLSurfaceTexture;->clear()V

    .line 70
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    .line 72
    :cond_3
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 73
    return-void
.end method

.method public getButton()Lcom/sec/android/glview/TwGLSelectButton;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLSelectButton;->getSelected()Z

    move-result v0

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method public setExtraDescription(Z)V
    .locals 1
    .param p1, "hasExtraDescription"    # Z

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setExtraDescription(Z)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLSelectButton;->setExtraDescription(Z)V

    .line 370
    :cond_0
    return-void
.end method

.method public setMargin(I)V
    .locals 4
    .param p1, "margin"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 115
    return-void
.end method

.method public setMargin(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    add-float/2addr v1, v2

    int-to-float v2, p3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    int-to-float v3, p4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 133
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLSelectButton;->setMute(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 288
    if-nez p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 317
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto :goto_0
.end method

.method public setPaddings(I)V
    .locals 4
    .param p1, "padding"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->setSize(FF)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setSize(FF)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 150
    :cond_2
    return-void
.end method

.method public setPaddings(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->setSize(FF)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->moveLayoutAbsolute(FF)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setSize(FF)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->moveLayoutAbsolute(FF)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v1

    int-to-float v2, p1

    sub-float/2addr v1, v2

    int-to-float v2, p3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v2

    int-to-float v3, p2

    sub-float/2addr v2, v3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 167
    :cond_2
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLSelectButton;->setResourceOffset(FF)Z

    .line 96
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mPreview:Lcom/sec/android/glview/TwGLSurfaceTexture;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_MARGIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->THUMBNAIL_PREVIEW_TYPE_BUTTON_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSurfaceTexture;->setSize(FF)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_BUTTON_MARGIN:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_BUTTON_MARGIN:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setSize(FF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonHighlight:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_MARGIN:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->BUTTON_HIGHLIGHT_MARGIN:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 348
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLSelectButton;->setSubTitle(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setTitle(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->mButton:Lcom/sec/android/glview/TwGLSelectButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLSelectButton;->setTitle(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
