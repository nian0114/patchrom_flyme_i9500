.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 2

    .prologue
    .line 6540
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6514
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 6541
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 6549
    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .prologue
    .line 6503
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 6593
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 6594
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    .line 6595
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6597
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6598
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 6599
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 6600
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 6610
    .end local v1    # "vel":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6611
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6612
    return-void

    .line 6602
    .restart local v1    # "vel":I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 6605
    .end local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6606
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 6607
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 6624
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6626
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6627
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6629
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6630
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    .line 6631
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 6633
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6634
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 6635
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6637
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 6640
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6641
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 6645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 6647
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 6777
    :cond_0
    :goto_0
    return-void

    .line 6651
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6656
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 6657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 6660
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6661
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6665
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 6666
    .local v26, "scroller":Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v22

    .line 6667
    .local v22, "more":Z
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v28

    .line 6671
    .local v28, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    .line 6674
    .local v19, "delta":I
    if-lez v19, :cond_6

    .line 6676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 6677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 6678
    .local v20, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 6695
    .end local v20    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 6696
    .local v23, "motionView":Landroid/view/View;
    const/16 v25, 0x0

    .line 6697
    .local v25, "oldLeft":I
    if-eqz v23, :cond_4

    .line 6698
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 6702
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v14

    .line 6703
    .local v14, "atEdge":Z
    if-eqz v14, :cond_7

    if-eqz v19, :cond_7

    const/4 v15, 0x1

    .line 6705
    .local v15, "atEnd":Z
    :goto_2
    if-eqz v15, :cond_8

    .line 6706
    if-eqz v23, :cond_5

    .line 6708
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    .line 6709
    .local v3, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;IIIIIIIIZ)Z

    .line 6712
    .end local v3    # "overshoot":I
    :cond_5
    if-eqz v22, :cond_0

    .line 6713
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 6684
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 6685
    .local v24, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 6687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 6688
    .local v21, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_1

    .line 6703
    .end local v21    # "lastView":Landroid/view/View;
    .end local v24    # "offsetToLast":I
    .restart local v14    # "atEdge":Z
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v25    # "oldLeft":I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 6718
    .restart local v15    # "atEnd":Z
    :cond_8
    if-eqz v22, :cond_a

    if-nez v15, :cond_a

    .line 6719
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6720
    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 6721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6737
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900()I

    move-result v4

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-nez v2, :cond_0

    if-nez v19, :cond_0

    if-nez v22, :cond_0

    .line 6740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4000()I

    move-result v4

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3802(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    .line 6741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnJumpScrollToFinished()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    goto/16 :goto_0

    .line 6723
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    goto :goto_3

    .line 6748
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v26    # "scroller":Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .end local v28    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 6749
    .restart local v26    # "scroller":Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v7

    .line 6751
    .local v7, "scrollX":I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v18

    .line 6752
    .local v18, "currX":I
    sub-int v5, v18, v7

    .line 6753
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v11, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v4 .. v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6755
    if-gtz v7, :cond_d

    if-lez v18, :cond_d

    const/16 v17, 0x1

    .line 6756
    .local v17, "crossRight":Z
    :goto_4
    if-ltz v7, :cond_e

    if-gez v18, :cond_e

    const/16 v16, 0x1

    .line 6757
    .local v16, "crossLeft":Z
    :goto_5
    if-nez v17, :cond_b

    if-eqz v16, :cond_f

    .line 6758
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 6759
    .local v27, "velocity":I
    if-eqz v16, :cond_c

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 6762
    :cond_c
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 6763
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6755
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    .end local v27    # "velocity":I
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 6756
    .restart local v17    # "crossRight":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_5

    .line 6765
    .restart local v16    # "crossLeft":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6768
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6772
    .end local v5    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v18    # "currX":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 6645
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 6552
    if-gez p1, :cond_1

    move v1, v6

    .line 6553
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 6554
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 6557
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6558
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6567
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6568
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const-string v2, "TwHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6570
    :cond_0
    return-void

    .end local v1    # "initialX":I
    :cond_1
    move v1, v2

    .line 6552
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 6584
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6585
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 6587
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6588
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6589
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6590
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6615
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 6616
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 6617
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6618
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 6619
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6620
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6621
    return-void

    .end local v1    # "initialX":I
    :cond_0
    move v1, v2

    .line 6615
    goto :goto_0

    .line 6617
    .restart local v1    # "initialX":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 6573
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6574
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6581
    :goto_0
    return-void

    .line 6578
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6579
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
