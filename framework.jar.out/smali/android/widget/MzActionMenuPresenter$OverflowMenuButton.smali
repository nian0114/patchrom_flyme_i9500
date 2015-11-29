.class Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "MzActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/MzActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    const v0, 0x10102f6

    invoke-direct {p0, p2, v2, v0}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    new-instance v0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/widget/MzActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v2}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawableSet:Z
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$500(Landroid/widget/MzActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Landroid/widget/MzActionMenuPresenter;->access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->checkOverFlowButtonSrc(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    # setter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Landroid/widget/MzActionMenuPresenter;->access$402(Landroid/widget/MzActionMenuPresenter;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private checkOverFlowButtonSrc(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ImageView:[I

    const v5, 0x10102f6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .local v2, "value":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_menu_moreoverflow_material"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "materialIconId":I
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-ne v3, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/flyme/internal/R$drawable;->mz_ic_tab_more_normal_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Lcom/meizu/widget/GlowImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/meizu/widget/GlowImageButton;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-super {p0}, Lcom/meizu/widget/GlowImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public restoreDrawable()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mOverFlowButtonDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$400(Landroid/widget/MzActionMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/widget/GlowImageButton;->setFrame(IIII)Z

    move-result v1

    .local v1, "changed":Z
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .local v4, "pts":[F
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v5, v4, v7

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/MzActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .end local v3    # "offset":I
    .end local v4    # "pts":[F
    :cond_0
    return v1
.end method
