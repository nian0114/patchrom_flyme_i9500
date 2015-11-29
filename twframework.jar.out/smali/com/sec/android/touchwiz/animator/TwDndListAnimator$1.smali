.class Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;
.super Ljava/lang/Object;
.source "TwDndListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAnimatorEnd()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    .line 124
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget v2, v2, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 130
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndPositionValues()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_3

    .line 132
    const-string v0, "TwDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from onItemAnimatorEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    goto :goto_0
.end method
