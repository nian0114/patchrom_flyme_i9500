.class public Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "MzAbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzAbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/MzAbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/widget/MzAbsActionBarView;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    iget v1, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    # invokes: Lcom/android/internal/widget/MzAbsActionBarView;->onAnimationEndInner(Landroid/animation/Animator;I)V
    invoke-static {v0, p1, v1}, Lcom/android/internal/widget/MzAbsActionBarView;->access$100(Lcom/android/internal/widget/MzAbsActionBarView;Landroid/animation/Animator;I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    # invokes: Lcom/android/internal/widget/MzAbsActionBarView;->onAnimationStartInner(Landroid/animation/Animator;)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/MzAbsActionBarView;->access$000(Lcom/android/internal/widget/MzAbsActionBarView;Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/MzAbsActionBarView;

    iput-object p1, v0, Lcom/android/internal/widget/MzAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/MzAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
