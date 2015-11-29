.class Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;
.super Ljava/lang/Object;
.source "TwDndHorizontalListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAnimatorEnd()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDropDonePending:Z

    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v2, v2, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndPositionValues()V

    .line 132
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_3

    .line 133
    const-string v0, "TwHorizontalDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from onItemAnimatorEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setEnabled(Z)V

    goto :goto_0
.end method
