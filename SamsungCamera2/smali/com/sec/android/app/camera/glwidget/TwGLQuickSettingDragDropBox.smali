.class public Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
.super Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.source "TwGLQuickSettingDragDropBox.java"


# static fields
.field private static final BG_POS_X:I

.field private static final BG_POS_Y:I

.field private static final RELOCATEITEM_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

.field private mNormalBG:Lcom/sec/android/glview/TwGLImage;

.field private mPressedBG:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0a0010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    .line 39
    const v0, 0x7f0a0011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 6
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v5, 0x4

    .line 48
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 51
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 53
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02006a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 54
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02006b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setClipping(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FF)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 67
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 69
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02006a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 70
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02006b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 78
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setClipping(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 85
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 87
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02006a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 88
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->BG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02006b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setClipping(Z)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method private relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;Lcom/sec/android/glview/TwGLView;)V
    .locals 7
    .param p1, "fromDragDropBox"    # Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;
    .param p2, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    .line 101
    .local v1, "fromX":F
    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    .line 102
    .local v2, "fromY":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 103
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 104
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 105
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    invoke-virtual {p2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 108
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setClipRect(Landroid/graphics/Rect;)V

    .line 112
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v2, 0x1

    .line 244
    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 245
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setZOrder(I)V

    .line 248
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 249
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 250
    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 251
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object v0, p1

    .line 259
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setDraggable(Z)V

    .line 265
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 266
    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    .line 269
    :cond_1
    return-void

    .line 262
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 148
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 150
    invoke-super {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayoutX()F
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getLayoutY()F
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 195
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 196
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V

    .line 201
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDragStart(Lcom/sec/android/glview/TwGLView;FF)V

    .line 191
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 7
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "fromDropBox"    # Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x63

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 213
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->getDim(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    .line 216
    .local v0, "viewToRelocate":Lcom/sec/android/glview/TwGLView;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-eq v1, v5, :cond_2

    move-object v1, p1

    .line 217
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getContentType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    move-object v1, p2

    .line 218
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    .line 223
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    .line 235
    .end local v0    # "viewToRelocate":Lcom/sec/android/glview/TwGLView;
    :cond_3
    check-cast p1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .end local p1    # "view":Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 236
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setDraggable(Z)V

    .line 240
    :goto_1
    return-void

    .line 219
    .restart local v0    # "viewToRelocate":Lcom/sec/android/glview/TwGLView;
    .restart local p1    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_4
    instance-of v1, p2, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 220
    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addToFirst(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 238
    .end local v0    # "viewToRelocate":Lcom/sec/android/glview/TwGLView;
    .end local p1    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->setDraggable(Z)V

    goto :goto_1
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 165
    if-nez p1, :cond_3

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/MenuDimController;->getDim(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    .line 186
    :cond_2
    :goto_0
    return-void

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/MenuDimController;->getDim(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    goto :goto_0
.end method

.method public setNormalBGVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mNormalBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public setPressedBGVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuickSettingDragDropBox;->mPressedBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 281
    :cond_0
    return-void
.end method
