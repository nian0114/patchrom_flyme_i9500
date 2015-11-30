.class public Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLProgressingPopup.java"


# static fields
.field private static final POPUP_HEIGHT:I

.field private static final POPUP_PORTRAIT_POS_X:I

.field private static final POPUP_PORTRAIT_POS_Y:I

.field private static final POPUP_POS_X:I

.field private static final POPUP_POS_Y:I

.field private static final POPUP_WIDTH:I

.field private static final PROGRESSING_BAR_HEIGHT:I

.field private static final PROGRESSING_BAR_TOP_PADDING:I

.field private static final PROGRESSING_ITEM_LEFT_PADDING:I

.field private static final PROGRESSING_TITLE_COLOR:I

.field private static final PROGRESSING_TITLE_HEIGHT:I

.field private static final PROGRESSING_TITLE_SIZE:F

.field private static final PROGRESSING_TITLE_TOP_PADDING:I


# instance fields
.field private mMenuID:I

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mSideMenuHidden:Z

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0a038f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    .line 37
    const v0, 0x7f0a0390

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    .line 38
    const v0, 0x7f0a0391

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    .line 39
    const v0, 0x7f0a0392

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    .line 40
    const v0, 0x7f0a0393

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    .line 41
    const v0, 0x7f0a0394

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    .line 42
    const v0, 0x7f0a0395

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    .line 43
    const v0, 0x7f0a0396

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    .line 44
    const v0, 0x7f0a0397

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    .line 45
    const v0, 0x7f0b006d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_SIZE:F

    .line 46
    const v0, 0x7f090016

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_COLOR:I

    .line 47
    const v0, 0x7f0a0398

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_TOP_PADDING:I

    .line 48
    const v0, 0x7f0a0399

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Ljava/lang/String;)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "titleText"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 60
    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 57
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    .line 61
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuID:I

    .line 62
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 63
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->title:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->init()V

    .line 65
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_PORTRAIT_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->title:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 85
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_TOP_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_TITLE_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->POPUP_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_ITEM_LEFT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->PROGRESSING_BAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0204d0

    const v7, 0x7f0204d1

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 92
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setCaptureEnabled(Z)V

    .line 93
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setTouchHandled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 96
    return-void
.end method


# virtual methods
.method public getPostCaptureLayoutVisibility()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPostCaptureProgressMax()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 113
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 174
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 176
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mTwGLCameraBaseIndicator:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->resetAcquisitionProgress()V

    .line 194
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->reset()V

    .line 198
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 100
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 101
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->hidePostCaptureLayout()V

    .line 185
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setTouchHandled(Z)V

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    .line 121
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .param p1, "nProgress"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 127
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mSideMenuHidden:Z

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->setTouchHandled(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuItems()V

    .line 134
    :cond_0
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 138
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 142
    return-void
.end method

.method public setRederingProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mProgressingBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 162
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLProgressingPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 154
    return-void
.end method
