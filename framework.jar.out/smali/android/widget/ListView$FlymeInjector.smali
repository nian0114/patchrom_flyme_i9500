.class Landroid/widget/ListView$FlymeInjector;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initExtFlymeFields(Landroid/widget/ListView;)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v2, p0, Landroid/widget/ListView;->mMzDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsBeginDragSelect:Z

    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionViewTop:I

    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionViewBottom:I

    iput v1, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    iput v1, p0, Landroid/widget/ListView;->mMzDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mMzLastDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionX:I

    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionY:I

    iput v1, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iput v1, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    iput v1, p0, Landroid/widget/ListView;->mMzDragDownPosition:I

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsOutOfListContent:Z

    iput v0, p0, Landroid/widget/ListView;->mMzDragWidth:I

    iput v0, p0, Landroid/widget/ListView;->mMzDragSlop:I

    iput v1, p0, Landroid/widget/ListView;->mMzLongPressPosition:I

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsOutOfDragRegion:Z

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzSelectToBottom:Z

    iput-object v2, p0, Landroid/widget/ListView;->mMzFocuseRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/ListView;->mMzScrollSelection:Landroid/widget/ListView$MzScrollSelectionRunnable;

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsDividerInside:Z

    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    iput v0, p0, Landroid/widget/ListView;->mMzInDividerHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsCheckBoxAnim:Z

    return-void
.end method

.method static mzContentFits(Landroid/widget/ListView;)Z
    .locals 6
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method static mzDrawDivider(Landroid/widget/ListView;I)Z
    .locals 19
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "childIndex"    # I

    .prologue
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListView;->mFirstPosition:I

    .local v5, "first":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->mzGetFieldHeaderViewInfos()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "headerCount":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .local v13, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->mzGetFieldFooterViewInfos()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    sub-int v6, v13, v17

    .local v6, "footerLimit":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v2, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v2, Landroid/widget/ListView$DividerFilter;

    .local v9, "isDividerFilter":Z
    instance-of v12, v2, Landroid/widget/HeaderViewListAdapter;

    .local v12, "isHeaderViewListAdapter":Z
    const/16 v16, 0x0

    .local v16, "wrappedAdapter":Landroid/widget/ListAdapter;
    if-eqz v12, :cond_0

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v9, v0, Landroid/widget/ListView$DividerFilter;

    if-nez v9, :cond_0

    const/16 v16, 0x0

    :cond_0
    move/from16 v8, p1

    .local v8, "index":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    add-int v14, v5, v8

    .local v14, "itemIndex":I
    if-ge v14, v7, :cond_5

    const/4 v11, 0x1

    .local v11, "isHeader":Z
    :goto_0
    if-lt v14, v6, :cond_6

    const/4 v10, 0x1

    .local v10, "isFooter":Z
    :goto_1
    const/4 v15, 0x1

    .local v15, "toDraw":Z
    if-eqz v9, :cond_8

    if-eqz v12, :cond_7

    if-eqz v16, :cond_2

    if-nez v11, :cond_2

    if-nez v10, :cond_2

    move-object/from16 v17, v16

    check-cast v17, Landroid/widget/ListView$DividerFilter;

    sub-int v18, v14, v7

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    const/4 v4, 0x0

    .local v4, "drawTop":Z
    if-eqz v9, :cond_b

    if-eqz v12, :cond_a

    if-eqz v16, :cond_3

    check-cast v16, Landroid/widget/ListView$DividerFilter;

    .end local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    invoke-interface/range {v16 .. v16}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v4

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    if-nez v4, :cond_4

    const/4 v15, 0x0

    .end local v4    # "drawTop":Z
    .end local v15    # "toDraw":Z
    :cond_4
    :goto_4
    return v15

    .end local v10    # "isFooter":Z
    .end local v11    # "isHeader":Z
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "isHeader":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "isFooter":Z
    .restart local v15    # "toDraw":Z
    :cond_7
    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ListView$DividerFilter;

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    if-eqz v12, :cond_9

    if-nez v11, :cond_9

    if-nez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    sub-int v18, v14, v7

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    goto :goto_2

    .restart local v4    # "drawTop":Z
    :cond_a
    check-cast v2, Landroid/widget/ListView$DividerFilter;

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v2}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v4

    goto :goto_3

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v4

    goto :goto_3

    .end local v4    # "drawTop":Z
    :cond_c
    const/4 v3, 0x0

    .local v3, "drawBottom":Z
    if-eqz v9, :cond_f

    if-eqz v12, :cond_e

    if-eqz v16, :cond_d

    check-cast v16, Landroid/widget/ListView$DividerFilter;

    .end local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    invoke-interface/range {v16 .. v16}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v3

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_d
    :goto_5
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    if-nez v3, :cond_4

    const/4 v15, 0x0

    goto :goto_4

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_e
    check-cast v2, Landroid/widget/ListView$DividerFilter;

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v2}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v3

    goto :goto_5

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v3

    goto :goto_5
.end method

.method static mzEndDragSelection(Landroid/widget/ListView;)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionY:I

    iput v0, p0, Landroid/widget/ListView;->mMzLastDragMotionY:I

    iput-boolean v1, p0, Landroid/widget/ListView;->mMzIsBeginDragSelect:Z

    iput-boolean v1, p0, Landroid/widget/ListView;->mMzIsOutOfDragRegion:Z

    iput v0, p0, Landroid/widget/ListView;->mMzDragDownPosition:I

    iput v0, p0, Landroid/widget/ListView;->mMzLongPressPosition:I

    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    iput-boolean v1, p0, Landroid/widget/ListView;->mMzIsOutOfListContent:Z

    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionX:I

    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionY:I

    iget-object v0, p0, Landroid/widget/ListView;->mMzScrollSelection:Landroid/widget/ListView$MzScrollSelectionRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mMzScrollSelection:Landroid/widget/ListView$MzScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$MzScrollSelectionRunnable;->finish()V

    :cond_0
    return-void
.end method

.method static mzOnDragMotionChanged(Landroid/widget/ListView;I)Z
    .locals 7
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "motionY"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .local v3, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v5, v6

    .local v2, "listBottom":I
    if-lt p1, v3, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v1

    .local v1, "dragPosition":I
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->mzIsHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-ltz p1, :cond_0

    if-ltz v1, :cond_0

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "dragMotionView":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    iget v4, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/ListView;->mMzDragMotionViewTop:I

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, p0, Landroid/widget/ListView;->mMzDragMotionViewBottom:I

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/widget/ListView;->mMzDragMotionViewTop:I

    goto :goto_1
.end method

.method static mzOnSizeChanged(Landroid/widget/ListView;)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/widget/ListView;->mDefaultCheckWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method static mzSetupChild(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget v2, p0, Landroid/widget/ListView;->mChoiceModeMZ:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ListView;->mChoiceModeMZ:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_0
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/ListView;->mMzIsCheckBoxAnim:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setIsAnimation(Z)V

    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/ListView;->mDragAndDropPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .local v1, "inSelectionMode":Z
    :goto_0
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .end local v1    # "inSelectionMode":Z
    :cond_2
    return-void

    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mzUpdateDragView(Landroid/view/View;Z)V
    .locals 0
    .param p0, "dragView"    # Landroid/view/View;
    .param p1, "checked"    # Z

    .prologue
    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method
