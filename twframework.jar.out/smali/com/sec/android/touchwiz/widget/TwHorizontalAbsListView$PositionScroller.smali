.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromLeft:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 1

    .prologue
    .line 9374
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;-><init>()V

    .line 9375
    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    .line 9376
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 9649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v18

    .line 9650
    .local v18, "listWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 9652
    .local v8, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 9826
    :cond_0
    :goto_0
    return-void

    .line 9654
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    .line 9655
    .local v13, "lastViewIndex":I
    add-int v11, v8, v13

    .line 9657
    .local v11, "lastPos":I
    if-ltz v13, :cond_0

    .line 9661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_1

    .line 9663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9667
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9668
    .local v12, "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 9669
    .local v17, "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 9670
    .local v14, "lastViewLeft":I
    sub-int v15, v18, v14

    .line 9671
    .local v15, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9674
    .local v7, "extraScroll":I
    :goto_1
    sub-int v31, v17, v15

    add-int v28, v31, v7

    .line 9675
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 9677
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_0

    .line 9679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9671
    .end local v7    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 9685
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v17    # "lastViewWidth":I
    :pswitch_1
    const/16 v22, 0x1

    .line 9686
    .local v22, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v4

    .line 9688
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v4, v0, :cond_0

    add-int v31, v8, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 9692
    add-int/lit8 v20, v8, 0x1

    .line 9694
    .local v20, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 9696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9700
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 9701
    .local v21, "nextView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v24

    .line 9702
    .local v24, "nextViewWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v23

    .line 9703
    .local v23, "nextViewLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9704
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 9705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v24, v23

    sub-int v33, v33, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 9708
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9712
    :cond_4
    move/from16 v0, v23

    if-le v0, v7, :cond_0

    .line 9713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v23, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9720
    .end local v4    # "childCount":I
    .end local v7    # "extraScroll":I
    .end local v20    # "nextPos":I
    .end local v21    # "nextView":Landroid/view/View;
    .end local v22    # "nextViewIndex":I
    .end local v23    # "nextViewLeft":I
    .end local v24    # "nextViewWidth":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_5

    .line 9722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9726
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 9727
    .local v9, "firstView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 9730
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 9731
    .local v10, "firstViewLeft":I
    if-lez v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9734
    .restart local v7    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v10, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 9736
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v8, v0, :cond_7

    .line 9739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9731
    .end local v7    # "extraScroll":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 9740
    .restart local v7    # "extraScroll":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v31

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5700()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 9741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900()I

    move-result v32

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3802(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    goto/16 :goto_0

    .line 9747
    .end local v7    # "extraScroll":I
    .end local v9    # "firstView":Landroid/view/View;
    .end local v10    # "firstViewLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x2

    .line 9748
    .restart local v13    # "lastViewIndex":I
    if-ltz v13, :cond_0

    .line 9751
    add-int v11, v8, v13

    .line 9753
    .restart local v11    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_8

    .line 9755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9759
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9760
    .restart local v12    # "lastView":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 9761
    .restart local v17    # "lastViewWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 9762
    .restart local v14    # "lastViewLeft":I
    sub-int v15, v18, v14

    .line 9763
    .restart local v15    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9764
    .restart local v7    # "extraScroll":I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v11, v0, :cond_9

    .line 9766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v15, v7

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 9767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9769
    :cond_9
    sub-int v26, v18, v7

    .line 9770
    .local v26, "right":I
    add-int v16, v14, v17

    .line 9771
    .local v16, "lastViewRight":I
    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 9772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v16

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9779
    .end local v7    # "extraScroll":I
    .end local v11    # "lastPos":I
    .end local v12    # "lastView":Landroid/view/View;
    .end local v13    # "lastViewIndex":I
    .end local v14    # "lastViewLeft":I
    .end local v15    # "lastViewPixelsShowing":I
    .end local v16    # "lastViewRight":I
    .end local v17    # "lastViewWidth":I
    .end local v26    # "right":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v8, :cond_a

    .line 9781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9785
    :cond_a
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v4

    .line 9788
    .restart local v4    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v25, v0

    .line 9789
    .local v25, "position":I
    add-int v31, v8, v4

    add-int/lit8 v11, v31, -0x1

    .line 9791
    .restart local v11    # "lastPos":I
    const/16 v30, 0x0

    .line 9792
    .local v30, "viewTravelCount":I
    move/from16 v0, v25

    if-ge v0, v8, :cond_c

    .line 9793
    sub-int v31, v8, v25

    add-int/lit8 v30, v31, 0x1

    .line 9799
    :cond_b
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v4

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 9801
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 9802
    .local v19, "modifier":F
    move/from16 v0, v25

    if-ge v0, v8, :cond_d

    .line 9803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    .line 9804
    .local v5, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9805
    .local v6, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 9806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9794
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    .end local v19    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_c
    move/from16 v0, v25

    if-le v0, v11, :cond_b

    .line 9795
    sub-int v30, v25, v11

    goto :goto_3

    .line 9807
    .restart local v19    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_d
    move/from16 v0, v25

    if-le v0, v11, :cond_e

    .line 9808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    .line 9809
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9810
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 9811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9814
    .end local v5    # "distance":I
    .end local v6    # "duration":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLeft()I

    move-result v29

    .line 9815
    .local v29, "targetLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mOffsetFromLeft:I

    move/from16 v31, v0

    sub-int v5, v29, v31

    .line 9816
    .restart local v5    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9818
    .restart local v6    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 9583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v6, v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 9584
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v5

    .line 9585
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 9586
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v14, v14, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v14, Landroid/graphics/Rect;->left:I

    .line 9587
    .local v8, "paddedLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v9, v14, v15

    .line 9589
    .local v9, "paddedRight":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 9590
    :cond_0
    const-string v14, "TwHorizontalAbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9593
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 9595
    :cond_2
    const/16 p2, -0x1

    .line 9598
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 9599
    .local v11, "targetChild":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 9600
    .local v12, "targetLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    .line 9601
    .local v13, "targetRight":I
    const/4 v10, 0x0

    .line 9603
    .local v10, "scrollBy":I
    if-le v13, v9, :cond_4

    .line 9604
    sub-int v10, v13, v9

    .line 9606
    :cond_4
    if-ge v12, v8, :cond_5

    .line 9607
    sub-int v10, v12, v8

    .line 9610
    :cond_5
    if-nez v10, :cond_7

    .line 9611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v14

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 9612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4000()I

    move-result v15

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3802(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    .line 9613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnJumpScrollToFinished()V
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    .line 9634
    :cond_6
    :goto_0
    return-void

    .line 9618
    :cond_7
    if-ltz p2, :cond_8

    .line 9619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9620
    .local v2, "boundChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 9621
    .local v3, "boundLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 9622
    .local v4, "boundRight":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 9624
    .local v1, "absScroll":I
    if-gez v10, :cond_9

    add-int v14, v4, v1

    if-le v14, v9, :cond_9

    .line 9626
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 9633
    .end local v1    # "absScroll":I
    .end local v2    # "boundChild":Landroid/view/View;
    .end local v3    # "boundLeft":I
    .end local v4    # "boundRight":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 9627
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundChild":Landroid/view/View;
    .restart local v3    # "boundLeft":I
    .restart local v4    # "boundRight":I
    :cond_9
    if-lez v10, :cond_8

    sub-int v14, v3, v1

    if-ge v14, v8, :cond_8

    .line 9629
    const/4 v14, 0x0

    sub-int v15, v3, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 9383
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->stop()V

    .line 9385
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 9387
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    new-instance v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;I)V

    iput-object v6, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 9430
    :cond_0
    :goto_0
    return-void

    .line 9395
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 9396
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 9401
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 9402
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 9405
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9406
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 9407
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 9408
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    .line 9420
    :goto_1
    if-lez v4, :cond_5

    .line 9421
    div-int v5, v8, v4

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    .line 9425
    :goto_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    .line 9426
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mBoundPos:I

    .line 9427
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9429
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9409
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 9410
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 9411
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9413
    .end local v4    # "viewTravelCount":I
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v5

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5700()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 9414
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900()I

    move-result v6

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3802(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    .line 9416
    :cond_4
    invoke-virtual {p0, v1, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 9423
    .restart local v4    # "viewTravelCount":I
    :cond_5
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 9437
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->stop()V

    .line 9439
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 9440
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->start(I)V

    .line 9512
    :cond_0
    :goto_0
    return-void

    .line 9444
    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v9, v9, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 9446
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    new-instance v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;II)V

    iput-object v10, v9, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 9454
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v3

    .line 9455
    .local v3, "childCount":I
    if-eqz v3, :cond_0

    .line 9460
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v9, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 9461
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 9464
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9465
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_4

    .line 9466
    sub-int v1, v6, p2

    .line 9467
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 9472
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 9473
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 9474
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_3

    .line 9475
    move v8, v2

    .line 9476
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    .line 9502
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v8, :cond_7

    .line 9503
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    .line 9507
    :goto_2
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    .line 9508
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mBoundPos:I

    .line 9509
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9511
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9478
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_3
    move v8, v7

    .line 9479
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9481
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_4
    if-le v4, v6, :cond_6

    .line 9482
    sub-int v0, p2, v5

    .line 9483
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 9488
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 9489
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 9490
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_5

    .line 9491
    move v8, v2

    .line 9492
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9494
    .end local v8    # "viewTravelCount":I
    :cond_5
    move v8, v7

    .line 9495
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9498
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_6
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 9505
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 9519
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->startWithOffset(III)V

    .line 9520
    return-void
.end method

.method public startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 9527
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->stop()V

    .line 9529
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v7, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 9531
    move v3, p2

    .line 9532
    .local v3, "postOffset":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    new-instance v8, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$3;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;III)V

    iput-object v8, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 9576
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 9540
    .restart local p3    # "duration":I
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v0

    .line 9541
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 9546
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v7

    add-int/2addr p2, v7

    .line 9548
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    .line 9549
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mOffsetFromLeft:I

    .line 9550
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mBoundPos:I

    .line 9551
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9552
    const/4 v7, 0x5

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mMode:I

    .line 9554
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v1, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    .line 9555
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 9558
    .local v2, "lastPos":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 9559
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 9570
    .local v6, "viewTravelCount":I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 9571
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_2
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mScrollDuration:I

    .line 9573
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9575
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9560
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 9561
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_1

    .line 9564
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 9565
    .local v5, "targetLeft":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 9571
    .end local v5    # "targetLeft":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 9641
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9642
    return-void
.end method
