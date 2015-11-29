.class public Landroid/widget/MzActionMenuView;
.super Landroid/widget/LinearLayout;
.source "MzActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MzActionMenuView$1;,
        Landroid/widget/MzActionMenuView$LayoutParams;,
        Landroid/widget/MzActionMenuView$ActionMenuChildView;,
        Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/MzActionMenuView$MenuBuilderCallback;,
        Landroid/widget/MzActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mCellWidth:I

.field private mExtraPadding:I

.field private mExtraPaddingFor4:I

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mItemPadding:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuShowGravity:I

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/MzActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mShouldDectePaddingAjustment:Z

.field mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MzActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    iput v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    iput-boolean v2, p0, Landroid/widget/MzActionMenuView;->mShouldDectePaddingAjustment:Z

    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/MzActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v2, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    invoke-direct {p0}, Landroid/widget/MzActionMenuView;->updatePaddingsForItem()V

    invoke-direct {p0}, Landroid/widget/MzActionMenuView;->updateSmartBarConfiguration()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/MzActionMenuView;)Landroid/widget/MzActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuView;

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/MzActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MzActionMenuView;

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method private getTextMenuMaxWidth(I)I
    .locals 4
    .param p1, "cellsWidthSize"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    iget v1, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .local v1, "maxWidth":I
    if-lez v0, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    move v1, p1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    iget v3, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    goto :goto_0

    :pswitch_2
    iget v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    iget v3, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    mul-int/2addr v3, v0

    sub-int v3, p1, v3

    add-int v1, v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getVisibleChildAt(IZ)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I
    .param p2, "allVisiable"    # Z

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v2, -0x1

    .local v2, "visibleIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-ne v2, p1, :cond_3

    move v2, v1

    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isActionView(Landroid/view/View;)Z
    .locals 4
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/MzActionMenuView$LayoutParams;

    .local v0, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/MzActionMenuItem;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SelectionButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutMenuItems(III)V
    .locals 24
    .param p1, "visibleItemCount"    # I
    .param p2, "widthRemaining"    # I
    .param p3, "midVertical"    # I

    .prologue
    const/4 v5, 0x0

    .local v5, "child":Landroid/view/View;
    const/16 v18, 0x0

    .local v18, "startLeft":I
    const/4 v10, 0x0

    .local v10, "endRight":I
    const/4 v7, 0x0

    .local v7, "childLeft":I
    const/4 v8, 0x0

    .local v8, "childRight":I
    const/4 v12, 0x0

    .local v12, "height":I
    const/16 v20, 0x0

    .local v20, "width":I
    const/16 v19, 0x0

    .local v19, "t":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    const/4 v11, 0x0

    .local v11, "expand":I
    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    const/4 v14, 0x1

    .local v14, "isAllVisible":Z
    :goto_0
    sget-object v21, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_11

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v21

    if-eqz v21, :cond_11

    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int v4, v21, p1

    .local v4, "cellWidth":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v7, v21, v22

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    move/from16 v18, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    .end local v14    # "isAllVisible":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .restart local v14    # "isAllVisible":Z
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    const/4 v9, 0x1

    .local v9, "enableBackButton":Z
    instance-of v0, v5, Lcom/meizu/widget/KeyBackButton;

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/4 v9, 0x0

    :cond_3
    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int/lit8 v17, v21, 0x2

    .local v17, "perMaxWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, p2, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .end local v9    # "enableBackButton":Z
    .end local v17    # "perMaxWidth":I
    :cond_4
    :goto_2
    return-void

    .restart local v9    # "enableBackButton":Z
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .end local v9    # "enableBackButton":Z
    :cond_6
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    const/4 v9, 0x1

    .restart local v9    # "enableBackButton":Z
    instance-of v0, v5, Lcom/meizu/widget/KeyBackButton;

    move/from16 v21, v0

    if-nez v21, :cond_7

    const/4 v9, 0x0

    :cond_7
    if-nez v9, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int/lit8 v17, v21, 0x3

    .restart local v17    # "perMaxWidth":I
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    add-int v21, v21, v17

    sub-int v7, v21, v20

    :goto_3
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v22, v17, 0x2

    add-int v7, v21, v22

    :goto_4
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    goto :goto_3

    :cond_9
    mul-int/lit8 v21, v17, 0x2

    add-int v21, v21, p2

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    goto :goto_4

    .end local v17    # "perMaxWidth":I
    :cond_a
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_5
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    add-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .end local v9    # "enableBackButton":Z
    :cond_d
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_6
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    if-ge v13, v0, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    move/from16 v22, v0

    add-int v22, v22, v4

    mul-int v22, v22, v13

    add-int v7, v21, v22

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    sub-int v21, v7, v11

    add-int v22, v7, v20

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_e
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    add-int/lit8 v22, p1, -0x1

    sub-int v22, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    move/from16 v23, v0

    add-int v23, v23, v4

    mul-int v22, v22, v23

    sub-int v8, v21, v22

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    instance-of v0, v5, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    sub-int v21, v8, v20

    add-int v21, v21, v11

    add-int v22, v8, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_10
    sub-int v21, v8, v20

    add-int v22, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_7

    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v21, v0

    if-lez v21, :cond_12

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    const/4 v15, 0x0

    .local v15, "l":I
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :goto_8
    :pswitch_0
    add-int v21, v15, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    goto :goto_8

    :pswitch_2
    div-int/lit8 v16, p2, 0x2

    .local v16, "midHorizontal":I
    div-int/lit8 v21, v20, 0x2

    sub-int v15, v16, v21

    goto :goto_8

    .end local v16    # "midHorizontal":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v15, v21, v20

    goto :goto_8

    .end local v15    # "l":I
    :cond_12
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    :cond_13
    div-int v4, p2, p1

    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_9
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    move/from16 v18, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_14
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_15
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_16
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int v4, v21, p1

    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_a
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/widget/MzActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    move/from16 v22, v0

    add-int v7, v21, v22

    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    move/from16 v18, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/MzActionMenuView$LayoutParams;

    .local v8, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/MzActionMenuItemView;

    if-eqz v11, :cond_4

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move-object v7, v11

    .local v7, "itemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .local v0, "cellsUsed":I
    if-lez p2, :cond_6

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_6

    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    :goto_2
    iget-boolean v11, v8, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_7

    if-eqz v6, :cond_7

    const/4 v5, 0x1

    .local v5, "expandable":Z
    :goto_3
    iput-boolean v5, v8, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    if-eqz v5, :cond_3

    mul-int v11, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    iput-boolean v11, v8, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    :cond_3
    iput v0, v8, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v10, v0, p1

    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    return v0

    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .restart local v7    # "itemView":Lcom/android/internal/view/menu/MzActionMenuItemView;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_6
    if-eqz v6, :cond_2

    const/4 v11, 0x1

    if-ne p2, v11, :cond_2

    move v0, p2

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 48
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .local v23, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v43

    .local v43, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .local v25, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v45

    add-int v42, v44, v45

    .local v42, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingTop()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingBottom()I

    move-result v45

    add-int v24, v44, v45

    .local v24, "heightPadding":I
    const/16 v44, -0x2

    move/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/MzActionMenuView;->getChildMeasureSpec(III)I

    move-result v28

    .local v28, "itemHeightSpec":I
    sub-int v43, v43, v42

    const/16 v21, 0x0

    .local v21, "hasCustomAction":Z
    invoke-static/range {v28 .. v28}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    sub-int v15, v44, v24

    .local v15, "childHeightSize":I
    invoke-static/range {v28 .. v28}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .local v14, "childHeightMode":I
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .local v16, "childHeightSpec":I
    const/16 v17, 0x0

    .local v17, "childWidthSpec":I
    move/from16 v10, v43

    .local v10, "cellsWidthSize":I
    sget-object v44, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    if-le v10, v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    sub-int v10, v10, v44

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    div-int v4, v10, v44

    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    rem-int v6, v10, v44

    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_1

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/MzActionMenuView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    div-int v45, v6, v4

    add-int v5, v44, v45

    .local v5, "cellSize":I
    move v8, v4

    .local v8, "cellsRemaining":I
    const/16 v31, 0x0

    .local v31, "maxChildHeight":I
    const/16 v30, 0x0

    .local v30, "maxCellsUsed":I
    const/16 v19, 0x0

    .local v19, "expandableItemCount":I
    const/16 v40, 0x0

    .local v40, "visibleItemCount":I
    const/16 v22, 0x0

    .local v22, "hasOverflow":Z
    const-wide/16 v38, 0x0

    .local v38, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v13

    .local v13, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v13, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_2
    instance-of v0, v12, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v27, v0

    .local v27, "isGeneratedItem":Z
    add-int/lit8 v40, v40, 0x1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .local v29, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v27, :cond_6

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v44

    if-eqz v44, :cond_6

    const/16 v44, 0x1

    :goto_3
    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_7

    const/4 v7, 0x1

    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v12, v5, v7, v0, v1}, Landroid/widget/MzActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .local v9, "cellsUsed":I
    move/from16 v0, v30

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v30

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-eqz v44, :cond_3

    add-int/lit8 v19, v19, 0x1

    :cond_3
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_4

    const/16 v22, 0x1

    :cond_4
    sub-int/2addr v8, v9

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    move/from16 v0, v31

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v9, v0, :cond_5

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v38, v38, v44

    :cond_5
    if-eqz v27, :cond_8

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/MzActionMenuItemView;

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/MzActionMenuItemView;->hasText()Z

    move-result v44

    if-eqz v44, :cond_8

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/MzActionMenuView;->getTextMenuMaxWidth(I)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/view/menu/MzActionMenuItemView;->setMaxWidth(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/MzActionMenuView;->getTextMenuMaxWidth(I)I

    move-result v44

    const/high16 v45, -0x80000000

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v12, v1, v2}, Landroid/widget/MzActionMenuView;->measureChild(Landroid/view/View;II)V

    goto/16 :goto_2

    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v44, 0x0

    goto/16 :goto_3

    :cond_7
    move v7, v8

    goto :goto_4

    .restart local v7    # "cellsAvailable":I
    .restart local v9    # "cellsUsed":I
    :cond_8
    invoke-static {v12}, Landroid/widget/MzActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v44

    if-eqz v44, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    :cond_9
    const/16 v21, 0x1

    goto/16 :goto_2

    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    .end local v12    # "child":Landroid/view/View;
    .end local v27    # "isGeneratedItem":Z
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_a
    if-eqz v22, :cond_c

    const/16 v44, 0x2

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_c

    const/4 v11, 0x1

    .local v11, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v36, 0x0

    .local v36, "needsExpansion":Z
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v44, v0

    if-nez v44, :cond_10

    if-lez v19, :cond_10

    if-lez v8, :cond_10

    const v32, 0x7fffffff

    .local v32, "minCells":I
    const-wide/16 v34, 0x0

    .local v34, "minCellsAt":J
    const/16 v33, 0x0

    .local v33, "minCellsItemCount":I
    const/16 v26, 0x0

    :goto_7
    move/from16 v0, v26

    if-ge v0, v13, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-nez v44, :cond_d

    :cond_b
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .end local v11    # "centerSingleExpandedItem":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v32    # "minCells":I
    .end local v33    # "minCellsItemCount":I
    .end local v34    # "minCellsAt":J
    .end local v36    # "needsExpansion":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .restart local v11    # "centerSingleExpandedItem":Z
    .restart local v12    # "child":Landroid/view/View;
    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .restart local v32    # "minCells":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v34    # "minCellsAt":J
    .restart local v36    # "needsExpansion":Z
    :cond_d
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const/16 v33, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v34, v34, v44

    add-int/lit8 v33, v33, 0x1

    goto :goto_8

    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_f
    or-long v38, v38, v34

    move/from16 v0, v33

    if-le v0, v8, :cond_15

    .end local v32    # "minCells":I
    .end local v33    # "minCellsItemCount":I
    .end local v34    # "minCellsAt":J
    :cond_10
    if-nez v22, :cond_1a

    const/16 v44, 0x1

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_1a

    const/16 v37, 0x1

    .local v37, "singleItem":Z
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    move/from16 v44, v0

    if-nez v44, :cond_22

    if-lez v8, :cond_22

    const-wide/16 v44, 0x0

    cmp-long v44, v38, v44

    if-eqz v44, :cond_22

    if-eqz v21, :cond_22

    add-int/lit8 v44, v40, -0x1

    move/from16 v0, v44

    if-lt v8, v0, :cond_11

    if-nez v37, :cond_11

    const/16 v44, 0x1

    move/from16 v0, v30

    move/from16 v1, v44

    if-le v0, v1, :cond_22

    :cond_11
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->bitCount(J)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v18, v0

    .local v18, "expandCount":F
    if-nez v37, :cond_13

    const-wide/16 v44, 0x1

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_12

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_12

    const/high16 v44, 0x3f000000    # 0.5f

    sub-float v18, v18, v44

    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_12
    const/16 v44, 0x1

    add-int/lit8 v45, v13, -0x1

    shl-int v44, v44, v45

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_13

    add-int/lit8 v44, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_13

    const/high16 v44, 0x3f000000    # 0.5f

    sub-float v18, v18, v44

    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_13
    const/16 v44, 0x0

    cmpl-float v44, v18, v44

    if-lez v44, :cond_1b

    mul-int v44, v8, v5

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v44, v44, v18

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v20, v0

    .local v20, "extraPixels":I
    :goto_a
    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    if-ge v0, v13, :cond_21

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_1c

    :cond_14
    :goto_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .end local v18    # "expandCount":F
    .end local v20    # "extraPixels":I
    .end local v37    # "singleItem":Z
    .restart local v32    # "minCells":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v34    # "minCellsAt":J
    :cond_15
    add-int/lit8 v32, v32, 0x1

    const/16 v26, 0x0

    :goto_d
    move/from16 v0, v26

    if-ge v0, v13, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v34

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_17

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v38, v38, v44

    :cond_16
    :goto_e
    add-int/lit8 v26, v26, 0x1

    goto :goto_d

    :cond_17
    if-eqz v11, :cond_18

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-eqz v44, :cond_18

    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v8, v0, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mGeneratedItemPadding:I

    move/from16 v44, v0

    add-int v44, v44, v5

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mGeneratedItemPadding:I

    move/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_18
    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_19
    const/16 v36, 0x1

    goto/16 :goto_6

    .end local v32    # "minCells":I
    .end local v33    # "minCellsItemCount":I
    .end local v34    # "minCellsAt":J
    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_9

    .restart local v18    # "expandCount":F
    .restart local v37    # "singleItem":Z
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_a

    .restart local v20    # "extraPixels":I
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/MzActionMenuItemView;

    move/from16 v44, v0

    if-eqz v44, :cond_1e

    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    if-nez v26, :cond_1d

    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_1d

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    :cond_1d
    const/16 v36, 0x1

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1f

    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    const/16 v36, 0x1

    goto/16 :goto_c

    :cond_1f
    if-eqz v26, :cond_20

    div-int/lit8 v44, v20, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    :cond_20
    add-int/lit8 v44, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_14

    div-int/lit8 v44, v20, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_21
    const/4 v8, 0x0

    .end local v18    # "expandCount":F
    .end local v20    # "extraPixels":I
    :cond_22
    if-eqz v36, :cond_25

    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v13, :cond_25

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expanded:Z

    move/from16 v44, v0

    if-nez v44, :cond_24

    :cond_23
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    :cond_24
    move-object/from16 v0, v29

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-eqz v44, :cond_23

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    mul-int v44, v44, v5

    move-object/from16 v0, v29

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v45, v0

    add-int v41, v44, v45

    .local v41, "width":I
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v41

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v41    # "width":I
    :cond_25
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v44

    if-eq v0, v1, :cond_26

    move/from16 v25, v31

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/MzActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method private updatePaddingsForItem()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_padding_for_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    sget v2, Lcom/flyme/internal/R$dimen;->mz_split_action_bar_cell_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_action_bar_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v4, v2, v4}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateSmartBarConfiguration()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mExtraPaddingFor4:I

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mItemPadding:I

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/MzActionMenuView;->mCellWidth:I

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/MzActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(II)V

    .local v0, "params":Landroid/widget/MzActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/widget/MzActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/MzActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(Landroid/widget/MzActionMenuView$LayoutParams;)V

    .local v0, "result":Landroid/widget/MzActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->gravity:I

    .end local v0    # "result":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/MzActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/MzActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->generateDefaultLayoutParams()Landroid/widget/MzActionMenuView$LayoutParams;

    move-result-object v0

    .local v0, "result":Landroid/widget/MzActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/MzActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/MzActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/MzActionMenuView;Landroid/widget/MzActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    new-instance v1, Landroid/widget/MzActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/MzActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MzActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v2, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/MzActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/MzActionMenuPresenter;->setMenuView(Landroid/widget/MzActionMenuView;)V

    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/MzActionMenuView;Landroid/widget/MzActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/MzActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/MzActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/MzActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/MzActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/widget/MzActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_action_bar_padding_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/MzActionMenuView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 34
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    add-int v32, p3, p5

    div-int/lit8 v16, v32, 0x2

    .local v16, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getDividerWidth()I

    move-result v7

    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .local v17, "nonOverflowCount":I
    sub-int v32, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    .local v31, "widthRemaining":I
    const/4 v9, 0x0

    .local v9, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->isLayoutRtl()Z

    move-result v12

    .local v12, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    sub-int v31, v31, v32

    const/4 v8, 0x0

    .local v8, "hasCustomAction":Z
    const/16 v29, 0x0

    .local v29, "visibleItemCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .local v28, "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v29, v29, 0x1

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/MzActionMenuView$LayoutParams;

    .local v20, "p":Landroid/widget/MzActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_4

    add-int v19, v19, v7

    :cond_4
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .local v10, "height":I
    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v13, v32, v33

    .local v13, "l":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    add-int v13, v13, v32

    add-int v21, v13, v19

    .local v21, "r":I
    :goto_3
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .local v27, "t":I
    add-int v5, v27, v10

    .local v5, "b":I
    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    sub-int v31, v31, v19

    const/4 v9, 0x1

    goto :goto_2

    .end local v5    # "b":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    sub-int v21, v32, v33

    .restart local v21    # "r":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    sub-int v21, v21, v32

    sub-int v13, v21, v19

    .restart local v13    # "l":I
    goto :goto_3

    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    :cond_6
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v22, v32, v33

    .local v22, "size":I
    add-int v18, v18, v22

    sub-int v31, v31, v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_7

    add-int v18, v18, v7

    :cond_7
    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v28 .. v28}, Landroid/widget/MzActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v32

    if-nez v32, :cond_2

    const/4 v8, 0x1

    goto/16 :goto_2

    .end local v20    # "p":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v28    # "v":Landroid/view/View;
    :cond_8
    const/16 v32, 0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/meizu/widget/KeyBackButton;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .restart local v10    # "height":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .restart local v27    # "t":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    add-int p2, p2, v32

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v32, v32, p2

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    add-int v33, v33, v27

    move-object/from16 v0, v28

    move/from16 v1, p2

    move/from16 v2, v27

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .end local v10    # "height":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    :cond_9
    if-nez v8, :cond_a

    if-lez v29, :cond_a

    const/16 v32, 0x5

    move/from16 v0, v29

    move/from16 v1, v32

    if-gt v0, v1, :cond_a

    sub-int v32, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MzActionMenuView;->layoutMenuItems(III)V

    goto/16 :goto_0

    :cond_a
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_b

    if-nez v9, :cond_b

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .local v30, "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .restart local v10    # "height":I
    sub-int v32, p4, p2

    div-int/lit8 v15, v32, 0x2

    .local v15, "midHorizontal":I
    div-int/lit8 v32, v30, 0x2

    sub-int v13, v15, v32

    .restart local v13    # "l":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .restart local v27    # "t":I
    add-int v32, v13, v30

    add-int v33, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v15    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v30    # "width":I
    :cond_b
    if-eqz v9, :cond_d

    const/16 v32, 0x0

    :goto_4
    sub-int v23, v17, v32

    .local v23, "spacerCount":I
    const/16 v33, 0x0

    if-lez v23, :cond_e

    div-int v32, v31, v23

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .local v24, "spacerSize":I
    if-eqz v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingRight()I

    move-result v33

    sub-int v26, v32, v33

    .local v26, "startRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/MzActionMenuView$LayoutParams;

    .local v14, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    iget-boolean v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v28    # "v":Landroid/view/View;
    :cond_d
    const/16 v32, 0x1

    goto :goto_4

    .restart local v23    # "spacerCount":I
    :cond_e
    const/16 v32, 0x0

    goto :goto_5

    .restart local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v28    # "v":Landroid/view/View;
    :cond_f
    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .restart local v30    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .restart local v10    # "height":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .restart local v27    # "t":I
    sub-int v32, v26, v30

    add-int v33, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v24

    sub-int v26, v26, v32

    goto :goto_7

    .end local v10    # "height":I
    .end local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v28    # "v":Landroid/view/View;
    .end local v30    # "width":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/MzActionMenuView;->getPaddingLeft()I

    move-result v25

    .local v25, "startLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/MzActionMenuView;->mExtraPadding:I

    move/from16 v32, v0

    add-int v25, v25, v32

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    .restart local v28    # "v":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/MzActionMenuView$LayoutParams;

    .restart local v14    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_11

    iget-boolean v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_12
    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v25, v25, v32

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .restart local v30    # "width":I
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .restart local v10    # "height":I
    div-int/lit8 v32, v10, 0x2

    sub-int v27, v16, v32

    .restart local v27    # "t":I
    add-int v32, v25, v30

    add-int v33, v27, v10

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v14, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v24

    add-int v25, v25, v32

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    iget-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    iput v8, p0, Landroid/widget/MzActionMenuView;->mFormatItemsWidth:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/widget/MzActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    iput v5, p0, Landroid/widget/MzActionMenuView;->mFormatItemsWidth:I

    iget-object v6, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/MzActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/widget/MzActionMenuView;->onMeasureExactFormat(II)V

    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    goto :goto_0

    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/MzActionMenuView$LayoutParams;

    .local v3, "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/MzActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/MzActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/MzActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/MzActionMenuView;->updateSmartBarConfiguration()V

    invoke-virtual {p0}, Landroid/widget/MzActionMenuView;->requestLayout()V

    return-void
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/MzActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroid/widget/MzActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setMenuShowGravity(I)V
    .locals 0
    .param p1, "showGravity"    # I

    .prologue
    iput p1, p0, Landroid/widget/MzActionMenuView;->mMenuShowGravity:I

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/MzActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    .prologue
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mOnMenuItemClickListener:Landroid/widget/MzActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/MzActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iget v0, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/MzActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/MzActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/MzActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/MzActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/MzActionMenuPresenter;

    .prologue
    iput-object p1, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/MzActionMenuPresenter;->setMenuView(Landroid/widget/MzActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuView;->mPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
