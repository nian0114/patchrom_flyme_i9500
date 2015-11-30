.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDeviceListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;
    }
.end annotation


# static fields
.field public static final BUTTON_GROUP_HEIGHT:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field public static final MENU_HEIGHT:I

.field public static final MENU_LANDSCAPE_BOTTOM_PADDING:I

.field private static final MENU_MAX_OFFSET:I

.field private static final MENU_OFFSET_FROM_ANCHOR:I

.field public static final MENU_PORTRAIT_SIDE_PADDING:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_WIDTH:I

.field public static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_SIZE:F


# instance fields
.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPosition:I

.field private mShareShot:Lcom/sec/android/app/camera/ShareShot;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mTitle:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f0a0141

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    .line 50
    const v0, 0x7f0a0142

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    .line 51
    const v0, 0x7f0a0149

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    .line 52
    const v0, 0x7f0a014a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    .line 54
    const v0, 0x7f0a0153

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a0152

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    .line 55
    const v0, 0x7f0a0154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    .line 56
    const v0, 0x7f0b0052

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_SIZE:F

    .line 57
    const v0, 0x7f09000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    .line 59
    const v0, 0x7f0a025b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->BUTTON_GROUP_HEIGHT:I

    .line 61
    const v0, 0x7f0a014c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_WIDTH:I

    .line 62
    const v0, 0x7f0a014d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    .line 64
    const v0, 0x7f0a0143

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_OFFSET_FROM_ANCHOR:I

    .line 65
    const v0, 0x7f0a0144

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_MAX_OFFSET:I

    .line 67
    const v0, 0x7f0a015f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    .line 68
    const v0, 0x7f0a0161

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 11
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    .line 82
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 148
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mPosition:I

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    .line 87
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v10

    .line 96
    .local v10, "menuPadding":Landroid/graphics/Rect;
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    iget v6, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f0204d3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuSize()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setleftTop()V

    .line 113
    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 126
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/ShareShot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 141
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    .line 145
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 146
    return-void
.end method

.method public getCheckPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mPosition:I

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 233
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getSize()I

    move-result v0

    if-lez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 225
    :cond_2
    :goto_0
    return v2

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    .line 221
    const-string v0, "MenuBase"

    const-string v1, "mList.getSize() == 0. Is user list changed during animation?"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 197
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 243
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 239
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->requestFocus()Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 188
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 189
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 267
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-nez v4, :cond_0

    .line 304
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_OFFSET_FROM_ANCHOR:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 272
    .local v2, "move":F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v3, v4

    .line 275
    .local v3, "top":F
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 302
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->setleftTop()V

    .line 303
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 278
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v1

    .line 279
    .local v1, "height":F
    add-float v0, v3, v1

    .line 280
    .local v0, "bottom":F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_MAX_OFFSET:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 281
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_MAX_OFFSET:I

    int-to-float v2, v4

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getRight()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 286
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v4, v4, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v4, v4, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 287
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v2, v4

    goto :goto_1

    .line 288
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v4, v4, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 289
    sub-float/2addr v2, v1

    goto :goto_1

    .line 295
    .end local v0    # "bottom":F
    .end local v1    # "height":F
    :pswitch_1
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_MAX_OFFSET:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    .line 296
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_MAX_OFFSET:I

    int-to-float v2, v4

    goto :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshMenuSize()V
    .locals 5

    .prologue
    const/4 v2, 0x5

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v0

    .line 248
    .local v0, "itemCount":I
    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 252
    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 261
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->requestFocus()Z

    .line 264
    :cond_2
    return-void

    .line 256
    :cond_3
    if-lt v0, v2, :cond_1

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    goto :goto_0
.end method

.method public setleftTop()V
    .locals 6

    .prologue
    .line 129
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_X:I

    .line 133
    .local v0, "offsetX":I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    int-to-float v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    int-to-float v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 136
    return-void
.end method
