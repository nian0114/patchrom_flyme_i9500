.class public Lcom/sec/android/touchwiz/animator/TwDndListAnimator;
.super Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
.source "TwDndListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwDndListView"


# instance fields
.field private mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

.field private mItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field mNonMovableItems:Landroid/util/SparseIntArray;

.field private final mScrollBarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Lcom/sec/android/touchwiz/widget/TwListView;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    .line 94
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScrollBarSize:I

    .line 104
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 105
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initListeners()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->setAnimationListener(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDndListAnimator(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndListAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDragIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method private addNewTranslation(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "totalHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 635
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 636
    .local v0, "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 637
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 642
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    :goto_0
    const/4 v2, 0x0

    .line 643
    .local v2, "yCurrentOffset":I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 644
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 646
    :cond_0
    sub-int v3, p2, v2

    invoke-virtual {v1, v4, v4, p2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 647
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 648
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 652
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 653
    return-void

    .line 639
    .end local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    .end local v2    # "yCurrentOffset":I
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .restart local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 650
    .restart local v2    # "yCurrentOffset":I
    :cond_2
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 622
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 623
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-nez v3, :cond_0

    .line 631
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 627
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 628
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 629
    .local v2, "yCurrentOffset":I
    neg-int v3, v2

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 630
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_0
.end method

.method private checkDndGrabHandle(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 196
    :goto_0
    return v2

    .line 186
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 188
    .local v0, "childRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0
.end method

.method private checkStartDnd(III)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->checkDndGrabHandle(III)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    const/4 v0, 0x0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v1, p3}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v0

    .line 175
    .local v0, "allowDrag":Z
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakNotDraggableForAccessibility(I)V

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 766
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 767
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 768
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 769
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 771
    :cond_0
    return-void

    .line 767
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 802
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 803
    .local v0, "index":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 804
    .local v1, "pos":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 806
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 809
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private findDragItemPosition(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 578
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 579
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v1

    .line 580
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_1

    .line 581
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 582
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 583
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 584
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    add-int v4, v2, v1

    .line 589
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :goto_1
    return v4

    .line 581
    .restart local v2    # "i":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private findMovedItemPosition(I)I
    .locals 9
    .param p1, "y"    # I

    .prologue
    .line 593
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 594
    .local v0, "childCount":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v1

    .line 595
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_2

    .line 596
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 598
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    sub-int/2addr v6, v1

    if-ne v2, v6, :cond_1

    .line 596
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 603
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 605
    const/4 v5, 0x0

    .line 606
    .local v5, "yPosAdjust":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v3

    .line 607
    .local v3, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v6, v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_0

    .line 608
    check-cast v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v3    # "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    .line 612
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v8, p1, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 613
    add-int v6, v2, v1

    .line 617
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "yPosAdjust":I
    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 733
    .local v1, "drawableWidth":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 734
    .local v2, "drawableHeight":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->isLayoutRtl()Z

    move-result v6

    .line 736
    .local v6, "isLayoutRtl":Z
    if-eqz v6, :cond_1

    .line 737
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 738
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 739
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 740
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 742
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 743
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 745
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 760
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v6    # "isLayoutRtl":Z
    :cond_0
    :goto_0
    return-void

    .line 748
    .restart local v1    # "drawableWidth":I
    .restart local v2    # "drawableHeight":I
    .restart local v6    # "isLayoutRtl":Z
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 749
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 750
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 751
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 753
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 754
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 756
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method private initDrag(I)Z
    .locals 4
    .param p1, "itemPosition"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 296
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    .line 298
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 331
    :goto_0
    return v0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnableHoverDrawable(Z)V

    .line 304
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    .line 305
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    .line 306
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    .line 308
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakDragStartForAccessibility(I)V

    .line 312
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 320
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragViewAlpha(I)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 323
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_4

    .line 327
    const-string v0, "TwDndListView"

    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStart()V

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    move v0, v1

    .line 331
    goto :goto_0
.end method

.method private initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 282
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDrag(I)Z

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    .line 139
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    .line 147
    return-void
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 813
    :cond_0
    const/4 v0, 0x1

    .line 815
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 383
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 384
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 385
    const/4 v3, 0x0

    .line 386
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    .line 389
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    .line 390
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    .line 391
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 392
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstTouchY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 393
    .local v1, "distance":I
    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 394
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    .line 398
    .end local v1    # "distance":I
    :cond_1
    iput v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "needScroll":Z
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingTop()I

    move-result v5

    .line 402
    .local v5, "top":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 403
    .local v4, "temp":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 404
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 406
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getTop()I

    move-result v7

    sub-int v0, v6, v7

    .line 407
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 408
    if-eqz v4, :cond_3

    .line 409
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    .line 411
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-gt v6, v0, :cond_4

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_7

    .line 412
    :cond_4
    const/4 v2, 0x1

    .line 413
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_5

    .line 416
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 418
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-le v6, v0, :cond_6

    .line 419
    iput v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 421
    :cond_6
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_7

    .line 422
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 426
    :cond_7
    if-nez v2, :cond_8

    .line 427
    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 430
    :cond_8
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_9

    .line 431
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->reorderIfNeeded()V

    .line 435
    return-void
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 459
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    .line 460
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v6

    .line 462
    .local v6, "firstVisiblePosition":I
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    .line 464
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v10, :cond_0

    .line 465
    const-string v10, "TwDndListView"

    const-string v11, "dndListener.onDragAndDropStop() DND_TOUCH_STATUS_START"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 469
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 563
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 476
    .local v2, "dragView":Landroid/view/View;
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 477
    .local v4, "dropView":Landroid/view/View;
    if-eqz v2, :cond_3

    if-nez v4, :cond_8

    .line 482
    :cond_3
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int v3, v10, v11

    .line 483
    .local v3, "draggedBitmapTop":I
    if-eqz v4, :cond_5

    const/4 v5, 0x1

    .line 484
    .local v5, "dropViewVisible":Z
    :goto_1
    if-eqz v5, :cond_6

    .line 485
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v1, v10, v3

    .line 495
    .local v1, "distance":I
    :goto_2
    const-string v10, "TwDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dndListener.onTouchUp() dragView == null, distance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 497
    .local v9, "va":Landroid/animation/ValueAnimator;
    new-instance v10, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$3;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 504
    new-instance v10, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$4;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$4;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    const-wide/16 v10, 0xd2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 521
    sget-object v10, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 560
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapTop":I
    .end local v5    # "dropViewVisible":Z
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    :cond_4
    :goto_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 561
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 562
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    goto/16 :goto_0

    .line 483
    .restart local v3    # "draggedBitmapTop":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 489
    .restart local v5    # "dropViewVisible":Z
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    if-ge v10, v6, :cond_7

    .line 490
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    neg-int v1, v10

    .restart local v1    # "distance":I
    goto :goto_2

    .line 492
    .end local v1    # "distance":I
    :cond_7
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v1, v10, v3

    .restart local v1    # "distance":I
    goto/16 :goto_2

    .line 523
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapTop":I
    .end local v5    # "dropViewVisible":Z
    :cond_8
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v10, :cond_9

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    .line 527
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v10, :cond_4

    .line 528
    const-string v10, "TwDndListView"

    const-string v11, "dndListener.OnDragAndDropStop() mListItemSelectionAnimating is true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    goto :goto_3

    .line 532
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v7, v10, v11

    .line 533
    .local v7, "offsetY":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v12, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v11, v12

    sub-int v0, v10, v11

    .line 535
    .local v0, "deltaY":I
    new-instance v8, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .line 537
    .local v8, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7, v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 538
    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 540
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-virtual {v10, v11, v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 541
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 543
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mRetainFirstDragViewPos:I

    .line 547
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    .line 552
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndTouchValuesAndBitmap()V

    .line 557
    const-string v10, "TwDndListView"

    const-string v11, "onTouchUp() start last animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private recalculateOffset(II)V
    .locals 13
    .param p1, "prevPos"    # I
    .param p2, "newPos"    # I

    .prologue
    .line 656
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v4

    .line 657
    .local v4, "dividerHeight":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v5

    .line 658
    .local v5, "firstVisiblePosition":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v2, v10, v4

    .line 659
    .local v2, "childHeight":I
    if-le p2, p1, :cond_5

    .line 660
    add-int/lit8 v7, p1, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, p2, :cond_b

    .line 661
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    if-le v7, v10, :cond_3

    .line 662
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 664
    move v9, v2

    .line 665
    .local v9, "totalHeight":I
    move v3, v7

    .line 666
    .local v3, "currentIdx":I
    :goto_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    .line 667
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    .line 670
    :cond_0
    neg-int v10, v9

    invoke-direct {p0, v7, v10}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addNewTranslation(II)V

    .line 660
    .end local v3    # "currentIdx":I
    .end local v9    # "totalHeight":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 672
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 673
    .local v6, "fixedView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 678
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 681
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 682
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_4

    .line 683
    const-string v10, "TwDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 686
    :cond_4
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    .line 687
    .local v0, "centerY":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 688
    .local v8, "movedPos":I
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addReturningTranslation(I)V

    goto :goto_2

    .line 692
    .end local v0    # "centerY":I
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "movedPos":I
    :cond_5
    add-int/lit8 v7, p1, -0x1

    .restart local v7    # "i":I
    :goto_3
    if-lt v7, p2, :cond_b

    .line 693
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    if-ge v7, v10, :cond_9

    .line 694
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 696
    move v9, v2

    .line 697
    .restart local v9    # "totalHeight":I
    move v3, v7

    .line 698
    .restart local v3    # "currentIdx":I
    :goto_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_6

    .line 699
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_4

    .line 702
    :cond_6
    invoke-direct {p0, v7, v9}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addNewTranslation(II)V

    .line 692
    .end local v3    # "currentIdx":I
    .end local v9    # "totalHeight":I
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 703
    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 704
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 705
    .restart local v6    # "fixedView":Landroid/view/View;
    if-eqz v6, :cond_7

    .line 710
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 713
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_9
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 714
    .restart local v1    # "child":Landroid/view/View;
    if-nez v1, :cond_a

    .line 715
    const-string v10, "TwDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 718
    :cond_a
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    .line 719
    .restart local v0    # "centerY":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 720
    .restart local v8    # "movedPos":I
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addReturningTranslation(I)V

    goto :goto_5

    .line 724
    .end local v0    # "centerY":I
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "movedPos":I
    :cond_b
    return-void
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 336
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    .line 339
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    .line 340
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 342
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 343
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingLeft()I

    move-result v0

    .line 822
    .local v0, "draggedItemX":I
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    .line 824
    .local v1, "draggedItemY":I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_0
    :goto_0
    return-void

    .line 827
    .restart local v0    # "draggedItemX":I
    .restart local v1    # "draggedItemY":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 830
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePosGravity:I

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 831
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 835
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 837
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 838
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 840
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_0

    .line 833
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public getDndOnItemLongClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 212
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    return v2

    .line 214
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 221
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    .line 222
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    .line 225
    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstTouchY:I

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 229
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pointToPosition(II)I

    move-result v1

    .line 230
    .local v1, "itemPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    goto :goto_0

    .line 248
    .end local v1    # "itemPosition":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 252
    goto/16 :goto_0

    .line 257
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    if-eqz v3, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemAnimatorEnd()V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDragIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    if-nez v5, :cond_2

    :cond_0
    move v4, v1

    .line 378
    :cond_1
    :goto_0
    :pswitch_0
    return v4

    .line 351
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 353
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 363
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 358
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 367
    :pswitch_4
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v3, v5, 0x8

    .line 368
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 369
    .local v2, "pointerId":I
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    if-ne v2, v5, :cond_1

    .line 372
    if-nez v3, :cond_3

    move v1, v4

    .line 373
    .local v1, "newPointerIndex":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 795
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 796
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 798
    :cond_0
    return-void
.end method

.method public preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 776
    .local v1, "index":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v2, v1, v4

    .line 778
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-nez v4, :cond_0

    .line 789
    :goto_0
    return v3

    .line 782
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 783
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    .line 784
    if-eqz v0, :cond_1

    .line 785
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 786
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    .line 787
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 789
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method reorderIfNeeded()V
    .locals 5

    .prologue
    .line 439
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    .line 441
    .local v2, "prevDestPosition":I
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 442
    .local v0, "adjustedY":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->findDragItemPosition(I)I

    move-result v1

    .line 443
    .local v1, "dragPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    .line 448
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_1

    .line 449
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->recalculateOffset(II)V

    .line 450
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 453
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 454
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 456
    :cond_3
    return-void
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndPositionValues()V

    .line 574
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnableHoverDrawable(Z)V

    .line 575
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndTouchValuesAndBitmap()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 569
    return-void
.end method

.method public setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V
    .locals 1
    .param p1, "dndController"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->pointToPosition(II)I

    move-result v0

    .line 205
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    goto :goto_0
.end method
