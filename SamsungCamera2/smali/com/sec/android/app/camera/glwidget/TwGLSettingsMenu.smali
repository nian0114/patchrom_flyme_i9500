.class public Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final CAMCORDER_TAB:I = 0x1

.field private static final CAMERA_TAB:I = 0x0

.field private static final COMMON_TAB:I = 0x2

.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_MARGIN:I

.field private static final MENU_POS_X_LANDSCAPE:I

.field private static final MENU_POS_X_PORTRAIT:I

.field private static final MENU_POS_Y_LANDSCAPE:I

.field private static final MENU_POS_Y_PORTRAIT:I

.field private static final MENU_WIDTH:I

.field private static final NUM_OF_SETTINGS_TAB:I = 0x3

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final TAB_HIGHLIGHT_COLOR:I

.field private static final TAG:Ljava/lang/String; = "TwGLSettingsMenu"

.field private static final TITLE_BTN_CAMCORDER_POS_X:I

.field private static final TITLE_BTN_CAMERA_POS_X:I

.field private static final TITLE_BTN_COMMON_POS_X:I

.field private static final TITLE_DEVIDER_LINE_HEIGHT:I

.field private static final TITLE_DEVIDER_LINE_POS_Y:I

.field private static final TITLE_DEVIDE_LINE_WIDTH:I

.field private static final TITLE_GROUP_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_IMG_CAMCORDER_OFFSET_X:I

.field private static final TITLE_IMG_CAMMERA_OFFSET_X:I

.field private static final TITLE_IMG_COMMON_OFFSET_X:I

.field private static final TITLE_IMG_OFFSET_Y:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TAB_FOCUS_LINE_HEIGHT:I

.field private static final TITLE_TAB_FOCUS_LINE_POS_Y:I

.field private static final TITLE_TAB_UNFOCUS_LINE_HEIGHT:I

.field private static final TITLE_TAB_UNFOCUS_LINE_POS_Y:I

.field private static final TITLE_TOP_PADDING:I

.field private static final TITLE_WIDTH:[I


# instance fields
.field private mCamcorderItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCamcorderList:Lcom/sec/android/glview/TwGLList;

.field private mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

.field private mCamcorderResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mCameraItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraList:Lcom/sec/android/glview/TwGLList;

.field private mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

.field private mCommonItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonList:Lcom/sec/android/glview/TwGLList;

.field private mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

.field private mCommonResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mCurrentTab:I

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSelectedSettingMenuId:I

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mTabListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLList;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleCamcorderUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleCameraUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleCommonUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleDividerLine1:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleDividerLine2:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleUnFocusLineArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLNinePatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f0a0200

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const v0, 0x7f0a0475

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SCREEN_WIDTH:I

    .line 60
    const v0, 0x7f0a0476

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SCREEN_HEIGHT:I

    .line 61
    const v0, 0x7f0a01f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    .line 62
    const v0, 0x7f0a01fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    .line 64
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X_LANDSCAPE:I

    .line 65
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y_LANDSCAPE:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X_PORTRAIT:I

    .line 67
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y_PORTRAIT:I

    .line 68
    const v0, 0x7f0a01fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_MARGIN:I

    .line 70
    const v0, 0x7f0a0203

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    .line 71
    const v0, 0x7f0a0204

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    .line 73
    const v0, 0x7f0a0202

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    .line 75
    const v0, 0x7f0a01fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    .line 76
    const v0, 0x7f0a01fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    .line 77
    const v0, 0x7f0a0205

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_GROUP_WIDTH:I

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [I

    const v1, 0x7f0a0206

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0a0207

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const/4 v1, 0x2

    const v2, 0x7f0a0208

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    .line 81
    const v0, 0x7f0a020e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    .line 84
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    aget v0, v0, v3

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_BTN_CAMCORDER_POS_X:I

    .line 85
    sget-object v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    aget v0, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    aget v1, v1, v4

    add-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_BTN_COMMON_POS_X:I

    .line 87
    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_CAMMERA_OFFSET_X:I

    .line 88
    const v0, 0x7f0a0201

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_CAMCORDER_OFFSET_X:I

    .line 89
    invoke-static {v5}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_COMMON_OFFSET_X:I

    .line 90
    const v0, 0x7f0a01fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_OFFSET_Y:I

    .line 92
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    const v1, 0x7f0a020d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDER_LINE_POS_Y:I

    .line 93
    const v0, 0x7f0a020f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDER_LINE_HEIGHT:I

    .line 95
    const v0, 0x7f0a0209

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_POS_Y:I

    .line 96
    const v0, 0x7f0a020a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_HEIGHT:I

    .line 97
    const v0, 0x7f0a020b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_POS_Y:I

    .line 98
    const v0, 0x7f0a020c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_HEIGHT:I

    .line 99
    const v0, 0x7f09000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TAB_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 13
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "resourceData"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p6, "zOrder"    # I
    .param p7, "animationType"    # I

    .prologue
    .line 132
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    .line 113
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    .line 114
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    .line 115
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleDividerLine2:Lcom/sec/android/glview/TwGLNinePatch;

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCameraUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCamcorderUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCommonUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    .line 126
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 134
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbbd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbbe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 138
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X_LANDSCAPE:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y_LANDSCAPE:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f0200ca

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setNinePatchBackground(I)Z

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X_PORTRAIT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y_PORTRAIT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X_LANDSCAPE:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y_LANDSCAPE:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_X_PORTRAIT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_POS_Y_PORTRAIT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 149
    if-ltz p7, :cond_1

    const/4 v1, 0x3

    move/from16 v0, p7

    if-gt v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 160
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_GROUP_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 162
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0200cb

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TAB_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_CAMMERA_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 168
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_BTN_CAMCORDER_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0200cd

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TAB_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_CAMCORDER_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xbbd

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 174
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_BTN_COMMON_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0200cc

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TAB_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_COMMON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_IMG_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xbbe

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 185
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_POS_Y:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0204d6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 190
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_POS_Y:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0204d7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCameraUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 192
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCameraUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 193
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_POS_Y:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0204d7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCamcorderUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 195
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_POS_Y:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_UNFOCUS_LINE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0204d7

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCommonUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCameraUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCamcorderUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCommonUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCameraUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCamcorderUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleCommonUnFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 207
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDER_LINE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDER_LINE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0204d5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleDividerLine1:Lcom/sec/android/glview/TwGLNinePatch;

    .line 209
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDER_LINE_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDER_LINE_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f0204d5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleDividerLine2:Lcom/sec/android/glview/TwGLNinePatch;

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleDividerLine1:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleDividerLine2:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 216
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_MARGIN:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f0204d3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Landroid/util/SparseArray;Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 223
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_MARGIN:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f0204d3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Landroid/util/SparseArray;Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 230
    new-instance v1, Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_LEFT_PADDING:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TOP_PADDING:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_HEIGHT:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_HEIGHT:I

    sub-int/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_MARGIN:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    const v2, 0x7f0204d3

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Landroid/util/SparseArray;Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setInternalFocus(Z)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLList;

    .line 251
    .local v12, "selectedList":Lcom/sec/android/glview/TwGLList;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 256
    .end local v12    # "selectedList":Lcom/sec/android/glview/TwGLList;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 257
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mHideAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method private declared-synchronized switchTab(I)V
    .locals 6
    .param p1, "tabId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 458
    monitor-enter p0

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 498
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    if-eq v2, p1, :cond_4

    .line 462
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 464
    if-ne v0, p1, :cond_2

    .line 465
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLList;

    .line 466
    .local v1, "selectedList":Lcom/sec/android/glview/TwGLList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setVisibility(I)V

    .line 467
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 468
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 469
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 471
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 463
    .end local v1    # "selectedList":Lcom/sec/android/glview/TwGLList;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLList;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 458
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 477
    .restart local v0    # "i":I
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    packed-switch v2, :pswitch_data_0

    .line 495
    .end local v0    # "i":I
    :cond_4
    :goto_3
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    if-nez v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_0

    .line 479
    .restart local v0    # "i":I
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 481
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_3

    .line 484
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 485
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 486
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_3

    .line 489
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 490
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_DEVIDE_LINE_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 491
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleTabFocusLine:Lcom/sec/android/glview/TwGLNinePatch;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_WIDTH:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->TITLE_TAB_FOCUS_LINE_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "TwGLSettingsMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTabListArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mTitleUnFocusLineArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 321
    return-void
.end method

.method public focusToLastSelectedItem()V
    .locals 3

    .prologue
    .line 354
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    .line 379
    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    :goto_0
    return-void

    .line 358
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 360
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->requestFocus()Z

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 366
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->requestFocus()Z

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 372
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->requestFocus()Z

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mMenuWrapper:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v3

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mShowAnimation:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraMenuTitle:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 431
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBaseMenu()V

    .line 417
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_1
    return v0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    goto :goto_0

    .line 421
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 502
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->isAnimationFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->getZorder()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 514
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v0, v1

    .line 527
    goto :goto_0

    .line 516
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->switchTab(I)V

    goto :goto_1

    .line 519
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->switchTab(I)V

    goto :goto_1

    .line 522
    :sswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->switchTab(I)V

    goto :goto_1

    .line 514
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0xbbd -> :sswitch_1
        0xbbe -> :sswitch_2
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "TwGLSettingsMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 349
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 350
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->showBaseMenu()V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 450
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 325
    const-string v0, "TwGLSettingsMenu"

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->resetSettingsText()V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->focusToLastSelectedItem()V

    .line 334
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 335
    return-void
.end method

.method public resetSettingsText()V
    .locals 3

    .prologue
    .line 382
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCurrentTab:I

    packed-switch v1, :pswitch_data_0

    .line 407
    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :cond_0
    :goto_0
    return-void

    .line 386
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCameraItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 388
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSettingsText()V

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCamcorderItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 394
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSettingsText()V

    goto :goto_0

    .line 398
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCommonItemList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 400
    .restart local v0    # "selectedItem":Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSettingsText()V

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSelectedSettingMenuId(I)V
    .locals 0
    .param p1, "commandId"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mSelectedSettingMenuId:I

    .line 454
    return-void
.end method
