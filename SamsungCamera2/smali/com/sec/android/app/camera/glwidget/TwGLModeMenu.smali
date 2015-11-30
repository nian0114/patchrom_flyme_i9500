.class public Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLModeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
.implements Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;
.implements Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;,
        Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final AUTO_MODE_BUTTON_POS_X:I

.field private static final AUTO_MODE_BUTTON_POS_Y:I

.field private static final GRID_GAP:I

.field private static final GRID_MENU_COLUMNS:I

.field private static final GRID_MENU_ROWS:I

.field private static final GRID_MENU_SCALE_RATIO:F

.field private static final HELP_GROUP_WIDTH:I

.field private static final LIST_TYPE_BUTTON_POS_X:I

.field private static final LIST_TYPE_BUTTON_POS_Y:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TUTORIAL_HELP_GROUP_WIDTH:I

.field private static final TYPE_GRID:I = 0x1

.field private static final TYPE_WHEEL:I


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

.field private mCenterItemIndex:I

.field private mCheckModeClick:Z

.field private mCheckPause:Z

.field private mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

.field private mGridItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridList:Lcom/sec/android/glview/TwGLGridList;

.field private mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOrientation:I

.field private mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mMenuType:I

.field private mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

.field private mPreviousSelectedItem:I

.field private mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

.field private mTypeButton:Lcom/sec/android/glview/TwGLButton;

.field private mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const v0, 0x7f0a0057

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_X:I

    .line 40
    const v0, 0x7f0a0058

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_Y:I

    .line 41
    const v0, 0x7f0a0059

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_X:I

    .line 42
    const v0, 0x7f0a005a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_Y:I

    .line 43
    const v0, 0x7f0a005b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    .line 44
    const v0, 0x7f0a005c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    .line 46
    const v0, 0x7f0a0090

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->HELP_GROUP_WIDTH:I

    .line 47
    const v0, 0x7f0a02b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    .line 49
    const v0, 0x7f0b0003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    .line 50
    const v0, 0x7f0b0002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    .line 51
    const v0, 0x7f0b0005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F

    .line 58
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    .line 59
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    .line 60
    const v0, 0x7f0a005d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 90
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    .line 72
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    .line 79
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLGridMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    .line 92
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 93
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initItemArray()V

    .line 99
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v2

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLGridList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLGridList;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarResource(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLGridList;->setOnScrollListener(Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->AUTO_MODE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200d7

    const v5, 0x7f0200d9

    const v6, 0x7f0200d8

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 120
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TYPE_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0200e9

    const v5, 0x7f0200eb

    const v6, 0x7f0200ea

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 128
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setOnCenterItemChangeListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setOnScrollListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 141
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 146
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    .line 156
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getModeMenuType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedItem()Lcom/sec/android/glview/TwGLView;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 165
    .local v8, "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->requestFocus()Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->registerHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V

    .line 170
    :cond_1
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$1600()F
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLGridList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method private initGridModeFocus(I)V
    .locals 16
    .param p1, "orientation"    # I

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    if-nez v13, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v11

    .line 228
    .local v11, "size":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v5

    .line 229
    .local v5, "firstBtn":Lcom/sec/android/glview/TwGLButton;
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 230
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 231
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 232
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 234
    if-nez p1, :cond_5

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    div-int v10, v13, v14

    .line 236
    .local v10, "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    rem-int v9, v13, v14

    .line 237
    .local v9, "remainder":I
    if-lez v9, :cond_4

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int v7, v13, v10

    .line 238
    .local v7, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v7, v14}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 239
    .local v3, "btnToType":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    .line 240
    .local v2, "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 245
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    if-ge v6, v11, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 247
    .local v4, "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 248
    .local v8, "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 249
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 250
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 251
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 253
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_3

    .line 254
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 255
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 245
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 237
    .end local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    .end local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_4
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v14, v10, -0x1

    mul-int v7, v13, v14

    goto/16 :goto_1

    .line 258
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    :cond_5
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    div-int v10, v13, v14

    .line 260
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    rem-int v9, v13, v14

    .line 261
    .restart local v9    # "remainder":I
    if-lez v10, :cond_8

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v13, v10

    add-int/lit8 v12, v13, -0x1

    .line 262
    .local v12, "typeIndex":I
    :goto_3
    if-lez v9, :cond_9

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int v1, v13, v10

    .line 263
    .local v1, "autoIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_6

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 265
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v1, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 267
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v11, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 269
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 270
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 271
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 272
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 273
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 274
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_7

    .line 275
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 276
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 267
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 261
    .end local v1    # "autoIndex":I
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v12    # "typeIndex":I
    :cond_8
    add-int/lit8 v12, v9, -0x1

    goto :goto_3

    .line 262
    .restart local v12    # "typeIndex":I
    :cond_9
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v14, v10, -0x1

    mul-int v1, v13, v14

    goto :goto_4

    .line 279
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    .end local v12    # "typeIndex":I
    :cond_a
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_e

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    div-int v10, v13, v14

    .line 281
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    rem-int v9, v13, v14

    .line 282
    .restart local v9    # "remainder":I
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v12, v13, -0x1

    .line 283
    .restart local v12    # "typeIndex":I
    if-lez v9, :cond_d

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v13, v10

    add-int/lit8 v14, v9, -0x1

    add-int v1, v13, v14

    .line 284
    .restart local v1    # "autoIndex":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 286
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v1, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 288
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v11, :cond_0

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 290
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 291
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 292
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 293
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 294
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 296
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_c

    .line 297
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 298
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 288
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 283
    .end local v1    # "autoIndex":I
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_d
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v13, v10

    add-int/lit8 v1, v13, -0x1

    goto :goto_6

    .line 301
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    .end local v12    # "typeIndex":I
    :cond_e
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    div-int v10, v13, v14

    .line 303
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    rem-int v9, v13, v14

    .line 304
    .restart local v9    # "remainder":I
    if-lez v10, :cond_11

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v7, v13, -0x1

    .line 305
    .restart local v7    # "index":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 306
    .restart local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v7, v14}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    .line 307
    .restart local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_f

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 311
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 313
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v11, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 315
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 316
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 317
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 318
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 319
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 321
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_10

    .line 322
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 323
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 304
    .end local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    .end local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_11
    add-int/lit8 v7, v9, -0x1

    goto :goto_8

    .line 331
    .end local v5    # "firstBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    .end local v11    # "size":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    if-eqz v13, :cond_0

    .line 335
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v11

    .line 336
    .restart local v11    # "size":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v5

    .line 337
    .restart local v5    # "firstBtn":Lcom/sec/android/glview/TwGLButton;
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 338
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 339
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 340
    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 342
    if-nez p1, :cond_16

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    div-int v10, v13, v14

    .line 344
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    rem-int v9, v13, v14

    .line 345
    .restart local v9    # "remainder":I
    if-lez v9, :cond_15

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int v7, v13, v10

    .line 346
    .restart local v7    # "index":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v7, v14}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 347
    .restart local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    .line 348
    .restart local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_13

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 350
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 353
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v11, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 355
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 356
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 357
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 358
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 359
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 361
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_14

    .line 362
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 363
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 353
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 345
    .end local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    .end local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_15
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v14, v10, -0x1

    mul-int v7, v13, v14

    goto/16 :goto_a

    .line 366
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    :cond_16
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1b

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    div-int v10, v13, v14

    .line 368
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    rem-int v9, v13, v14

    .line 369
    .restart local v9    # "remainder":I
    if-lez v10, :cond_19

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int/2addr v13, v10

    add-int/lit8 v12, v13, -0x1

    .line 370
    .restart local v12    # "typeIndex":I
    :goto_c
    if-lez v9, :cond_1a

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    mul-int v1, v13, v10

    .line 371
    .restart local v1    # "autoIndex":I
    :goto_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_17

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 373
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v1, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 375
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_e
    if-ge v6, v11, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 377
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 378
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 379
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 380
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 381
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 382
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_18

    .line 383
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 384
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 375
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 369
    .end local v1    # "autoIndex":I
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v12    # "typeIndex":I
    :cond_19
    add-int/lit8 v12, v9, -0x1

    goto :goto_c

    .line 370
    .restart local v12    # "typeIndex":I
    :cond_1a
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v14, v10, -0x1

    mul-int v1, v13, v14

    goto :goto_d

    .line 387
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    .end local v12    # "typeIndex":I
    :cond_1b
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_1f

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    div-int v10, v13, v14

    .line 389
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    rem-int v9, v13, v14

    .line 390
    .restart local v9    # "remainder":I
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    add-int/lit8 v12, v13, -0x1

    .line 391
    .restart local v12    # "typeIndex":I
    if-lez v9, :cond_1e

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v13, v10

    add-int/lit8 v14, v9, -0x1

    add-int v1, v13, v14

    .line 392
    .restart local v1    # "autoIndex":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_1c

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 394
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v15, 0x0

    invoke-interface {v14, v1, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 396
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_10
    if-ge v6, v11, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 398
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 399
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 400
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 401
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    .line 402
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownId(I)V

    .line 404
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_1d

    .line 405
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 406
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 396
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 391
    .end local v1    # "autoIndex":I
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_1e
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_COLUMNS:I

    mul-int/2addr v13, v10

    add-int/lit8 v1, v13, -0x1

    goto :goto_f

    .line 409
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    .end local v12    # "typeIndex":I
    :cond_1f
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    div-int v10, v13, v14

    .line 411
    .restart local v10    # "share":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v13}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v13

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    rem-int v9, v13, v14

    .line 412
    .restart local v9    # "remainder":I
    if-lez v10, :cond_22

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_ROWS:I

    add-int/lit8 v7, v13, -0x1

    .line 413
    .restart local v7    # "index":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 414
    .restart local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v7, v14}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v2

    .line 415
    .restart local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLButton;->getVisibility()I

    move-result v13

    if-nez v13, :cond_20

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftView(Lcom/sec/android/glview/TwGLView;)Z

    .line 419
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v13, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 421
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_12
    if-ge v6, v11, :cond_0

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v14, 0x0

    invoke-interface {v13, v6, v14}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    .line 423
    .restart local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v8

    .line 424
    .restart local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v8, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 425
    invoke-virtual {v4, v8}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 426
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 427
    const/4 v13, -0x1

    invoke-virtual {v4, v13}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 429
    add-int/lit8 v13, v11, -0x1

    if-ne v6, v13, :cond_21

    .line 430
    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 431
    invoke-virtual {v5, v4}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 412
    .end local v2    # "btnToAuto":Lcom/sec/android/glview/TwGLButton;
    .end local v3    # "btnToType":Lcom/sec/android/glview/TwGLButton;
    .end local v4    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_22
    add-int/lit8 v7, v9, -0x1

    goto :goto_11

    .line 435
    .end local v5    # "firstBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v9    # "remainder":I
    .end local v10    # "share":I
    .end local v11    # "size":I
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 327
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private initWheelFocus()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v1

    .line 205
    .local v1, "firstBtn":Lcom/sec/android/glview/TwGLButton;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4, v2, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v0

    .line 207
    .local v0, "currBtn":Lcom/sec/android/glview/TwGLButton;
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v3

    .line 208
    .local v3, "prevBtn":Lcom/sec/android/glview/TwGLButton;
    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 209
    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 210
    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightId(I)V

    .line 211
    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLButton;->setNextFocusLeftId(I)V

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    .line 214
    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 215
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 205
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "currBtn":Lcom/sec/android/glview/TwGLButton;
    .end local v3    # "prevBtn":Lcom/sec/android/glview/TwGLButton;
    :cond_1
    return-void
.end method

.method private isChecked(I)Z
    .locals 2
    .param p1, "mCommandId"    # I

    .prologue
    const/4 v1, 0x0

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v1

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private setType(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/16 v8, 0xcb

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 605
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    .line 607
    .local v0, "mNewOrientation":I
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwGLModeMenu setType type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNewOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLastOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-nez p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 609
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 613
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    if-ge v1, v2, :cond_1

    .line 614
    const-string v1, "MenuBase"

    const-string v2, "TwGLModeMenu wheel mode can\'t be shown because of few items"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 p1, 0x1

    .line 618
    :cond_1
    if-ne p1, v6, :cond_5

    .line 619
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    .line 620
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0201c2

    const v3, 0x7f0201c4

    const v4, 0x7f0201c3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 621
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c024b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 623
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridModeFocus(I)V

    .line 625
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_4

    .line 626
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 631
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLGridList;->setLastOrientation(I)V

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLGridList;->setSize(FF)V

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLGridList;->refreshItemPosition()V

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1, v7, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(IZ)V

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v1, v7, v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(IZ)V

    .line 661
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    if-ne v1, v8, :cond_3

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v6}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 673
    return-void

    .line 628
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_0

    .line 643
    :cond_5
    if-nez p1, :cond_2

    .line 644
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    .line 645
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0200e9

    const v3, 0x7f0200eb

    const v4, 0x7f0200ea

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v7, v5}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(IZ)V

    .line 649
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 650
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    if-eq v1, v8, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    if-nez v1, :cond_7

    .line 651
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    .line 655
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedItem()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(IZ)V

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initWheelFocus()V

    goto/16 :goto_1

    .line 653
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 810
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    .line 811
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->unregisterHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V

    .line 816
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 817
    return-void
.end method

.method public initItemArray()V
    .locals 15

    .prologue
    .line 997
    const/4 v13, 0x0

    .local v13, "mSelectedItem":I
    const/4 v12, 0x0

    .line 999
    .local v12, "mCenterIndex":I
    const/4 v9, 0x0

    .line 1000
    .local v9, "calcIndex":I
    const/4 v11, 0x0

    .line 1002
    .local v11, "isSwitch":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v14

    .line 1003
    .local v14, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v14, :cond_5

    .line 1004
    if-eqz v11, :cond_3

    .line 1005
    div-int/lit8 v1, v10, 0x2

    rem-int/lit8 v4, v10, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v12

    add-int/2addr v1, v14

    rem-int v9, v1, v14

    .line 1009
    :goto_1
    if-nez v11, :cond_4

    const/4 v11, 0x1

    .line 1011
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    .line 1013
    .local v6, "mGridBundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    if-eqz v6, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 1015
    .local v0, "mGriditem":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-nez v0, :cond_2

    .line 1016
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, v4, v5, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    .line 1017
    .local v7, "mGridCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v7, :cond_2

    instance-of v1, v7, Lcom/sec/android/app/camera/command/EmptyCommand;

    if-nez v1, :cond_2

    .line 1018
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    neg-float v2, v1

    .line 1019
    .local v2, "left":F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F

    sub-float/2addr v4, v5

    mul-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    neg-float v3, v1

    .line 1020
    .local v3, "top":F
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .end local v0    # "mGriditem":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    int-to-float v5, v5

    const/4 v8, -0x5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    .line 1021
    .restart local v0    # "mGriditem":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setRotatable(Z)V

    .line 1022
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setCenterPivot(Z)V

    .line 1023
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->resetScale()V

    .line 1024
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_MENU_SCALE_RATIO:F

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->scale(FF)V

    .line 1026
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v4, 0xcb

    if-ne v1, v4, :cond_0

    .line 1027
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnSelectListener(Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;)V

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v4, 0xcb

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v1

    const/16 v4, 0x12c

    if-ne v1, v4, :cond_1

    .line 1031
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 1034
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1003
    .end local v0    # "mGriditem":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .end local v2    # "left":F
    .end local v3    # "top":F
    .end local v7    # "mGridCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1007
    .end local v6    # "mGridBundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    :cond_3
    div-int/lit8 v1, v10, 0x2

    rem-int/lit8 v4, v10, 0x2

    add-int/2addr v1, v4

    sub-int v1, v12, v1

    add-int/2addr v1, v14

    rem-int v9, v1, v14

    goto/16 :goto_1

    .line 1009
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1039
    :cond_5
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0xcb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 906
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 907
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-nez v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 919
    :cond_2
    return v3
.end method

.method public onCenterItemChanged(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 821
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCenterItemIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 823
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-nez v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 825
    .local v0, "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setNextFocusRightView(Lcom/sec/android/glview/TwGLView;)Z

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    if-eqz v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->centerAlign()V

    .line 831
    .end local v0    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_0
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 677
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 678
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v3, :cond_3

    .line 679
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-ne v3, v1, :cond_1

    .line 680
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 681
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/CameraSettings;->setModeMenuType(I)V

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 686
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-nez v3, :cond_3

    .line 687
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 688
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/CameraSettings;->setModeMenuType(I)V

    goto :goto_0

    .line 695
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAutoModeButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 696
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 697
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 698
    .local v0, "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto :goto_0

    .end local v0    # "menuCommand":Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_3
    move v1, v2

    .line 703
    goto :goto_0
.end method

.method public onGridScroll(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "type"    # I

    .prologue
    .line 978
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    if-nez v2, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 982
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLGridList;->getContentHeight()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLGridList;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 983
    .local v1, "offset":F
    mul-float v0, p1, v1

    .line 984
    .local v0, "moveX":F
    mul-float v2, p2, v1

    goto :goto_0
.end method

.method public onGridScrollEnd()V
    .locals 0

    .prologue
    .line 974
    return-void
.end method

.method public onGridScrollStart()V
    .locals 0

    .prologue
    .line 970
    return-void
.end method

.method protected onHide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setVisibility(IZ)V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(I)V

    .line 750
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    .line 751
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    .line 752
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 753
    return-void
.end method

.method public onHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1072
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 865
    if-ne p1, v4, :cond_2

    .line 866
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-nez v2, :cond_0

    .line 867
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->setVisibility(IZ)V

    .line 868
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 878
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_2

    .line 879
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 880
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v2, v4, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 881
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 895
    :goto_0
    return v0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    :cond_2
    move v0, v1

    .line 895
    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    .line 1043
    const-string v0, "MenuBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwGLModeMenu onOrientationChanged orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMenuType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    if-ne v0, v3, :cond_1

    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    if-eq v0, p1, :cond_0

    .line 1049
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 1050
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-ne v0, v3, :cond_3

    .line 1051
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridModeFocus(I)V

    .line 1052
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1058
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->setLastOrientation(I)V

    .line 1059
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLGridList;->setSize(FF)V

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLGridList;->refreshItemPosition()V

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_1

    .line 1063
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 764
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    .line 765
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 766
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckPause:Z

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 772
    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    .line 774
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 776
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->initGridModeFocus(I)V

    .line 778
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLGridList;->setLastOrientation(I)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLGridList;->setSize(FF)V

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridList:Lcom/sec/android/glview/TwGLGridList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLGridList;->refreshItemPosition()V

    .line 794
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 795
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->GRID_GAP:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mWheelMenu:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(I)V

    goto :goto_1
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 841
    return-void
.end method

.method public onScrollStart()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->hideDescription()V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    .line 837
    return-void
.end method

.method public onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 4
    .param p1, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep3()V

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setVisibility(IZ)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(IZ)V

    .line 852
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    if-ne v0, v3, :cond_1

    .line 853
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    .line 860
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    .line 861
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItem:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    goto :goto_0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 708
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mCheckModeClick:Z

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->VISIBLE_ITEMS:I

    if-lt v0, v1, :cond_3

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getModeMenuType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 721
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->requestFocus()Z

    .line 735
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 736
    return-void

    .line 716
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->setType(I)V

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTypeButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setItemSubTitle(Lcom/sec/android/glview/TwGLView;)V
    .locals 6
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1082
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1083
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    .line 1084
    .local v2, "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    if-eqz v2, :cond_2

    .line 1085
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mGridItemList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 1086
    .local v1, "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-eqz v1, :cond_2

    .line 1087
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getButton()Lcom/sec/android/glview/TwGLButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1088
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1089
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1090
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->getDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setModeItemSubTitle(Ljava/lang/String;)V

    .line 1099
    .end local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .end local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1092
    .restart local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .restart local v2    # "itemData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setModeItemSubTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1082
    .end local v1    # "item":Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
