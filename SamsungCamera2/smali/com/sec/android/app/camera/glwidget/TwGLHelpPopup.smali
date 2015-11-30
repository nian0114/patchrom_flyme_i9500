.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLHelpPopup.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_TOP_PADDING:I

.field private static final POPUP_HEIGHT:I

.field private static final POPUP_PORTRAIT_HEIGHT:I

.field private static final POPUP_PORTRAIT_POS_X:I

.field private static final POPUP_PORTRAIT_WIDTH:I

.field private static final POPUP_POS_X:I

.field private static final POPUP_POS_Y:I

.field private static final POPUP_TIMEOVER:I = 0x2710

.field private static final POPUP_WIDTH:I

.field private static final TITLE_CLOSE_LEFT_PADDING:I

.field private static final TITLE_CLOSE_POS_Y:I

.field private static final TITLE_CLOSE_WIDTH:I

.field private static final TITLE_DEVIDER_LINE_OFFSET:I

.field private static final TITLE_DIVIDER_LINE_HEIGHT:I

.field private static final TITLE_DIVIDER_LINE_POS_Y:I

.field private static final TITLE_DIVIDER_LINE_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TEXT_HEIGHT:I

.field private static final TITLE_TEXT_SIZE:F

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mDescriptionIconResId:I

.field private mDescriptionType:I

.field private mHasListTopBottomPadding:Z

.field private mHelpDescriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpListSize:I

.field private mHelpSubTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIsPopupTimeOut:Z

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mListContentHeight:I

.field private mMenuTitle:Ljava/lang/String;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mShareshotItemStringId:I

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTitleWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f0a036a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    .line 56
    const v0, 0x7f0a036b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    .line 57
    const v0, 0x7f0a036c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    .line 58
    const v0, 0x7f0a036d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    .line 59
    const v0, 0x7f0a037a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a037b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    .line 61
    const v0, 0x7f0a037d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    .line 62
    const v0, 0x7f0a036e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    .line 63
    const v0, 0x7f0a036f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    .line 64
    const v0, 0x7f0a0370

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    .line 65
    const v0, 0x7f0a0371

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TOP_PADDING:I

    .line 66
    const v0, 0x7f0b006b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_SIZE:F

    .line 67
    const v0, 0x7f09000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_COLOR:I

    .line 68
    const v0, 0x7f0a0372

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_POS_Y:I

    .line 69
    const v0, 0x7f0a0373

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_WIDTH:I

    .line 70
    const v0, 0x7f0a0374

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_HEIGHT:I

    .line 71
    const v0, 0x7f0a0375

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DEVIDER_LINE_OFFSET:I

    .line 72
    const v0, 0x7f0a0376

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_POS_Y:I

    .line 73
    const v0, 0x7f0a0377

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    .line 74
    const v0, 0x7f0a0378

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    .line 75
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I

    .line 76
    const v0, 0x7f0a037e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I

    .line 77
    const v0, 0x7f0a0379

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_TOP_PADDING:I

    return-void

    .line 60
    :cond_0
    const v0, 0x7f0a037c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 106
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    .line 108
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->iniResources(I)V

    .line 111
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v10

    .line 118
    .local v10, "menuPaddings":Landroid/graphics/Rect;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    .line 121
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 122
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TOP_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 125
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_WIDTH:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f02005f

    const v7, 0x7f020060

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xbcc

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setInternalFocus(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 134
    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f0204d3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLList;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    .line 506
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 507
    return-void
.end method

.method public iniResources(I)V
    .locals 18
    .param p1, "modeId"    # I

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0263

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0264

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 165
    .local v8, "res":Landroid/content/res/Resources;
    if-eqz v8, :cond_0

    .line 168
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 169
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 170
    .local v2, "globalLocale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "voicetalk_language"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, "voiceLocale":Ljava/lang/String;
    if-nez v10, :cond_5

    .line 175
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 176
    new-instance v12, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v10, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 188
    :cond_1
    :goto_1
    const-string v12, "zh"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 189
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "CN"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "HK"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 190
    :cond_2
    new-instance v12, Ljava/util/Locale;

    const-string v13, "zh"

    const-string v14, "CN"

    invoke-direct {v12, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 195
    :cond_3
    :goto_2
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 196
    const/high16 v12, 0x7f080000

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "mBargeInCommands":[Ljava/lang/String;
    const-string v7, ""

    .line 198
    .local v7, "mHelpDescriptionListItems":Ljava/lang/String;
    array-length v4, v5

    .line 199
    .local v4, "itemsLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v4, :cond_7

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v5, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    add-int/lit8 v12, v4, -0x1

    if-ge v3, v12, :cond_4

    .line 202
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 199
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 179
    .end local v3    # "i":I
    .end local v4    # "itemsLength":I
    .end local v5    # "mBargeInCommands":[Ljava/lang/String;
    .end local v7    # "mHelpDescriptionListItems":Ljava/lang/String;
    :cond_5
    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "splitVoiceLocale":[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 182
    const/4 v11, 0x0

    .line 183
    .local v11, "voicetalkLocale":Ljava/util/Locale;
    new-instance v11, Ljava/util/Locale;

    .end local v11    # "voicetalkLocale":Ljava/util/Locale;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    const/4 v13, 0x1

    aget-object v13, v9, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .restart local v11    # "voicetalkLocale":Ljava/util/Locale;
    iput-object v11, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto/16 :goto_1

    .line 192
    .end local v9    # "splitVoiceLocale":[Ljava/lang/String;
    .end local v11    # "voicetalkLocale":Ljava/util/Locale;
    :cond_6
    new-instance v12, Ljava/util/Locale;

    const-string v13, "en"

    invoke-direct {v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v12, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_2

    .line 205
    .restart local v3    # "i":I
    .restart local v4    # "itemsLength":I
    .restart local v5    # "mBargeInCommands":[Ljava/lang/String;
    .restart local v7    # "mHelpDescriptionListItems":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const v12, 0x7f080001

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "mBargeInCommandsForRecording":[Ljava/lang/String;
    const-string v7, ""

    .line 209
    array-length v4, v6

    .line 210
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_9

    .line 211
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v6, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    add-int/lit8 v12, v4, -0x1

    if-ge v3, v12, :cond_8

    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 210
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 216
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 219
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0265

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 223
    const v12, 0x7f02045c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    .line 224
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 227
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "globalLocale":Ljava/util/Locale;
    .end local v3    # "i":I
    .end local v4    # "itemsLength":I
    .end local v5    # "mBargeInCommands":[Ljava/lang/String;
    .end local v6    # "mBargeInCommandsForRecording":[Ljava/lang/String;
    .end local v7    # "mHelpDescriptionListItems":Ljava/lang/String;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v10    # "voiceLocale":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0268

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0269

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026a

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->isMmsCapable()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026b

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026c

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026f

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0270

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x78

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0271

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0272

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 257
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 260
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0268

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0269

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026a

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/Camera;->isMmsCapable()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026b

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c026c

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_b
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 274
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 277
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0274

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_d

    const v12, 0x7f0c0277

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0275

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0278

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0279

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget-object v13, Lcom/sec/android/app/camera/Feature;->PACKAGE_NAME_CHATON:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027a

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027b

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0230

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027e

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 300
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 279
    :cond_d
    const v12, 0x7f0c0276

    goto/16 :goto_5

    .line 303
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0274

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_f

    const v12, 0x7f0c0277

    :goto_6
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0275

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0278

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0279

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget-object v13, Lcom/sec/android/app/camera/Feature;->PACKAGE_NAME_CHATON:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 313
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027a

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027b

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_e
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 317
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 305
    :cond_f
    const v12, 0x7f0c0276

    goto/16 :goto_6

    .line 320
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0274

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 322
    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_11

    const v12, 0x7f0c0277

    :goto_7
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0275

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget-object v13, Lcom/sec/android/app/camera/Feature;->PACKAGE_NAME_CHATON:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027a

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027b

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_10
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 331
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 322
    :cond_11
    const v12, 0x7f0c0276

    goto :goto_7

    .line 337
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0152

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 339
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c027f

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 342
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 345
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0038

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 346
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0280

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 349
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 355
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0150

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 357
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0281

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 360
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 363
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0132

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 364
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 365
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0282

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 367
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 370
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0133

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 371
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 372
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0283

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 374
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 377
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c014d

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 378
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0284

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 381
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 384
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0136

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 385
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0285

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 388
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 391
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0137

    invoke-virtual {v12, v13}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    .line 392
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0287

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    .line 395
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0xbce
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 544
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 526
    const/4 v0, 0x1

    .line 528
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 520
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 514
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0xbcc
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 496
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 497
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 561
    packed-switch p1, :pswitch_data_0

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setWidth(F)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    .line 567
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 570
    if-nez p1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    .line 579
    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLButton;->moveLayoutAbsolute(FF)V

    .line 582
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    goto/16 :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto :goto_1

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 577
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    goto :goto_1

    .line 588
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setWidth(F)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    .line 591
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 594
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    .line 603
    :goto_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_DIVIDER_LINE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLButton;->moveLayoutAbsolute(FF)V

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    goto/16 :goto_0

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translateAbsolute(FF)V

    goto :goto_2

    .line 600
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    goto/16 :goto_2

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 551
    .local v0, "depth":I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->getZorder()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 552
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 554
    .end local v0    # "depth":I
    .local v1, "depth":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    if-lez v1, :cond_0

    .line 555
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v1, v0

    .end local v0    # "depth":I
    .restart local v1    # "depth":I
    goto :goto_0

    .line 557
    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .end local v0    # "depth":I
    .restart local v1    # "depth":I
    goto :goto_0
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 463
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 465
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;->start()V

    .line 492
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 617
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 630
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 619
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 625
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
