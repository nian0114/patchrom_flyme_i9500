.class public Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLChatOnBuddyMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;
    }
.end annotation


# static fields
.field private static final BUTTON_EDIT_POS_X:I

.field private static final BUTTON_EDIT_POS_Y:I

.field private static final BUTTON_GAP:I

.field private static final BUTTON_GROUP_HEIGHT:I

.field private static final BUTTON_GROUP_HEIGHT_ADJUST:I

.field private static final BUTTON_GROUP_POS_X:I

.field private static final BUTTON_GROUP_POS_Y:I

.field private static final BUTTON_GROUP_POS_Y_OFFSET:I

.field private static final BUTTON_GROUP_WIDTH:I

.field private static final BUTTON_HEIGHT:I

.field private static final BUTTON_ID_EDIT:I = -0xb

.field private static final BUTTON_ID_OK:I = -0xa

.field private static final BUTTON_OK_POS_X:I

.field private static final BUTTON_OK_POS_Y:I

.field private static final BUTTON_WIDTH:I

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_MAX_HEIGHT:I

.field public static final MENU_LANDSCAPE_BOTTOM_PADDING:I

.field private static final MENU_MAX_OFFSET:I

.field private static final MENU_OFFSET_FROM_ANCHOR:I

.field public static final MENU_PORTRAIT_HEIGHT_PADDING:I

.field public static final MENU_PORTRAIT_SIDE_PADDING:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field public static final MENU_WIDTH:I

.field public static final TITLE_HEIGHT:I

.field public static final TITLE_HEIGHT_PADDING:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_SIZE:F


# instance fields
.field public mBuddyUsr:[Ljava/lang/StringBuffer;

.field private mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

.field private mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

.field private mEditButton:Lcom/sec/android/glview/TwGLButton;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOKButton:Lcom/sec/android/glview/TwGLButton;

.field private mPosition:I

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f0a0141

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    .line 47
    const v0, 0x7f0a0142

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    .line 48
    const v0, 0x7f0a0149

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    .line 49
    const v0, 0x7f0a0143

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_OFFSET_FROM_ANCHOR:I

    .line 50
    const v0, 0x7f0a0144

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    .line 52
    const v0, 0x7f0a0153

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    .line 53
    const v0, 0x7f0a043c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT_PADDING:I

    .line 54
    const v0, 0x7f0a0154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_LEFT_PADDING:I

    .line 55
    const v0, 0x7f0b0052

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    .line 56
    const v0, 0x7f09000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_COLOR:I

    .line 58
    const v0, 0x7f0a0257

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_X:I

    .line 59
    const v0, 0x7f0a0258

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y:I

    .line 60
    const v0, 0x7f0a0259

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y_OFFSET:I

    .line 61
    const v0, 0x7f0a025a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_WIDTH:I

    .line 62
    const v0, 0x7f0a025b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    .line 63
    const v0, 0x7f0a025c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT_ADJUST:I

    .line 65
    const v0, 0x7f0a0261

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    .line 66
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_HEIGHT:I

    .line 67
    const v0, 0x7f0a025f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GAP:I

    .line 69
    const v0, 0x7f0a025d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_X:I

    .line 70
    const v0, 0x7f0a025e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_Y:I

    .line 71
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GAP:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_X:I

    .line 72
    const v0, 0x7f0a0260

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_Y:I

    .line 74
    const v0, 0x7f0a014c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I

    .line 75
    const v0, 0x7f0a014d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    .line 76
    const v0, 0x7f0a0256

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    .line 78
    const v0, 0x7f0a015f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    .line 79
    const v0, 0x7f0a0161

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    .line 80
    const v0, 0x7f0a0160

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_HEIGHT_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;II)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p5, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    .line 107
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    .line 102
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mBuddyUsr:[Ljava/lang/StringBuffer;

    .line 222
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getChatOnShot()Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    .line 112
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    add-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 118
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    add-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 121
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 124
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT_PADDING:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 130
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    .line 131
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f0204d3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT_ADJUST:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f020310

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 142
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_OK_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0204c4

    const v6, 0x7f0204c8

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_HEIGHT:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const v5, 0x7f09001a

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIIZZ)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, -0xa

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 150
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_EDIT_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f0204c4

    const v6, 0x7f0204c8

    const/4 v7, 0x0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_HEIGHT:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_TEXT_SIZE:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const v5, 0x7f09001a

    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIIZZ)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, -0xb

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mOKButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mEditButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuSize()V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->setLeftTop()V

    .line 174
    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 187
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/ChatOnShot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 219
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 220
    return-void
.end method

.method public getCheckPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I

    .line 252
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

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 305
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 297
    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 330
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 317
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->isChecked()Z

    move-result v1

    .line 319
    .local v1, "selected":Z
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->setSelect(Z)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    .end local v1    # "selected":Z
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ChatOnShot;->pickChatOnBuddyList()V

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 276
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 277
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuPosition()V

    .line 335
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 311
    return-void
.end method

.method public onShow()V
    .locals 5

    .prologue
    .line 257
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 258
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    iget-object v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuPosition()V

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 264
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 265
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->isSelected()Z

    move-result v2

    .line 266
    .local v2, "selected":Z
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->setCheckBox(Z)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "selected":Z
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 269
    return-void
.end method

.method public refreshMenuPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x0

    .line 338
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-nez v5, :cond_0

    .line 371
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_OFFSET_FROM_ANCHOR:I

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 343
    .local v3, "move":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v4, v5

    .line 344
    .local v4, "top":F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v5

    int-to-float v2, v5

    .line 347
    .local v2, "itemCount":F
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 370
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v1

    .line 351
    .local v1, "height":F
    add-float v0, v4, v1

    .line 352
    .local v0, "bottom":F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 353
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v3, v5

    .line 356
    :cond_2
    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    cmpg-float v5, v2, v8

    if-gez v5, :cond_3

    .line 357
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v3, v5

    goto :goto_1

    .line 358
    :cond_3
    cmpl-float v5, v2, v8

    if-ltz v5, :cond_1

    .line 359
    sub-float/2addr v3, v1

    goto :goto_1

    .line 364
    .end local v0    # "bottom":F
    .end local v1    # "height":F
    :pswitch_1
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 365
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_MAX_OFFSET:I

    int-to-float v3, v5

    goto :goto_1

    .line 347
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
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v0

    .line 198
    .local v0, "itemCount":I
    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    if-ge v0, v2, :cond_2

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y_OFFSET:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    if-lt v0, v2, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_POS_Y_OFFSET:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mTitleListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->BUTTON_GROUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_MAX_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0
.end method

.method public setLeftTop()V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_HEIGHT_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_HEIGHT_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 193
    return-void
.end method

.method public updateBuddyList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->reset()V

    .line 381
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    .line 382
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatonBuddyAdapter:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->refreshMenuSize()V

    goto :goto_0
.end method
