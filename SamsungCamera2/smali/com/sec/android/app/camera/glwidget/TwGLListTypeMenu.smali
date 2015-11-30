.class public Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLListTypeMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final MENU_DEPTH_PORTRAIT_OFFSET:I

.field private static final MENU_DEPTH_PORTRAIT_POS_Y:[I

.field private static final MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

.field private static final MENU_DEPTH_POS_X:I

.field private static final MENU_HEIGHT:I

.field public static final MENU_LANDSCAPE_BOTTOM_PADDING:I

.field private static final MENU_MAX_OFFSET:I

.field private static final MENU_OFFSET_FROM_ANCHOR:I

.field public static final MENU_PORTRAIT_SIDE_PADDING:I

.field private static final MENU_PORTRAIT_TOP:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH:I

.field public static final MENU_WRAPPER_PADDING_OFFSET_X:I

.field public static final MENU_WRAPPER_PADDING_OFFSET_Y:I

.field public static final MENU_Y_270_PADDING:I

.field public static final MENU_Y_PADDING:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TITLE_DEVIDER_LINE_OFFSET:I

.field public static final TITLE_DIVIDER_LINE_HEIGHT:I

.field public static final TITLE_DIVIDER_LINE_POS_Y:I

.field public static final TITLE_DIVIDER_LINE_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field public static final TITLE_INFO_LEFT_PADDING:I

.field public static final TITLE_INFO_POS_Y:I

.field public static final TITLE_INFO_WIDTH:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_SIZE:F

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mHasInfoButton:Z

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mInfoButton:Lcom/sec/android/glview/TwGLButton;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenuID:I

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mSlideDirection:I

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    .line 52
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    .line 54
    const v0, 0x7f0a0141

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    .line 55
    const v0, 0x7f0a0142

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    .line 56
    const v0, 0x7f0a0143

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_OFFSET_FROM_ANCHOR:I

    .line 57
    const v0, 0x7f0a0144

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_MAX_OFFSET:I

    .line 58
    const v0, 0x7f0a0145

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_TOP:I

    .line 59
    const v0, 0x7f0a0146

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

    .line 60
    const v0, 0x7f0a0150

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_POS_X:I

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0a0147

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0a0148

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_POS_Y:[I

    .line 62
    const v0, 0x7f0a0151

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_OFFSET:I

    .line 64
    const v0, 0x7f0a0149

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    .line 65
    const v0, 0x7f0a014a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    .line 66
    const v0, 0x7f0a014c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    .line 67
    const v0, 0x7f0a014d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    .line 69
    const v0, 0x7f0a0153

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    .line 70
    const v0, 0x7f0a0154

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    .line 71
    const v0, 0x7f0a0155

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TOP_PADDING:I

    .line 72
    const v0, 0x7f0b0052

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_SIZE:F

    .line 73
    const v0, 0x7f09000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    .line 74
    const v0, 0x7f0a015a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DEVIDER_LINE_OFFSET:I

    .line 76
    const v0, 0x7f0a0157

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_POS_Y:I

    .line 77
    const v0, 0x7f0a0158

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    .line 78
    const v0, 0x7f0a0159

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_HEIGHT:I

    .line 79
    const v0, 0x7f0a015b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_POS_Y:I

    .line 80
    const v0, 0x7f0a015c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    .line 81
    const v0, 0x7f0a015d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    .line 82
    const v0, 0x7f0a015f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    .line 83
    const v0, 0x7f0a0161

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    .line 84
    const v0, 0x7f0a0162

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_Y_PADDING:I

    .line 85
    const v0, 0x7f0a0163

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_Y_270_PADDING:I

    .line 86
    const v0, 0x7f0a0164

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WRAPPER_PADDING_OFFSET_X:I

    .line 87
    const v0, 0x7f0a0165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WRAPPER_PADDING_OFFSET_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "slideDirection"    # I

    .prologue
    const/4 v7, 0x0

    .line 106
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    .line 101
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 102
    iput-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 108
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    .line 109
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 110
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 111
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    .line 112
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->init()V

    .line 114
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
    .param p8, "hasInfoButton"    # Z

    .prologue
    .line 118
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 120
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    .line 121
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 122
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 123
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    .line 124
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    .line 125
    iput-boolean p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->init()V

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method private init()V
    .locals 12

    .prologue
    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_Y_270_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v11

    .line 133
    .local v11, "menuPadding":Landroid/graphics/Rect;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WRAPPER_PADDING_OFFSET_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WRAPPER_PADDING_OFFSET_Y:I

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 135
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 136
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget v1, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v11, Landroid/graphics/Rect;->right:I

    sub-int v10, v0, v1

    .line 138
    .local v10, "mTitleWidth":I
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    if-eqz v0, :cond_0

    .line 139
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    sub-int v0, v10, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    sub-int v10, v0, v1

    .line 141
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    add-int/2addr v2, v10

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_DIVIDER_LINE_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_LEFT_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    iget v5, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_INFO_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f020229

    const v7, 0x7f02022b

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xbcd

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 150
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v10

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TEXT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 156
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHasInfoButton:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mInfoButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOrientation(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSettingMenuActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_Y_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_LANDSCAPE_BOTTOM_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_Y_270_PADDING:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mZOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getExpandAnimation(Lcom/sec/android/glview/TwGLView;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 192
    return-void

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mSlideDirection:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    .line 198
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 199
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 287
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 279
    :cond_2
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbcd

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onHelpPopupSelect(I)V

    .line 374
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 257
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 258
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 305
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 294
    .local v0, "depth":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->getZorder()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 295
    add-int/lit8 v0, v0, -0x1

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    move v1, v0

    .line 298
    .end local v0    # "depth":I
    .local v1, "depth":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    if-lez v1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v1, v0

    .end local v0    # "depth":I
    .restart local v1    # "depth":I
    goto :goto_0

    .line 301
    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    :cond_1
    return-void
.end method

.method protected onShow()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0c0221

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isSettingMenuActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_Y_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->refreshMenuPosition()V

    .line 238
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "mListTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 250
    .end local v0    # "mListTitle":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_SIDE_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v6, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    goto/16 :goto_0

    .line 246
    .restart local v0    # "mListTitle":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_1
.end method

.method public refreshMenuPosition()V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 309
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_POS_Y:I

    int-to-float v3, v4

    .line 311
    .local v3, "top":F
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getLeft()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_OFFSET_FROM_ANCHOR:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 313
    .local v2, "move":F
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_MAX_OFFSET:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 314
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_MAX_OFFSET:I

    int-to-float v2, v4

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4, v2, v7}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    .line 369
    :goto_0
    return-void

    .line 318
    .end local v2    # "move":F
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v1

    .line 319
    .local v1, "height":F
    add-float v0, v3, v1

    .line 321
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 355
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mLaunchY:F

    div-float v5, v1, v6

    add-float/2addr v5, v3

    sub-float v2, v4, v5

    .line 357
    .restart local v2    # "move":F
    add-float v4, v3, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 358
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sub-float v2, v4, v3

    .line 361
    :cond_2
    add-float v4, v0, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 362
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float v2, v4, v0

    .line 365
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_POS_X:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto :goto_0

    .line 323
    .end local v2    # "move":F
    :pswitch_0
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_TOP:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mLaunchY:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_OFFSET:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v2, v4, v1

    .line 325
    .restart local v2    # "move":F
    cmpg-float v4, v2, v7

    if-gez v4, :cond_4

    .line 326
    const/4 v2, 0x0

    .line 329
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_POS_Y:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto :goto_0

    .line 332
    .end local v2    # "move":F
    :pswitch_1
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_PORTRAIT_TOP:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->TITLE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mLaunchY:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->LIST_ITEM_HEIGHT:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_OFFSET:I

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 334
    .restart local v2    # "move":F
    add-float v4, v2, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 335
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sub-float v2, v4, v1

    .line 338
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_POS_Y:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 341
    .end local v2    # "move":F
    :pswitch_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mLaunchY:F

    sub-float/2addr v4, v5

    div-float v5, v1, v6

    add-float/2addr v5, v3

    sub-float v2, v4, v5

    .line 343
    .restart local v2    # "move":F
    add-float v4, v3, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 344
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

    int-to-float v4, v4

    sub-float v2, v4, v3

    .line 347
    :cond_6
    add-float v4, v0, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 348
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float v2, v4, v0

    .line 351
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->SCREEN_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_WIDTH:I

    sub-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_POS_X:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;->MENU_DEPTH_PORTRAIT_TOP_MARGIN:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
