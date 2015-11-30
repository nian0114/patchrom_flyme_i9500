.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final BASEMENU_LEFT_MARGIN:I

.field private static final BASEMENU_TOP_MARGIN:I

.field private static final FLASH_BUTTON_POS_X:I

.field private static final FLASH_BUTTON_POS_Y:I

.field private static final GROUP_PLAY_BUTTON:I = 0x0

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final MODE_BUTTON_POS_X:I

.field private static final MODE_BUTTON_POS_Y:I

.field private static final RECORDING_BUTTON_POS_X:I

.field private static final RECORDING_BUTTON_POS_Y:I

.field private static final RIGHT_SIDE_BUTTON_HEIGHT:I

.field private static final RIGHT_SIDE_BUTTON_MARGIN:I

.field private static final RIGHT_SIDE_BUTTON_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTER_BUTTON_HEIGHT:I

.field private static final SHUTTER_BUTTON_ICON_HEIGHT:I

.field private static final SHUTTER_BUTTON_ICON_POS_X:I

.field private static final SHUTTER_BUTTON_ICON_POS_Y:I

.field private static final SHUTTER_BUTTON_ICON_WIDTH:I

.field private static final SHUTTER_BUTTON_POS_X:I

.field private static final SHUTTER_BUTTON_POS_Y:I

.field protected static final TAG:Ljava/lang/String; = "TwGLEasyCameraBaseMenu"

.field private static final THUMBNAIL_BUTTON_POS_X:I

.field private static final THUMBNAIL_BUTTON_POS_Y:I


# instance fields
.field private mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

.field public mEasyCameraEnterKeyReleased:Z

.field private mFlashModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mModeTextDimImageResId:I

.field private mModeTextImage:Lcom/sec/android/glview/TwGLButton;

.field private mModeTextImageResId:I

.field private mRecordingButton:Lcom/sec/android/glview/TwGLButton;

.field private mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterButton:Lcom/sec/android/glview/TwGLButton;

.field private mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShutterIcon:Lcom/sec/android/glview/TwGLButton;

.field private mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_WIDTH:I

    .line 51
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_HEIGHT:I

    .line 53
    const v0, 0x7f0a0212

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_WIDTH:I

    .line 54
    const v0, 0x7f0a0213

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_HEIGHT:I

    .line 55
    const v0, 0x7f0a0218

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_MARGIN:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0a0219

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    .line 57
    const v0, 0x7f0a0217

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    .line 59
    const v0, 0x7f0a0216

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_HEIGHT:I

    .line 60
    const v0, 0x7f0a0214

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_WIDTH:I

    .line 61
    const v0, 0x7f0a0215

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_HEIGHT:I

    .line 62
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    .line 63
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    .line 64
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_X:I

    .line 65
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_Y:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_X:I

    .line 68
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RIGHT_SIDE_BUTTON_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_Y:I

    .line 70
    const v0, 0x7f0a0224

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_LEFT_MARGIN:I

    .line 71
    const v0, 0x7f0a0223

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_TOP_MARGIN:I

    .line 72
    const v0, 0x7f0a0225

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_X:I

    .line 73
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_TOP_MARGIN:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_Y:I

    .line 75
    const v0, 0x7f0a0210

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_WIDTH:I

    .line 76
    const v0, 0x7f0a0211

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_HEIGHT:I

    .line 78
    const v0, 0x7f0a0227

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    .line 79
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f0a0242

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0a0226

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 97
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 98
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    .line 100
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mEasyCameraEnterKeyReleased:Z

    .line 107
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mVisibility:Z

    .line 109
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setCaptureEnabled(Z)V

    .line 110
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setTouchHandled(Z)V

    .line 111
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->init(Lcom/sec/android/glview/TwGLViewGroup;I)V

    .line 112
    return-void
.end method

.method private init(Lcom/sec/android/glview/TwGLViewGroup;I)V
    .locals 18
    .param p1, "parent"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "viewId"    # I

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    .line 116
    const-string v1, "TwGLEasyCameraBaseMenu"

    const-string v2, "mActivityContext is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 120
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02031f

    const v6, 0x7f020321

    const v7, 0x7f020321

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 133
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->SHUTTER_BUTTON_ICON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f020322

    const/4 v6, 0x0

    const v7, 0x7f020323

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->RECORDING_BUTTON_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02031b

    const v6, 0x7f02031d

    const v7, 0x7f02031c

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 161
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f020325

    const v6, 0x7f020326

    const v7, 0x7f020326

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->MODE_BUTTON_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->getCurrentLocaleModeText()V

    .line 174
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setBypassTouch(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->moveBaseLayoutAbsolute(FFZ)V

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImage:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 189
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_LEFT_MARGIN:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->BASEMENU_TOP_MARGIN:I

    int-to-float v4, v4

    const v5, 0x7f0203a1

    const v6, 0x7f0203a3

    const v7, 0x7f0203a2

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 198
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xbc4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v17

    .line 206
    .local v17, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xbc4

    aput v3, v1, v2

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 207
    .local v7, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v1, 0xbc4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->getZorder()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    .line 209
    .local v8, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->FLASH_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->ITEM_HEIGHT:I

    int-to-float v6, v6

    const/4 v9, 0x5

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mFlashModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 215
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    .line 219
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setTag(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setClipping(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 228
    :goto_3
    new-instance v9, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v12, v1

    const v13, 0x7f0203a4

    const v14, 0x7f0203a4

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 240
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mFlashModeButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mReturnGroupPlayButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 257
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->hideThumbnailButton()V

    .line 265
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    goto/16 :goto_0

    .line 196
    .end local v7    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v8    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v17    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0114

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    .restart local v7    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v8    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v17    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_5
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->THUMBNAIL_BUTTON_POS_Y:I

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    goto/16 :goto_2

    .line 226
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    goto/16 :goto_3

    .line 259
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_3

    .line 263
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setThumbnailButtonDimmed(Z)V

    goto/16 :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mEasyCameraEnterKeyReleased:Z

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 277
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 278
    return-void
.end method

.method public getCurrentLocaleModeText()V
    .locals 6

    .prologue
    const v5, 0x7f02038e

    const v4, 0x7f02038d

    const v3, 0x7f02034a

    const v2, 0x7f020349

    .line 396
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "currentLanguage":Ljava/lang/String;
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 399
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    .line 401
    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const v1, 0x7f020337

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 403
    const v1, 0x7f020338

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    const v1, 0x7f02033d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 407
    const v1, 0x7f02033e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 409
    :cond_2
    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 410
    :cond_3
    const v1, 0x7f020339

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 411
    const v1, 0x7f02033a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 413
    :cond_4
    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 414
    :cond_5
    const v1, 0x7f02033f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 415
    const v1, 0x7f020340

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 417
    :cond_6
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 418
    :cond_7
    const v1, 0x7f020343

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 419
    const v1, 0x7f020344

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto :goto_0

    .line 421
    :cond_8
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 422
    const v1, 0x7f020345

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 423
    const v1, 0x7f020346

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 425
    :cond_9
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 426
    :cond_a
    const v1, 0x7f020355

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 427
    const v1, 0x7f020356

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 429
    :cond_b
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 430
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 431
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 433
    :cond_c
    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 434
    const v1, 0x7f02034b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 435
    const v1, 0x7f02034c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 437
    :cond_d
    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 438
    const v1, 0x7f02033b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 439
    const v1, 0x7f02033c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 441
    :cond_e
    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 442
    const v1, 0x7f02034d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 443
    const v1, 0x7f02034e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 445
    :cond_f
    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 446
    const v1, 0x7f02034f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 447
    const v1, 0x7f020350

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 449
    :cond_10
    const-string v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 450
    const v1, 0x7f020367

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 451
    const v1, 0x7f020368

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 453
    :cond_11
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 454
    :cond_12
    const v1, 0x7f020351

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 455
    const v1, 0x7f020352

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 457
    :cond_13
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 458
    const v1, 0x7f020359

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 459
    const v1, 0x7f02035a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 461
    :cond_14
    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 462
    const v1, 0x7f02035d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 463
    const v1, 0x7f02035e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 465
    :cond_15
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 466
    :cond_16
    const v1, 0x7f02035f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 467
    const v1, 0x7f020360

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 469
    :cond_17
    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 470
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 471
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 473
    :cond_18
    const-string v1, "hy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 474
    const v1, 0x7f020335

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 475
    const v1, 0x7f020336

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 477
    :cond_19
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 478
    const v1, 0x7f020369

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 479
    const v1, 0x7f02036a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 481
    :cond_1a
    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 482
    const v1, 0x7f020353

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 483
    const v1, 0x7f020354

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 485
    :cond_1b
    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 486
    const v1, 0x7f02036f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 487
    const v1, 0x7f020370

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 489
    :cond_1c
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 490
    const v1, 0x7f02036b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 491
    const v1, 0x7f02036c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 493
    :cond_1d
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 494
    const v1, 0x7f020371

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 495
    const v1, 0x7f020372

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 497
    :cond_1e
    const-string v1, "lo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 498
    const v1, 0x7f020373

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 499
    const v1, 0x7f020374

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 501
    :cond_1f
    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 502
    const v1, 0x7f020377

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 503
    const v1, 0x7f020378

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 505
    :cond_20
    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 506
    const v1, 0x7f020375

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    goto/16 :goto_0

    .line 509
    :cond_21
    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 510
    const v1, 0x7f020379

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 511
    const v1, 0x7f02037a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 513
    :cond_22
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 514
    const v1, 0x7f02037d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 515
    const v1, 0x7f02037e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 517
    :cond_23
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 518
    :cond_24
    const v1, 0x7f02037b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 519
    const v1, 0x7f02037c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 521
    :cond_25
    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 522
    const v1, 0x7f020381

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 523
    const v1, 0x7f020382

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 525
    :cond_26
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 526
    const v1, 0x7f020347

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 527
    const v1, 0x7f020348

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 529
    :cond_27
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 530
    const v1, 0x7f020385

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 531
    const v1, 0x7f020386

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 533
    :cond_28
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 534
    const v1, 0x7f020389

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 535
    const v1, 0x7f02038a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 537
    :cond_29
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 538
    const v1, 0x7f020387

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 539
    const v1, 0x7f020388

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 541
    :cond_2a
    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 542
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 543
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 545
    :cond_2b
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 546
    const v1, 0x7f02038f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 547
    const v1, 0x7f020390

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 548
    :cond_2c
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 549
    const v1, 0x7f020393

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 550
    const v1, 0x7f020394

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 552
    :cond_2d
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 553
    const v1, 0x7f020395

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 554
    const v1, 0x7f020396

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 556
    :cond_2e
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 557
    const v1, 0x7f020397

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 558
    const v1, 0x7f020398

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 560
    :cond_2f
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 561
    const v1, 0x7f02039d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 562
    const v1, 0x7f02039e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 564
    :cond_30
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 565
    const v1, 0x7f020341

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 566
    const v1, 0x7f020342

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 568
    :cond_31
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 569
    :cond_32
    const v1, 0x7f020333

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 570
    const v1, 0x7f020334

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 572
    :cond_33
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 573
    const v1, 0x7f020357

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 574
    const v1, 0x7f020358

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 576
    :cond_34
    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 577
    const v1, 0x7f02035b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 578
    const v1, 0x7f02035c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 580
    :cond_35
    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 581
    const v1, 0x7f020361

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 582
    const v1, 0x7f020362

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 584
    :cond_36
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 585
    const v1, 0x7f020363

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 586
    const v1, 0x7f020364

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 588
    :cond_37
    const-string v1, "ig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 589
    const v1, 0x7f020365

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 590
    const v1, 0x7f020366

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 592
    :cond_38
    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 593
    const v1, 0x7f02036d

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 594
    const v1, 0x7f02036e

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 596
    :cond_39
    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 597
    const v1, 0x7f02038b

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 598
    const v1, 0x7f02038c

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 600
    :cond_3a
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 601
    const v1, 0x7f020391

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 602
    const v1, 0x7f020392

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 604
    :cond_3b
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 605
    const v1, 0x7f020399

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 606
    const v1, 0x7f02039a

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    .line 608
    :cond_3c
    const-string v1, "yo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const v1, 0x7f02039f

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextImageResId:I

    .line 610
    const v1, 0x7f0203a0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0
.end method

.method public getEasyCameraEnterKeyState()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mEasyCameraEnterKeyReleased:Z

    return v0
.end method

.method public hideBaseMenu()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 809
    :cond_0
    return-void
.end method

.method public hideRecordingButton()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 817
    return-void
.end method

.method public hideShootingModeButton()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 827
    return-void
.end method

.method public hideShutterButton()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 835
    return-void
.end method

.method public hideThumbnailButton()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 848
    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 779
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 4
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    const/4 v3, 0x1

    .line 889
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    const-string v0, "TwGLEasyCameraBaseMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 902
    :sswitch_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    .line 911
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    .line 895
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastHoverView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastHoverView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    goto :goto_0

    .line 927
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyFaceMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 928
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    .line 930
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->setLiveBeautyMode(Z)V

    goto :goto_0

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6c -> :sswitch_1
        0x76 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/16 v7, 0xcb

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 678
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_0

    .line 679
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "mActivityContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :goto_0
    return v2

    .line 683
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    const/16 v5, 0x41

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    const/16 v5, 0x1d

    if-eq v4, v5, :cond_1

    .line 684
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 687
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return isCapturing.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 693
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return isStartPreview.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 698
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return getIsLaunchGallery.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 702
    :cond_4
    const-string v4, "TwGLEasyCameraBaseMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, 0x0

    .line 705
    .local v1, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    .line 739
    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 740
    const-string v3, "TwGLEasyCameraBaseMenu"

    const-string v4, "return isPrepareRecording.."

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 707
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onCameraModeChangeSelected()V

    .line 708
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 709
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    :goto_1
    move v2, v3

    .line 713
    goto/16 :goto_0

    .line 711
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mCameraModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0113

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 716
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 717
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->noImageToastPopup()V

    move v2, v3

    .line 718
    goto/16 :goto_0

    .line 721
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 722
    const-string v2, "TwGLEasyCameraBaseMenu"

    const-string v4, "Attach = group-play"

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 724
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "filepathlist"

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getFileListForGroupPlay()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 725
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 726
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->finish()V

    move v2, v3

    .line 727
    goto/16 :goto_0

    .line 729
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->noImage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 730
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->noImageToastPopup()V

    .line 734
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 735
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_8
    move v2, v3

    .line 737
    goto/16 :goto_0

    .line 732
    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v4, "quickview"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGalleryForImage(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 743
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 744
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 746
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    if-ne v2, v7, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    if-ne v2, v3, :cond_c

    .line 747
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    .line 749
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    .line 753
    if-eqz v1, :cond_d

    .line 754
    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    .line 755
    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    if-ne v2, v7, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    if-ne v2, v3, :cond_e

    .line 756
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep2()V

    :cond_e
    move v2, v3

    .line 758
    goto/16 :goto_0

    .line 705
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1d -> :sswitch_2
        0x24 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 616
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_3

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 634
    :cond_1
    :goto_0
    return v0

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 634
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 639
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 641
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 642
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 643
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 648
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 652
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_4
    move v0, v1

    .line 660
    goto :goto_0

    .line 661
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_6

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideZoomMenu()V

    .line 668
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideExposureValueMenu()V

    .line 670
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x82

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v0, v1

    .line 671
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 782
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mEasyCameraEnterKeyReleased:Z

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->removeUptateMessage()V

    .line 784
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mEasyCameraEnterKeyReleased:Z

    .line 785
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x82

    const/16 v5, 0x1b

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 317
    instance-of v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 361
    goto :goto_0

    .line 331
    :pswitch_1
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "onTouch MotionEvent.ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 335
    :pswitch_2
    const-string v0, "TwGLEasyCameraBaseMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch MotionEvent.ACTION_UP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_2
    move v0, v1

    .line 340
    goto :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v5, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 345
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 348
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 349
    goto/16 :goto_0

    .line 352
    :cond_4
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "return isCapturing.."

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 353
    goto/16 :goto_0

    .line 356
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    goto/16 :goto_1

    .line 362
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_3
    :pswitch_4
    move v0, v1

    .line 390
    goto/16 :goto_0

    .line 370
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/Camera;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    .line 373
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 374
    const-string v0, "TwGLEasyCameraBaseMenu"

    const-string v2, "return isRecording.."

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 375
    goto/16 :goto_0

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_9

    .line 378
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 381
    goto/16 :goto_0

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/app/camera/Camera;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 368
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public setEasyCameraBaseMenuRequestFocus()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 872
    :cond_0
    return-void
.end method

.method public setEasyCameraEnterKeyState(Z)V
    .locals 0
    .param p1, "EasyCameraHardKey"    # Z

    .prologue
    .line 861
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mEasyCameraEnterKeyReleased:Z

    .line 862
    return-void
.end method

.method public setLiveBeautyMode(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .prologue
    .line 874
    if-eqz p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    .line 887
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onBeautyFaceModeMenuSelect(I)V

    goto :goto_0
.end method

.method public setThumbnailButtonDimmed(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->lockButton(Z)V

    .line 854
    :cond_0
    return-void
.end method

.method public showBaseMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    .line 804
    :cond_2
    return-void
.end method

.method public showRecordingButton()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mRecordingButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 813
    return-void
.end method

.method public showShootingModeButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mModeGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterIcon:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 822
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mShutterButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 831
    return-void
.end method

.method public showThumbnailButton()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->enterSecureMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 844
    :cond_1
    :goto_0
    return-void

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateEmptyButton()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->updateEmptyButton()V

    .line 296
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update()V

    goto :goto_0
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bAnimation"    # Z

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public updateThumbnailButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 791
    :cond_0
    return-void
.end method

.method public updateThumbnailButton(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bAnimation"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Ljava/lang/String;Z)V

    .line 314
    :cond_0
    return-void
.end method
