.class Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;
.super Ljava/lang/Object;
.source "TwDndGridAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAnimatorEnd()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    .line 129
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    # invokes: Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->updateDragViewBitmap()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDropDonePending:Z

    .line 135
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    if-eq v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v2, v2, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->speakDragReleaseForAccessibility(I)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndPositionValues()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_3

    .line 143
    const-string v0, "TwDndGridView"

    const-string v1, "dndListener.OnDragAndDropStop() from onAllAnimationsFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    goto :goto_0
.end method
