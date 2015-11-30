.class public Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLMultiQuickViewMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final ITEM_DELETE_BUTTON_HEIGHT:I

.field private static final ITEM_DELETE_BUTTON_WIDTH:I

.field private static final LIST_MARGIN_X:I

.field private static final LIST_MARGIN_Y:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_HEIGHT_MARGIN:I

.field private static final MENU_POS_LEFT:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH_MARGIN:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLMultiQuickViewMenu"

.field private static final THUMBNAIL_ITEM_HEIGHT:I

.field private static final THUMBNAIL_ITEM_WIDTH:I


# instance fields
.field private LIST_WIDTH:I

.field private MENU_POS_X:I

.field private MENU_WIDTH:I

.field private final TAG_DELETE_BTN:I

.field private bScroll:Z

.field protected firstlaunch:Z

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mImages:I

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

.field private mParentView:Lcom/sec/android/glview/TwGLView;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->SCREEN_WIDTH:I

    .line 48
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->SCREEN_HEIGHT:I

    .line 49
    const v0, 0x7f0a018c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    .line 50
    const v0, 0x7f0a018d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I

    .line 51
    const v0, 0x7f0a018f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT_MARGIN:I

    .line 52
    const v0, 0x7f0a0190

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH_MARGIN:I

    .line 54
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT:I

    .line 55
    const v0, 0x7f0a018e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_LEFT:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_Y:I

    .line 57
    const v0, 0x7f0a0192

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_MARGIN_X:I

    .line 58
    const v0, 0x7f0a0191

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_MARGIN_Y:I

    .line 59
    const v0, 0x7f0a0193

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_WIDTH:I

    .line 60
    const v0, 0x7f0a0194

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "mMenuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "zOrder"    # I
    .param p6, "animType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 86
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 66
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 67
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 68
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mTag:I

    .line 69
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 70
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 71
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    .line 72
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH:I

    .line 73
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_WIDTH:I

    .line 74
    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_X:I

    .line 76
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 77
    iput-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 79
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->TAG_DELETE_BTN:I

    .line 80
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->firstlaunch:Z

    .line 81
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->bScroll:Z

    .line 87
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 89
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mParentView:Lcom/sec/android/glview/TwGLView;

    .line 90
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mTag:I

    .line 91
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->initialize(I)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->bScroll:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_WIDTH:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->bScroll:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->ITEM_DELETE_BUTTON_HEIGHT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private initialize(I)V
    .locals 8
    .param p1, "animationType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->refreshImageList()V

    .line 96
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->firstlaunch:Z

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 117
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    .line 119
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    mul-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH:I

    .line 120
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_WIDTH:I

    .line 121
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_LEFT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    rsub-int/lit8 v1, v1, 0x4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_X:I

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {v0, v7, v6}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {v0, v6, v6}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 131
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_MARGIN_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_MARGIN_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mTag:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mParentView:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 141
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 199
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 201
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 203
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 204
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 205
    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 303
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_1
    return v0

    .line 301
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hidingMenu()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    goto :goto_0
.end method

.method public launchGallery(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 311
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 312
    .local v0, "image":Lcom/sec/android/app/camera/gallery/IImage;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 316
    const-string v2, "from-Camera"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 281
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mViewId:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideDownloadButton()V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hidePreloadButton()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 287
    :cond_1
    return v2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 275
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 276
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideDownloadButton()V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hidePreloadButton()V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showShootingModeButton()V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 298
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->firstlaunch:Z

    .line 264
    return-void
.end method

.method public refreshImageList()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v2, 0x1

    const/4 v3, 0x2

    sget-object v4, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 194
    return-void
.end method

.method public refreshMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 153
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 154
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_MARGIN_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->LIST_MARGIN_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    .line 158
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    mul-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH:I

    .line 159
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_LEFT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    rsub-int/lit8 v1, v1, 0x4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_X:I

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 162
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_LEFT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mImages:I

    rsub-int/lit8 v1, v1, 0x4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->THUMBNAIL_ITEM_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_X:I

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->MENU_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2, v6}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFFZ)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 167
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->firstlaunch:Z

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->refreshImageList()V

    .line 146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->refreshMenu()V

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 149
    return-void
.end method

.method public showingMenu()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->startAnimation()V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLMultiQuickViewMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto :goto_0
.end method
