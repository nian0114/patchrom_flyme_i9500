.class public Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLExternalFilterListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final EFFECT_EDIT_BUTTON_HEIGHT:I

.field private static final EFFECT_EDIT_BUTTON_IMAGE_X:I

.field private static final EFFECT_EDIT_BUTTON_IMAGE_Y:I

.field private static final EFFECT_EDIT_BUTTON_POS_X:I

.field private static final EFFECT_EDIT_BUTTON_POS_Y:I

.field private static final EFFECT_EDIT_BUTTON_WIDTH:I

.field private static final EFFECT_EDIT_ICON_POS_X:I

.field private static final EFFECT_EDIT_ICON_POS_Y:I

.field public static final ITEM_EFFECT_WIDTH:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_WIDTH:F

.field private static final TAG:Ljava/lang/String; = "TwGLExternalFilterListMenu"

.field private static final THUMBNAIL_ITEM_HEIGHT:I

.field private static final THUMBNAIL_ITEM_WIDTH:I

.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN:I


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

.field private mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

.field private mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mEffectManageDownloadImage:Lcom/sec/android/glview/TwGLImage;

.field private mEffectManageImage:Lcom/sec/android/glview/TwGLImage;

.field private mIsMenuClosed:Z

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMute:Z

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, 0x7f0a0475

    .line 60
    const v0, 0x7f0a01c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_POS_X:I

    .line 61
    const v0, 0x7f0a01ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_POS_Y:I

    .line 62
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_WIDTH:I

    .line 63
    const v0, 0x7f0a01cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_HEIGHT:I

    .line 64
    const v0, 0x7f0a01cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_ITEM_WIDTH:I

    .line 65
    const v0, 0x7f0a01cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_ITEM_HEIGHT:I

    .line 66
    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->SCREEN_WIDTH:F

    .line 67
    const v0, 0x7f0a000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->ITEM_EFFECT_WIDTH:I

    .line 69
    const v0, 0x7f0a0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_POS_X:I

    .line 70
    const v0, 0x7f0a004a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_POS_Y:I

    .line 71
    const v0, 0x7f0a004d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_WIDTH:I

    .line 72
    const v0, 0x7f0a004e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    .line 73
    const v0, 0x7f0a004b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_X:I

    .line 74
    const v0, 0x7f0a004c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_Y:I

    .line 75
    const v0, 0x7f0a004f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_ICON_POS_X:I

    .line 76
    const v0, 0x7f0a0050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_ICON_POS_Y:I

    .line 78
    const v0, 0x7f0a01ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    .line 80
    const v0, 0x7f0a000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->ITEM_WIDTH:I

    .line 81
    const v0, 0x7f0a000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->ITEM_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    .line 102
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I
    .param p8, "isMuted"    # Z

    .prologue
    .line 108
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mIsMenuClosed:Z

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;

    .line 109
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 110
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 111
    iput-boolean p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMute:Z

    .line 112
    invoke-direct {p0, p1, p3, p2, p7}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->init(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;II)V

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->THUMBNAIL_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMute:Z

    return v0
.end method

.method private init(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;II)V
    .locals 11
    .param p1, "mActivityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "parent"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "viewId"    # I
    .param p4, "slideDirection"    # I

    .prologue
    .line 116
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->ITEM_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p3}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->ITEM_EFFECT_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x7f020037

    const v5, 0x7f020038

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 124
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_Y:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 150
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203b1

    const v5, 0x7f0203b6

    const v6, 0x7f0203b2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x232f

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f0c009c

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    .line 158
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_ICON_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_Y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f0203b3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadImage:Lcom/sec/android/glview/TwGLImage;

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_Y:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 173
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203b1

    const v5, 0x7f0203b6

    const v6, 0x7f0203b2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_HEIGHT:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x232e

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f0c0193

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 179
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_ICON_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->EFFECT_EDIT_BUTTON_IMAGE_Y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x7f0203b4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageImage:Lcom/sec/android/glview/TwGLImage;

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 186
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 193
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 195
    .local v10, "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-eqz v10, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v10, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 193
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 127
    .end local v9    # "i":I
    .end local v10    # "item":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .restart local v9    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 208
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 217
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 218
    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 360
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :goto_1
    return v0

    .line 358
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 326
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mViewId:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideDownloadButton()V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hidePreloadButton()V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideEffectManageButton()V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 333
    :cond_1
    return v2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 320
    :cond_1
    return v3

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->isActive()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->showEffectMenu()V

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseIndicator()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideIndicators()V

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 291
    :goto_1
    return v0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideEffectMenu()V

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 291
    goto :goto_1
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 271
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 272
    return-void
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 442
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v3, :cond_0

    .line 443
    const-string v2, "TwGLExternalFilterListMenu"

    const-string v3, "KeyEvent is cancelled because activity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return v1

    .line 446
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_6

    .line 447
    :cond_1
    const-string v3, "TwGLExternalFilterListMenu"

    const-string v4, "shobhit: KEYCODE_DPAD_CENTER or KEYCODE_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    const-string v3, "TwGLExternalFilterListMenu"

    const-string v4, "shobhit: mCloseButton"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v3, :cond_6

    .line 451
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mIsMenuClosed:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_6

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v3, v4, v1}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 455
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mIsMenuClosed:Z

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_2

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep8()V

    .line 463
    :cond_2
    const-string v1, "TwGLExternalFilterListMenu"

    const-string v3, "shobhit onKeyUp true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 464
    goto :goto_0

    .line 468
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    const-string v1, "TwGLExternalFilterListMenu"

    const-string v3, "shobhit : onKeyUp mEffectManageButton"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onManageEffectMenuCommand()V

    move v1, v2

    .line 471
    goto/16 :goto_0

    .line 474
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    const-string v1, "TwGLExternalFilterListMenu"

    const-string v3, "shobhit : onKeyUp mEffectManageDownloadButton"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v1, 0x232f

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 478
    .local v0, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_5

    .line 479
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_5
    move v1, v2

    .line 480
    goto/16 :goto_0

    .line 483
    .end local v0    # "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_6
    const-string v2, "TwGLExternalFilterListMenu"

    const-string v3, "shobhit onKeyUp false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideDownloadButton()V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hidePreloadButton()V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideEffectManageButton()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showThumbnailButton()V

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showShootingModeButton()V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetBaseLayout()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetBaseLayout()V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsEffectMenuOpen:Z

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 347
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->refreshMenuPosition()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mIsMenuClosed:Z

    .line 263
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 264
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    .line 429
    :cond_1
    :goto_0
    return v1

    .line 377
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v3, :cond_0

    .line 380
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mIsMenuClosed:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    .line 386
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 388
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mIsMenuClosed:Z

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getDualMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 392
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_1

    .line 394
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 396
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep8()V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onManageEffectMenuCommand()V

    goto :goto_0

    .line 416
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mEffectManageDownloadButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    const/16 v2, 0x232f

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 419
    .local v0, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto/16 :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshMenuPosition()V
    .locals 3

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "move":F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->SCREEN_WIDTH:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 352
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->SCREEN_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLExternalFilterListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 355
    return-void
.end method
