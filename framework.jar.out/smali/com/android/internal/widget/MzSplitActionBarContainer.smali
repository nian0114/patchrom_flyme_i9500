.class public Lcom/android/internal/widget/MzSplitActionBarContainer;
.super Lcom/android/internal/widget/MzActionBarContainer;
.source "MzSplitActionBarContainer.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MzSplitActionBarContainer"


# instance fields
.field private mBackButton:Lcom/meizu/widget/KeyBackButton;

.field private mCellWidth:I

.field private mContentHeight:I

.field private mCustomBackButton:Z

.field private mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mEnableBackButton:Z

.field private mExtraPadding:I

.field private mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mMenuView:Landroid/view/View;

.field private mShouldDectePaddingAjustment:Z

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

.field private mUpdateBackButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mShouldDectePaddingAjustment:Z

    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mShouldDectePaddingAjustment:Z

    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private findBackButton(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "backButton":Landroid/view/View;
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->findBackButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_1

    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_2
    instance-of v3, p1, Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_0

    move-object v0, p1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSmartBarConfiguration()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setIsNeedToIdentify(Z)V

    return-void
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isSystem"    # Z

    .prologue
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private updateBackButtonDrawable()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-direct {p0, p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->findBackButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .local v0, "backButton":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/meizu/widget/KeyBackButton;

    .end local v0    # "backButton":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCellWidth:I

    return-void
.end method

.method private updateSplitBackground()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getSplitBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public onAfterIdentifyBackground(ZII)V
    .locals 3
    .param p1, "isSplit"    # Z
    .param p2, "backgroundColor"    # I
    .param p3, "splitBackgroundColor"    # I

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_tab_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setIsNeedToIdentify(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSplitBackground()V

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setIsNeedToIdentify(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->postInvalidate()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateBackButtonDrawable()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MzScrollingTabContainerView;

    .local v10, "tabContainer":Lcom/android/internal/widget/MzScrollingTabContainerView;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isShowAtBottom()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    .local v6, "hasTabAtBottom":Z
    :goto_0
    if-eqz v6, :cond_2

    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/MzActionBarContainer;->onLayout(ZIIII)V

    :cond_0
    :goto_1
    return-void

    .end local v6    # "hasTabAtBottom":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v6    # "hasTabAtBottom":Z
    :cond_2
    const-string v11, "MzSplitActionBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onLayout:mBackButton="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mMenuView="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mEnableBackButton="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; mExtraPadding="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "backButtonWidth":I
    sub-int v0, p5, p3

    .local v0, "backButtonHeight":I
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v11}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v11

    iget v12, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    add-int v1, v11, v12

    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v11}, Lcom/meizu/widget/KeyBackButton;->getMeasuredHeight()I

    move-result v0

    const-string v11, "MzSplitActionBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onLayout: backButtonWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/MzActionBarContainer;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getChildCount()I

    move-result v3

    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int v4, v11, v1

    .local v4, "childLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    add-int v5, v11, v1

    .local v5, "childRight":I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setRight(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    :cond_4
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget v12, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v0}, Lcom/meizu/widget/KeyBackButton;->layout(IIII)V

    :cond_5
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    sub-int v8, p4, v11

    .local v8, "menuRight":I
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .local v9, "menuWidth":I
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v11, :cond_6

    sub-int v11, p4, p2

    add-int/2addr v11, v9

    div-int/lit8 v8, v11, 0x2

    :cond_6
    iget-object v11, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    sub-int v12, v8, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8, v0}, Landroid/view/View;->layout(IIII)V

    const-string v11, "MzSplitActionBarContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onLayout: mMenuView.layout:menuRight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; menuWidth"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MzScrollingTabContainerView;

    .local v16, "tabContainer":Lcom/android/internal/widget/MzScrollingTabContainerView;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/MzScrollingTabContainerView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/MzScrollingTabContainerView;->isShowAtBottom()Z

    move-result v19

    if-eqz v19, :cond_2

    const/4 v9, 0x1

    .local v9, "hasTabAtBottom":Z
    :goto_0
    if-eqz v9, :cond_5

    if-eqz v16, :cond_0

    const/4 v8, 0x1

    .local v8, "disableBackButton":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mOrientatinPortrait:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    if-nez v8, :cond_3

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    .end local v8    # "disableBackButton":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->removeBackButton(Landroid/view/View;)V

    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/MzActionBarContainer;->onMeasure(II)V

    :goto_2
    return-void

    .end local v9    # "hasTabAtBottom":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .restart local v8    # "disableBackButton":Z
    .restart local v9    # "hasTabAtBottom":Z
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    goto :goto_1

    .end local v8    # "disableBackButton":Z
    :cond_5
    if-eqz v16, :cond_6

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView;->setBackButtonEnable(Z)V

    :cond_6
    const-string v19, "MzSplitActionBarContainer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure:mBackButton="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mMenuView="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mEnableBackButton="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCellWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .local v18, "widthSpec":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .local v11, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .end local v11    # "heightSpec":I
    .end local v18    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCellWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .restart local v18    # "widthSpec":I
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .restart local v11    # "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->measure(II)V

    .end local v11    # "heightSpec":I
    .end local v18    # "widthSpec":I
    :cond_8
    const/4 v2, 0x0

    .local v2, "backButtonWidth":I
    const/4 v3, 0x0

    .local v3, "backButtonWidthExtra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    move/from16 v19, v0

    add-int v3, v2, v19

    :cond_9
    const/4 v13, 0x0

    .local v13, "menuWidth":I
    const/4 v14, 0x0

    .local v14, "menuWidthExtra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mExtraPadding:I

    move/from16 v19, v0

    add-int v14, v2, v19

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    sub-int v19, v19, v3

    sub-int v6, v19, v14

    .local v6, "contentWidth":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .local v7, "contentWidthSpec":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v7, v1}, Lcom/android/internal/widget/MzActionBarContainer;->onMeasure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .local v5, "buttonWidthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getMeasuredHeight()I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, "buttonHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .end local v4    # "buttonHeightSpec":I
    .end local v5    # "buttonWidthSpec":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "menuWidthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getMeasuredHeight()I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .local v12, "menuHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v12}, Landroid/view/View;->measure(II)V

    .end local v12    # "menuHeightSpec":I
    .end local v15    # "menuWidthSpec":I
    :cond_d
    const-string v19, "MzSplitActionBarContainer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure:backButtonWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; menuWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .local v10, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_2
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSmartBarConfiguration()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->requestLayout()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/widget/MzActionBarContainer;->requestLayout()V

    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "addBackButton"    # Z

    .prologue
    const/4 v3, -0x2

    const-string v0, "MzSplitActionBarContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackButtonEnable: mBackButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; addBackButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mEnableBackButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mEnableBackButton:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_2

    new-instance v0, Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->removeBackButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/internal/widget/MzSplitActionBarContainer;->addView(Landroid/view/View;II)V

    iget-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mCustomBackButton:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSplitBackground()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->removeBackButton(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mUpdateBackButton:Z

    goto :goto_1
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mContentHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->requestLayout()V

    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/internal/widget/MzSplitActionBarContainer;->addView(Landroid/view/View;II)V

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/flyme/internal/R$drawable;->mz_ic_tab_more:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/internal/widget/MzSplitActionBarContainer;->updateSplitBackground()V

    return-void

    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/MzSplitActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->setVisibility(I)V

    return-void
.end method
