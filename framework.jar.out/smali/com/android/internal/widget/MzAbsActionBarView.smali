.class public abstract Lcom/android/internal/widget/MzAbsActionBarView;
.super Landroid/view/ViewGroup;
.source "MzAbsActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarContainer$OnAfterIdentifyBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field protected static final MAX_ACTIONS_ITEM:I = 0x5

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

.field protected mActionModeHeaderHidden:Z

.field protected mBackButton:Lcom/meizu/widget/KeyBackButton;

.field protected mBackIcon:Landroid/graphics/drawable/Drawable;

.field public mCompulsorySplit:Z

.field protected mContentHeight:I

.field private mCustomBackButton:Z

.field private mCustomHeight:I

.field protected mEnableBackButton:Z

.field protected mInActionMode:Z

.field protected mIsOverlay:Z

.field protected mMaxTitleWidth:I

.field protected mMenuView:Landroid/widget/MzActionMenuView;

.field protected mOrientatinPortrait:Z

.field protected mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MzAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MzAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/MzAbsActionBarView;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    iput v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mInActionMode:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mIsOverlay:Z

    iput v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMaxTitleWidth:I

    iput-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mEnableBackButton:Z

    iput-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCompulsorySplit:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomBackButton:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mPopupContext:Landroid/content/Context;

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->initView()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MzAbsActionBarView;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzAbsActionBarView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onAnimationStartInner(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MzAbsActionBarView;Landroid/animation/Animator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzAbsActionBarView;
    .param p1, "x1"    # Landroid/animation/Animator;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/MzAbsActionBarView;->onAnimationEndInner(Landroid/animation/Animator;I)V

    return-void
.end method

.method private animateToVisibilityForMeizu(I)V
    .locals 11
    .param p1, "visibility"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzAbsActionBarView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v3, v7}, Landroid/widget/MzActionMenuView;->setAlpha(F)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/internal/widget/MzAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/internal/widget/MzAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v3, :cond_6

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_smartbar_auto_hide"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCompulsorySplit:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method

.method private onAnimationEndInner(Landroid/animation/Animator;I)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "finalVisibility"    # I

    .prologue
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, p2}, Landroid/widget/MzActionMenuView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    invoke-interface {v0, p2}, Landroid/app/ActionBar$VisibilityAnimationListener;->onAnimationEnd(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/MzAbsActionBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, p2}, Landroid/widget/MzActionMenuView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    invoke-interface {v0, p2}, Landroid/app/ActionBar$VisibilityAnimationListener;->onAnimationEnd(I)V

    goto :goto_0
.end method

.method private onAnimationStartInner(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onConfigurationChangedForMeizu(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->setContentHeight(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->updateBackButton()V

    return-void
.end method

.method private setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isSystem"    # Z

    .prologue
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomBackButton:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/MzActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x1

    .local v0, "portrait":Z
    if-eqz p1, :cond_0

    if-eqz p1, :cond_4

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "resConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_3

    move v0, v2

    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    return-void

    .restart local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_3
    move v0, v3

    goto :goto_0

    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_4
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_5

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->animateToVisibilityForMeizu(I)V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

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
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompulsorySplit()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCompulsorySplit:Z

    return v0
.end method

.method public isInActionMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mInActionMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlay()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mIsOverlay:Z

    return v0
.end method

.method public isSplitWhenNarrow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitWhenNarrow:Z

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAfterIdentifyBackground(ZII)V
    .locals 3
    .param p1, "isSplit"    # Z
    .param p2, "backgroundColor"    # I
    .param p3, "splitBackgroundColor"    # I

    .prologue
    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomBackButton:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MzAbsActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$drawable;->mz_ic_tab_back_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/MzAbsActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->updateConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "split_action_bar_is_narrow"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->setSplitToolbar(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/widget/MzActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->onConfigurationChangedForMeizu(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->setSplitToolbar(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->updateBackButton()V

    return-void
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mMenuView:Landroid/widget/MzActionMenuView;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuView;->onSmartBarConfigurationChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->onSmartBarConfigurationChanged()V

    :cond_1
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .local v1, "childTop":I
    if-eqz p5, :cond_1

    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/widget/MzAbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzAbsActionBarView$1;-><init>(Lcom/android/internal/widget/MzAbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionModeHeaderHidden:Z

    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MzAbsActionBarView;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mEnableBackButton:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mEnableBackButton:Z

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mCustomHeight:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .param p1, "inActionMode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mInActionMode:Z

    return-void
.end method

.method public setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/MzActionMenuPresenter;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mIsOverlay:Z

    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitActionBar:Z

    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$VisibilityAnimationListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mActionMenuPresenter:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    sget-object v1, Landroid/os/BuildExt;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/BuildExt;->hasSmartBar()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v1, :cond_4

    new-instance v1, Lcom/meizu/widget/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzAbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$dimen;->mz_action_bar_padding_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/meizu/widget/KeyBackButton;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/KeyBackButton;->setMinimumWidth(I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1}, Lcom/meizu/widget/KeyBackButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/MzAbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
