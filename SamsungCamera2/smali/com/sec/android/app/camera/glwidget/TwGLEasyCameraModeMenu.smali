.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraModeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final GRID_MENU_COLUMNS:I

.field private static final GRID_MENU_ROWS:I

.field private static final GRID_MENU_SCALE_RATIO:F = 0.7f

.field private static final ITEM_COLUMN_1_POS_X:I

.field private static final ITEM_COLUMN_OFFSET:I

.field private static final ITEM_ROW_1_POS_Y:I

.field private static final ITEM_ROW_OFFSET:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field private static final TUTORIAL_HELP_GROUP_WIDTH:I


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mCheckModeView:Z

.field private mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousSelectedItem:I

.field private mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f0a0247

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 29
    const v0, 0x7f0a0248

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 31
    const v0, 0x7f0a0249

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    .line 32
    const v0, 0x7f0a024a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    .line 33
    const v0, 0x7f0a024b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    .line 34
    const v0, 0x7f0a024c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    .line 36
    const v0, 0x7f0a02b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    .line 37
    const v0, 0x7f0b000a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    .line 38
    const v0, 0x7f0b0009

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 56
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 46
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    .line 49
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItem:I

    .line 50
    iput-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 51
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    .line 52
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-direct {v0, p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    .line 58
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 59
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 63
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move-object v1, p1

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 74
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    .line 78
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    invoke-direct {p0, v6, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->setOrientationListener()V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method private init(ZI)V
    .locals 11
    .param p1, "refreshOnly"    # Z
    .param p2, "orientation"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    .line 187
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->initGridModeFocus(I)V

    .line 189
    if-nez p2, :cond_4

    .line 190
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    if-ge v2, v3, :cond_0

    .line 191
    const/4 v0, 0x0

    .local v0, "column":I
    :goto_1
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    if-ge v0, v3, :cond_3

    .line 192
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 272
    .end local v0    # "column":I
    .end local v2    # "row":I
    :cond_0
    return-void

    .line 195
    .restart local v0    # "column":I
    .restart local v2    # "row":I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 196
    .local v1, "item":Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_2

    .line 197
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 198
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 199
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 200
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 201
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 202
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 203
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 204
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 205
    if-nez p1, :cond_2

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v1    # "item":Lcom/sec/android/glview/TwGLView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "column":I
    .end local v2    # "row":I
    :cond_4
    if-ne p2, v6, :cond_7

    .line 212
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "column":I
    :goto_2
    if-ltz v0, :cond_0

    .line 213
    const/4 v2, 0x0

    .restart local v2    # "row":I
    :goto_3
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    if-ge v2, v3, :cond_6

    .line 214
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 218
    .restart local v1    # "item":Lcom/sec/android/glview/TwGLView;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 219
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 220
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 221
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 222
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 223
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 224
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 225
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 226
    if-nez p1, :cond_5

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 212
    .end local v1    # "item":Lcom/sec/android/glview/TwGLView;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 231
    .end local v0    # "column":I
    .end local v2    # "row":I
    :cond_7
    const/4 v3, 0x2

    if-ne p2, v3, :cond_a

    .line 232
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "row":I
    :goto_4
    if-ltz v2, :cond_0

    .line 233
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v0, v3, -0x1

    .restart local v0    # "column":I
    :goto_5
    if-ltz v0, :cond_9

    .line 234
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 237
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    add-int/2addr v4, v5

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 238
    .restart local v1    # "item":Lcom/sec/android/glview/TwGLView;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 239
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 240
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 241
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 242
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 243
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 244
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 245
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 246
    if-nez p1, :cond_8

    .line 247
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 233
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 232
    .end local v1    # "item":Lcom/sec/android/glview/TwGLView;
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 251
    .end local v0    # "column":I
    .end local v2    # "row":I
    :cond_a
    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    .line 252
    const/4 v0, 0x0

    .restart local v0    # "column":I
    :goto_6
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_COLUMNS:I

    if-ge v0, v3, :cond_0

    .line 253
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "row":I
    :goto_7
    if-ltz v2, :cond_c

    .line 254
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 257
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v4, v0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-interface {v3, v4, v8}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 258
    .restart local v1    # "item":Lcom/sec/android/glview/TwGLView;
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_1_POS_X:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_COLUMN_OFFSET:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_1_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->ITEM_ROW_OFFSET:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 259
    invoke-virtual {v1, v9}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(F)V

    .line 260
    invoke-virtual {v1, v10}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 261
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 262
    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 263
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 264
    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    .line 265
    invoke-virtual {v1, v8}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 266
    if-nez p1, :cond_b

    .line 267
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 252
    .end local v1    # "item":Lcom/sec/android/glview/TwGLView;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private initGridModeFocus(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    .line 115
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    if-nez v5, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v5}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    .line 119
    .local v4, "size":I
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v1

    .line 120
    .local v1, "firstBtn":Lcom/sec/android/glview/TwGLButton;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 121
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 122
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 123
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 125
    if-nez p1, :cond_3

    .line 126
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 127
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    .line 128
    .local v0, "currBtn":Lcom/sec/android/glview/TwGLButton;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 129
    .local v3, "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 130
    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 131
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 132
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 134
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_2

    .line 135
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 136
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 126
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v2    # "i":I
    .end local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_3
    const/4 v5, 0x1

    if-ne p1, v5, :cond_5

    .line 140
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_0

    .line 141
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    .line 142
    .restart local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 143
    .restart local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 144
    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 145
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 146
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 147
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_4

    .line 148
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 149
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 140
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    .end local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v2    # "i":I
    .end local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 153
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_0

    .line 154
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    .line 155
    .restart local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 156
    .restart local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 157
    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 158
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 159
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 161
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_6

    .line 162
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 163
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 153
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 166
    .end local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v2    # "i":I
    .end local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_7
    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    .line 167
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v4, :cond_0

    .line 168
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    .line 169
    .restart local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v6, v2, -0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 170
    .restart local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 171
    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 172
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 173
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 175
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_8

    .line 176
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 177
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 181
    .end local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v1    # "firstBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v2    # "i":I
    .end local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v4    # "size":I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 345
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    .line 347
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 348
    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    .line 391
    .local v1, "view":Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;
    :goto_1
    return v0

    .line 389
    .restart local v0    # "i":I
    .restart local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "view":Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentSelectedItem()Lcom/sec/android/glview/TwGLView;
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->getCurrentSelectedIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    return-object v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0xcb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 416
    :cond_1
    return v3
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    .line 308
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 309
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 367
    if-ne p1, v3, :cond_1

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 372
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 385
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 321
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    .line 322
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 323
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 333
    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mLastOrientation:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V

    .line 335
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 336
    return-void
.end method

.method public onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 4
    .param p1, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep3()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItem:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->setHighlightImage(I)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeItem;->setHighlightImage(I)V

    .line 361
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItem:I

    .line 362
    return-void
.end method

.method protected onShow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    .line 279
    .local v0, "mNewOrientation":I
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mCheckModeView:Z

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 286
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->init(ZI)V

    .line 288
    .end local v0    # "mNewOrientation":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->requestFocus()Z

    .line 296
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 297
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 439
    return-void
.end method
