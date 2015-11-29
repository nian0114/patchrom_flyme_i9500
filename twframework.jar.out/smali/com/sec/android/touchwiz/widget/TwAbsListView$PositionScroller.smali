.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
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

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1

    .prologue
    .line 9245
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;-><init>()V

    .line 9246
    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 9247
    return-void
.end method

.method private scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 9442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v6, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 9443
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    .line 9444
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 9445
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v14, v14, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 9446
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v15, v15, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 9448
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 9449
    :cond_0
    const-string v14, "TwAbsListView"

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

    .line 9452
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 9454
    :cond_2
    const/16 p2, -0x1

    .line 9457
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 9458
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 9459
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 9460
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 9462
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    .line 9463
    sub-int v10, v11, v8

    .line 9465
    :cond_4
    if-ge v13, v9, :cond_5

    .line 9466
    sub-int v10, v13, v9

    .line 9469
    :cond_5
    if-nez v10, :cond_7

    .line 9470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v14

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4100()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 9471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4200()I

    move-result v15

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I
    invoke-static {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 9472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnJumpScrollToFinished()V
    invoke-static {v14}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    .line 9493
    :cond_6
    :goto_0
    return-void

    .line 9477
    :cond_7
    if-ltz p2, :cond_8

    .line 9478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9479
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 9480
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 9481
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 9483
    .local v1, "absScroll":I
    if-gez v10, :cond_9

    add-int v14, v2, v1

    if-le v14, v8, :cond_9

    .line 9485
    const/4 v14, 0x0

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 9492
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .line 9486
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_9
    if-lez v10, :cond_8

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_8

    .line 9488
    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 9502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v19

    .line 9503
    .local v19, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 9505
    .local v9, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 9679
    :cond_0
    :goto_0
    return-void

    .line 9507
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .line 9508
    .local v16, "lastViewIndex":I
    add-int v12, v9, v16

    .line 9510
    .local v12, "lastPos":I
    if-ltz v16, :cond_0

    .line 9514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_1

    .line 9516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9520
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9521
    .local v13, "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 9522
    .local v15, "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 9523
    .local v18, "lastViewTop":I
    sub-int v17, v19, v18

    .line 9524
    .local v17, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9527
    .local v8, "extraScroll":I
    :goto_1
    sub-int v31, v15, v17

    add-int v28, v31, v8

    .line 9528
    .local v28, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 9530
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v12, v0, :cond_0

    .line 9532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9524
    .end local v8    # "extraScroll":I
    .end local v28    # "scrollBy":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 9538
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_1
    const/16 v24, 0x1

    .line 9539
    .local v24, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    .line 9541
    .local v5, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v9, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v5, v0, :cond_0

    add-int v31, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    .line 9545
    add-int/lit8 v21, v9, 0x1

    .line 9547
    .local v21, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 9549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9553
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 9554
    .local v22, "nextView":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v23

    .line 9555
    .local v23, "nextViewHeight":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v25

    .line 9556
    .local v25, "nextViewTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9557
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    .line 9558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v23, v25

    sub-int v33, v33, v8

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 9561
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9565
    :cond_4
    move/from16 v0, v25

    if-le v0, v8, :cond_0

    .line 9566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9573
    .end local v5    # "childCount":I
    .end local v8    # "extraScroll":I
    .end local v21    # "nextPos":I
    .end local v22    # "nextView":Landroid/view/View;
    .end local v23    # "nextViewHeight":I
    .end local v24    # "nextViewIndex":I
    .end local v25    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v9, v0, :cond_5

    .line 9575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9579
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 9580
    .local v10, "firstView":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 9583
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 9584
    .local v11, "firstViewTop":I
    if-lez v9, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9587
    .restart local v8    # "extraScroll":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 9589
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v9, v0, :cond_7

    .line 9592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9584
    .end local v8    # "extraScroll":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 9593
    .restart local v8    # "extraScroll":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v31

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 9594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4100()I

    move-result v32

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I
    invoke-static/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_0

    .line 9600
    .end local v8    # "extraScroll":I
    .end local v10    # "firstView":Landroid/view/View;
    .end local v11    # "firstViewTop":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v31

    add-int/lit8 v16, v31, -0x2

    .line 9601
    .restart local v16    # "lastViewIndex":I
    if-ltz v16, :cond_0

    .line 9604
    add-int v12, v9, v16

    .line 9606
    .restart local v12    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v12, v0, :cond_8

    .line 9608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9612
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9613
    .restart local v13    # "lastView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 9614
    .restart local v15    # "lastViewHeight":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v18

    .line 9615
    .restart local v18    # "lastViewTop":I
    sub-int v17, v19, v18

    .line 9616
    .restart local v17    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 9617
    .restart local v8    # "extraScroll":I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v12, v0, :cond_9

    .line 9619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v17, v8

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 9620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9622
    :cond_9
    sub-int v4, v19, v8

    .line 9623
    .local v4, "bottom":I
    add-int v14, v18, v15

    .line 9624
    .local v14, "lastViewBottom":I
    if-le v4, v14, :cond_0

    .line 9625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v4, v14

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9632
    .end local v4    # "bottom":I
    .end local v8    # "extraScroll":I
    .end local v12    # "lastPos":I
    .end local v13    # "lastView":Landroid/view/View;
    .end local v14    # "lastViewBottom":I
    .end local v15    # "lastViewHeight":I
    .end local v16    # "lastViewIndex":I
    .end local v17    # "lastViewPixelsShowing":I
    .end local v18    # "lastViewTop":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v9, :cond_a

    .line 9634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9638
    :cond_a
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v5

    .line 9641
    .restart local v5    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v26, v0

    .line 9642
    .local v26, "position":I
    add-int v31, v9, v5

    add-int/lit8 v12, v31, -0x1

    .line 9644
    .restart local v12    # "lastPos":I
    const/16 v30, 0x0

    .line 9645
    .local v30, "viewTravelCount":I
    move/from16 v0, v26

    if-ge v0, v9, :cond_c

    .line 9646
    sub-int v31, v9, v26

    add-int/lit8 v30, v31, 0x1

    .line 9652
    :cond_b
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v5

    move/from16 v32, v0

    div-float v27, v31, v32

    .line 9654
    .local v27, "screenTravelCount":F
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 9655
    .local v20, "modifier":F
    move/from16 v0, v26

    if-ge v0, v9, :cond_d

    .line 9656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9657
    .local v6, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 9658
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 9659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9647
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    .end local v20    # "modifier":F
    .end local v27    # "screenTravelCount":F
    :cond_c
    move/from16 v0, v26

    if-le v0, v12, :cond_b

    .line 9648
    sub-int v30, v26, v12

    goto :goto_3

    .line 9660
    .restart local v20    # "modifier":F
    .restart local v27    # "screenTravelCount":F
    :cond_d
    move/from16 v0, v26

    if-le v0, v12, :cond_e

    .line 9661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v6, v0

    .line 9662
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v20

    move/from16 v0, v31

    float-to-int v7, v0

    .line 9663
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    .line 9664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 9667
    .end local v6    # "distance":I
    .end local v7    # "duration":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v9

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v29

    .line 9668
    .local v29, "targetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v31, v0

    sub-int v6, v29, v31

    .line 9669
    .restart local v6    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v7, v0

    .line 9671
    .restart local v7    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v6, v7, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    .line 9505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, -0x1

    .line 9251
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 9253
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 9255
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v6, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;I)V

    iput-object v6, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 9298
    :cond_0
    :goto_0
    return-void

    .line 9263
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 9264
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 9269
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v2, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 9270
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 9273
    .local v3, "lastPos":I
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9274
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 9275
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 9276
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 9288
    :goto_1
    if-lez v4, :cond_5

    .line 9289
    div-int v5, v8, v4

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 9293
    :goto_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 9294
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 9295
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9297
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9277
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 9278
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 9279
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9281
    .end local v4    # "viewTravelCount":I
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v5

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5900()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 9282
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4100()I

    move-result v6

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mJumpScrollToTopState:I
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 9284
    :cond_4
    invoke-direct {p0, v1, v7, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 9291
    .restart local v4    # "viewTravelCount":I
    :cond_5
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 9302
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 9304
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    .line 9305
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 9377
    :cond_0
    :goto_0
    return-void

    .line 9309
    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v9, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v9, :cond_2

    .line 9311
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v10, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;II)V

    iput-object v10, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    .line 9319
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 9320
    .local v3, "childCount":I
    if-eqz v3, :cond_0

    .line 9325
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v9, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 9326
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 9329
    .local v6, "lastPos":I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9330
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_4

    .line 9331
    sub-int v1, v6, p2

    .line 9332
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    .line 9337
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 9338
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 9339
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_3

    .line 9340
    move v8, v2

    .line 9341
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 9367
    .end local v1    # "boundPosFromLast":I
    :goto_1
    if-lez v8, :cond_7

    .line 9368
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 9372
    :goto_2
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 9373
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 9374
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9376
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9343
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_3
    move v8, v7

    .line 9344
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9346
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_4
    if-le v4, v6, :cond_6

    .line 9347
    sub-int v0, p2, v5

    .line 9348
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    .line 9353
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 9354
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 9355
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_5

    .line 9356
    move v8, v2

    .line 9357
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9359
    .end local v8    # "viewTravelCount":I
    :cond_5
    move v8, v7

    .line 9360
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 9363
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_6
    const/16 v9, 0xc8

    invoke-direct {p0, v4, p2, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    .line 9370
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 9381
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 9382
    return-void
.end method

.method public startWithOffset(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v9, -0x1

    .line 9386
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 9388
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v7, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v7, :cond_1

    .line 9390
    move v3, p2

    .line 9391
    .local v3, "postOffset":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller$3;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;III)V

    iput-object v8, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 9435
    .end local v3    # "postOffset":I
    .end local p3    # "duration":I
    :cond_0
    :goto_0
    return-void

    .line 9399
    .restart local p3    # "duration":I
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 9400
    .local v0, "childCount":I
    if-eqz v0, :cond_0

    .line 9405
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 9407
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 9408
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    .line 9409
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 9410
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9411
    const/4 v7, 0x5

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 9413
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v1, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    .line 9414
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 9417
    .local v2, "lastPos":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 9418
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 9429
    .local v6, "viewTravelCount":I
    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 9430
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_2
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 9432
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 9434
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9419
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 9420
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_1

    .line 9423
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 9424
    .local v5, "targetTop":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 9430
    .end local v5    # "targetTop":I
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
    .line 9497
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9498
    return-void
.end method
