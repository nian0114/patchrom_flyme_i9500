.class public Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;
.super Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
.source "TwDndGridAnimator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwDndGridView"


# instance fields
.field private mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

.field private mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

.field private mItemHeight:I

.field private mItemWidth:I

.field mNonMovableItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwGridView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridview"    # Lcom/sec/android/touchwiz/widget/TwGridView;

    .prologue
    const/high16 v1, -0x80000000

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    .line 108
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    .line 109
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setDndGridAnimator(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V

    .line 111
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    .line 112
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemHeight:I

    .line 114
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initListeners()V

    .line 116
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->setAnimationListener(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelector(I)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->updateDragViewBitmap()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initDragIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method private addNewTranslation(III)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 752
    const/4 v7, 0x0

    .line 753
    .local v7, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v8, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 755
    .local v0, "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v8, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v8, :cond_1

    move-object v7, v0

    .line 756
    check-cast v7, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 761
    :goto_0
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v1

    .line 762
    .local v1, "currentDestOffsetX":I
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v2

    .line 763
    .local v2, "currentDestOffsetY":I
    const/4 v3, 0x0

    .line 764
    .local v3, "currentOffsetX":I
    const/4 v4, 0x0

    .line 765
    .local v4, "currentOffsetY":I
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    .line 766
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v8

    float-to-int v3, v8

    .line 767
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v8

    float-to-int v4, v8

    .line 770
    :cond_0
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v8

    if-nez v8, :cond_2

    .line 771
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 775
    :goto_1
    add-int v5, p2, v1

    .line 776
    .local v5, "destOffsetX":I
    add-int v6, p3, v2

    .line 777
    .local v6, "destOffsetY":I
    sub-int v8, v5, v3

    sub-int v9, v6, v4

    invoke-virtual {v7, v5, v8, v6, v9}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 778
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v8, p1, v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 779
    return-void

    .line 758
    .end local v1    # "currentDestOffsetX":I
    .end local v2    # "currentDestOffsetY":I
    .end local v3    # "currentOffsetX":I
    .end local v4    # "currentOffsetY":I
    .end local v5    # "destOffsetX":I
    .end local v6    # "destOffsetY":I
    :cond_1
    new-instance v7, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v7    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    invoke-direct {v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .restart local v7    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 773
    .restart local v1    # "currentDestOffsetX":I
    .restart local v2    # "currentDestOffsetY":I
    .restart local v3    # "currentOffsetX":I
    .restart local v4    # "currentOffsetY":I
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 785
    .local v0, "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    const/4 v2, 0x0

    .line 786
    .local v2, "xPosAdjust":I
    const/4 v3, 0x0

    .line 788
    .local v3, "yPosAdjust":I
    instance-of v4, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 789
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    move-object v4, v0

    .line 790
    check-cast v4, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v4

    float-to-int v2, v4

    .line 791
    check-cast v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v0    # "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v4

    float-to-int v3, v4

    .line 796
    :goto_0
    neg-int v4, v2

    neg-int v5, v3

    invoke-virtual {v1, v6, v4, v6, v5}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 797
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 798
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v4, p1, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 799
    return-void

    .line 793
    .restart local v0    # "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    :cond_0
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    invoke-direct {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .restart local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    goto :goto_0
.end method

.method private checkDndGrabHandle(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->activatedByLongPress()Z

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
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->checkDndGrabHandle(III)Z

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
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v1, p3}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v0

    .line 175
    .local v0, "allowDrag":Z
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->speakNotDraggableForAccessibility(I)V

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .prologue
    .line 829
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 830
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 833
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 834
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 837
    :cond_0
    return-void

    .line 833
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v2, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 869
    .local v0, "index":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 870
    .local v1, "pos":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 872
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 875
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private findMovedItemIndex(Landroid/view/View;)I
    .locals 12
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 591
    invoke-static {p1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v5

    .line 592
    .local v5, "x":I
    invoke-static {p1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v7

    .line 593
    .local v7, "y":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 594
    .local v0, "childCount":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v1

    .line 595
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_3

    .line 596
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 597
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 598
    .local v4, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 600
    const/4 v6, 0x0

    .line 601
    .local v6, "xPosAdjust":I
    const/4 v8, 0x0

    .line 602
    .local v8, "yPosAdjust":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    add-int v10, v2, v1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v3

    .line 603
    .local v3, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v9, v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v9, :cond_0

    move-object v9, v3

    .line 604
    check-cast v9, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v6

    .line 605
    check-cast v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v3    # "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v8

    .line 608
    :cond_0
    iget v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    sub-int/2addr v9, v1

    if-ne v2, v9, :cond_2

    .line 596
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 612
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v10, v5, v6

    sub-int v11, v7, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 613
    add-int v9, v2, v1

    .line 617
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    .end local v6    # "xPosAdjust":I
    .end local v8    # "yPosAdjust":I
    :goto_1
    return v9

    :cond_3
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private findMovingArrage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 624
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 625
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 626
    .local v2, "v1":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 627
    .local v3, "v2":Landroid/view/View;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 657
    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 631
    .restart local v2    # "v1":Landroid/view/View;
    .restart local v3    # "v2":Landroid/view/View;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 632
    .local v0, "r1":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 633
    .local v1, "r2":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 634
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 636
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    .line 641
    .end local v0    # "r1":Landroid/graphics/Rect;
    .end local v1    # "r2":Landroid/graphics/Rect;
    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 642
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 643
    .restart local v2    # "v1":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 644
    .restart local v3    # "v2":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 648
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 649
    .restart local v0    # "r1":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 650
    .restart local v1    # "r2":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 651
    invoke-virtual {v3, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 653
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemHeight:I

    goto :goto_0

    .line 638
    .end local v0    # "r1":Landroid/graphics/Rect;
    .end local v1    # "r2":Landroid/graphics/Rect;
    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    :cond_2
    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    goto :goto_1

    .line 655
    :cond_3
    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemHeight:I

    goto :goto_0
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 804
    .local v1, "drawableWidth":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 805
    .local v2, "drawableHeight":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isLayoutRtl()Z

    move-result v6

    .line 807
    .local v6, "isLayoutRtl":Z
    if-eqz v6, :cond_1

    .line 808
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 809
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 810
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 811
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 813
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 826
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v6    # "isLayoutRtl":Z
    :cond_0
    :goto_0
    return-void

    .line 816
    .restart local v1    # "drawableWidth":I
    .restart local v2    # "drawableHeight":I
    .restart local v6    # "isLayoutRtl":Z
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 817
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 818
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 819
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 821
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method private initDrag(I)Z
    .locals 3
    .param p1, "itemPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->findMovingArrage()V

    .line 286
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 319
    :goto_0
    return v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnableHoverDrawable(Z)V

    .line 292
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchMode:I

    .line 293
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    .line 294
    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    .line 296
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->speakDragStartForAccessibility(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->updateDragViewBitmap()V

    .line 307
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->setDragViewAlpha(I)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 310
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetX:I

    .line 311
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetY:I

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_3

    .line 315
    const-string v0, "TwDndGridView"

    const-string v1, "dndListener.OnDragAndDropStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStart()V

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 319
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 269
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initDrag(I)Z

    move-result v0

    .line 278
    :goto_0
    return v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndState()V

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    .line 150
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    .line 157
    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    .line 493
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    .line 495
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 497
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstTouchX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 498
    .local v1, "distanceX":I
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstTouchY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 499
    .local v2, "distanceY":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 500
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    .line 501
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->updateDragViewBitmap()V

    .line 505
    .end local v1    # "distanceX":I
    .end local v2    # "distanceY":I
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->getPaddingTop()I

    move-result v5

    .line 506
    .local v5, "top":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 507
    .local v4, "temp":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 510
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTop()I

    move-result v7

    sub-int v0, v6, v7

    .line 511
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 512
    if-eqz v4, :cond_2

    .line 513
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    .line 515
    :cond_2
    const/4 v3, 0x0

    .line 516
    .local v3, "needScroll":Z
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    if-gt v6, v0, :cond_3

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_6

    .line 517
    :cond_3
    const/4 v3, 0x1

    .line 518
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_4

    .line 521
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 523
    :cond_4
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    if-le v6, v0, :cond_5

    .line 524
    const/4 v6, 0x2

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndAutoScrollMode:I

    .line 526
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_6

    .line 527
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndAutoScrollMode:I

    .line 531
    :cond_6
    if-nez v3, :cond_7

    .line 532
    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndAutoScrollMode:I

    .line 535
    :cond_7
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_8

    .line 536
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 539
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->reorderIfNeeded()V

    .line 540
    return-void
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndState()V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 359
    const-string v23, "TwDndGridView"

    const-string v24, "dndListener.OnDragAndDropStop() DND_TOUCH_STATUS_START"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 364
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 473
    :goto_0
    return-void

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v18

    .line 367
    .local v18, "firstVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    .line 368
    .local v4, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 369
    .local v13, "dragView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 370
    .local v16, "dropView":Landroid/view/View;
    if-eqz v13, :cond_2

    if-nez v16, :cond_8

    .line 375
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetX:I

    move/from16 v24, v0

    sub-int v14, v23, v24

    .line 376
    .local v14, "draggedBitmapLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetY:I

    move/from16 v24, v0

    sub-int v15, v23, v24

    .line 377
    .local v15, "draggedBitmapTop":I
    if-eqz v16, :cond_4

    const/16 v17, 0x1

    .line 378
    .local v17, "dropViewVisible":Z
    :goto_1
    if-eqz v17, :cond_5

    .line 379
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v11, v23, v14

    .line 380
    .local v11, "distanceX":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v12, v23, v15

    .line 402
    .local v12, "distanceY":I
    :goto_2
    move v10, v12

    .line 403
    .local v10, "distY":I
    move v9, v11

    .line 404
    .local v9, "distX":I
    const-string v23, "TwDndGridView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "dndListener.onTouchUp() dragView == null, distanceX="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", distanceY="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    invoke-static/range {v23 .. v23}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 406
    .local v22, "va":Landroid/animation/ValueAnimator;
    new-instance v23, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;II)V

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    new-instance v23, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$4;-><init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    const-wide/16 v24, 0xd2

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 431
    sget-object v23, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v22 .. v23}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    invoke-virtual/range {v22 .. v22}, Landroid/animation/ValueAnimator;->start()V

    .line 471
    .end local v9    # "distX":I
    .end local v10    # "distY":I
    .end local v11    # "distanceX":I
    .end local v12    # "distanceY":I
    .end local v14    # "draggedBitmapLeft":I
    .end local v15    # "draggedBitmapTop":I
    .end local v17    # "dropViewVisible":Z
    .end local v22    # "va":Landroid/animation/ValueAnimator;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    goto/16 :goto_0

    .line 377
    .restart local v14    # "draggedBitmapLeft":I
    .restart local v15    # "draggedBitmapTop":I
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 382
    .restart local v17    # "dropViewVisible":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v20

    .line 384
    .local v20, "numOfColumns":I
    move/from16 v0, v20

    if-ge v4, v0, :cond_6

    .line 386
    const-string v23, "TwDndGridView"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Child cound ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") is smaller than column count ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndState()V

    goto/16 :goto_0

    .line 392
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    move/from16 v23, v0

    rem-int v19, v23, v20

    .line 394
    .local v19, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v11, v23, v14

    .line 395
    .restart local v11    # "distanceX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v12, v23, v24

    .line 396
    .restart local v12    # "distanceY":I
    goto/16 :goto_2

    .line 397
    .end local v11    # "distanceX":I
    .end local v12    # "distanceY":I
    .end local v19    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    move/from16 v24, v0

    rem-int v24, v24, v20

    add-int v23, v23, v24

    sub-int v19, v23, v20

    .line 398
    .restart local v19    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    sub-int v11, v23, v14

    .line 399
    .restart local v11    # "distanceX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v23

    sub-int v12, v23, v15

    .restart local v12    # "distanceY":I
    goto/16 :goto_2

    .line 433
    .end local v11    # "distanceX":I
    .end local v12    # "distanceY":I
    .end local v14    # "draggedBitmapLeft":I
    .end local v15    # "draggedBitmapTop":I
    .end local v17    # "dropViewVisible":Z
    .end local v19    # "index":I
    .end local v20    # "numOfColumns":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndState()V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 438
    const-string v23, "TwDndGridView"

    const-string v24, "dndListener.OnDragAndDropStop() mListItemSelectionAnimating is true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    goto/16 :goto_3

    .line 443
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v24

    sub-int v7, v23, v24

    .line 444
    .local v7, "destOffsetX":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v23

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v24

    sub-int v8, v23, v24

    .line 445
    .local v8, "destOffsetY":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetX:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v5, v23, v24

    .line 446
    .local v5, "deltaX":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetY:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v6, v23, v24

    .line 448
    .local v6, "deltaY":I
    new-instance v21, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct/range {v21 .. v21}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .line 449
    .local v21, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5, v8, v6}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 450
    const v23, 0x3f333333    # 0.7f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v23, v0

    sub-int v23, v23, v18

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mRetainFirstDragViewPos:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    .line 464
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDropDonePending:Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndTouchValuesAndBitmap()V

    goto/16 :goto_3

    .line 405
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private recalculateOffset(II)V
    .locals 19
    .param p1, "prevDestPosition"    # I
    .param p2, "newDestPosition"    # I

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v8

    .line 668
    .local v8, "firstVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v12

    .line 669
    .local v12, "numColumnes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->isLayoutRtl()Z

    move-result v10

    .line 671
    .local v10, "isLayoutRtl":Z
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_5

    .line 673
    add-int/lit8 v9, p1, 0x1

    .local v9, "i":I
    :goto_0
    move/from16 v0, p2

    if-gt v9, v0, :cond_b

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v9, v0, :cond_3

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 677
    add-int/lit8 v4, v9, -0x1

    .line 678
    .local v4, "currentIdx":I
    const/4 v14, 0x0

    .line 679
    .local v14, "skipCount":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 680
    add-int/lit8 v14, v14, 0x1

    .line 681
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 683
    :cond_0
    move v15, v9

    .line 684
    .local v15, "startIndex":I
    add-int/lit8 v16, v9, -0x1

    sub-int v7, v16, v14

    .line 685
    .local v7, "endIndex":I
    div-int v16, v7, v12

    div-int v17, v15, v12

    sub-int v13, v16, v17

    .line 686
    .local v13, "rowDiff":I
    rem-int v16, v7, v12

    rem-int v17, v15, v12

    sub-int v3, v16, v17

    .line 687
    .local v3, "columnDiff":I
    const/4 v5, 0x0

    .line 688
    .local v5, "deltaX":I
    if-eqz v10, :cond_1

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    move/from16 v16, v0

    mul-int v16, v16, v3

    mul-int/lit8 v5, v16, -0x1

    .line 694
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemHeight:I

    move/from16 v16, v0

    mul-int v6, v13, v16

    .line 695
    .local v6, "deltaY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5, v6}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->addNewTranslation(III)V

    .line 673
    .end local v3    # "columnDiff":I
    .end local v4    # "currentIdx":I
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "endIndex":I
    .end local v13    # "rowDiff":I
    .end local v14    # "skipCount":I
    .end local v15    # "startIndex":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 691
    .restart local v3    # "columnDiff":I
    .restart local v4    # "currentIdx":I
    .restart local v5    # "deltaX":I
    .restart local v7    # "endIndex":I
    .restart local v13    # "rowDiff":I
    .restart local v14    # "skipCount":I
    .restart local v15    # "startIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    move/from16 v16, v0

    mul-int v5, v3, v16

    goto :goto_2

    .line 698
    .end local v3    # "columnDiff":I
    .end local v4    # "currentIdx":I
    .end local v5    # "deltaX":I
    .end local v7    # "endIndex":I
    .end local v13    # "rowDiff":I
    .end local v14    # "skipCount":I
    .end local v15    # "startIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 701
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v16, v0

    sub-int v17, v9, v8

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 702
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 703
    const-string v16, "TwDndGridView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 706
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->findMovedItemIndex(Landroid/view/View;)I

    move-result v11

    .line 707
    .local v11, "movedPos":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->addReturningTranslation(I)V

    goto :goto_3

    .line 712
    .end local v2    # "child":Landroid/view/View;
    .end local v9    # "i":I
    .end local v11    # "movedPos":I
    :cond_5
    add-int/lit8 v9, p1, -0x1

    .restart local v9    # "i":I
    :goto_4
    move/from16 v0, p2

    if-lt v9, v0, :cond_b

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_9

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 716
    add-int/lit8 v4, v9, 0x1

    .line 717
    .restart local v4    # "currentIdx":I
    const/4 v14, 0x0

    .line 718
    .restart local v14    # "skipCount":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 719
    add-int/lit8 v14, v14, 0x1

    .line 720
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 722
    :cond_6
    move v15, v9

    .line 723
    .restart local v15    # "startIndex":I
    add-int/lit8 v16, v9, 0x1

    add-int v7, v16, v14

    .line 724
    .restart local v7    # "endIndex":I
    div-int v16, v7, v12

    div-int v17, v15, v12

    sub-int v13, v16, v17

    .line 725
    .restart local v13    # "rowDiff":I
    rem-int v16, v7, v12

    rem-int v17, v15, v12

    sub-int v3, v16, v17

    .line 726
    .restart local v3    # "columnDiff":I
    const/4 v5, 0x0

    .line 727
    .restart local v5    # "deltaX":I
    if-eqz v10, :cond_7

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    move/from16 v16, v0

    mul-int v16, v16, v3

    mul-int/lit8 v5, v16, -0x1

    .line 733
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemHeight:I

    move/from16 v16, v0

    mul-int v6, v13, v16

    .line 734
    .restart local v6    # "deltaY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5, v6}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->addNewTranslation(III)V

    .line 712
    .end local v3    # "columnDiff":I
    .end local v4    # "currentIdx":I
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "endIndex":I
    .end local v13    # "rowDiff":I
    .end local v14    # "skipCount":I
    .end local v15    # "startIndex":I
    :goto_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 730
    .restart local v3    # "columnDiff":I
    .restart local v4    # "currentIdx":I
    .restart local v5    # "deltaX":I
    .restart local v7    # "endIndex":I
    .restart local v13    # "rowDiff":I
    .restart local v14    # "skipCount":I
    .restart local v15    # "startIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    move/from16 v16, v0

    mul-int v5, v3, v16

    goto :goto_6

    .line 736
    .end local v3    # "columnDiff":I
    .end local v4    # "currentIdx":I
    .end local v5    # "deltaX":I
    .end local v7    # "endIndex":I
    .end local v13    # "rowDiff":I
    .end local v14    # "skipCount":I
    .end local v15    # "startIndex":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 739
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    move-object/from16 v16, v0

    sub-int v17, v9, v8

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 740
    .restart local v2    # "child":Landroid/view/View;
    if-nez v2, :cond_a

    .line 741
    const-string v16, "TwDndGridView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 744
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->findMovedItemIndex(Landroid/view/View;)I

    move-result v11

    .line 745
    .restart local v11    # "movedPos":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->addReturningTranslation(I)V

    goto :goto_7

    .line 749
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "movedPos":I
    :cond_b
    return-void
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 323
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    .line 327
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    .line 328
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 331
    return-void
.end method

.method private updateDragViewBitmap()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 907
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 880
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    .line 882
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    .line 883
    .local v0, "draggedItemX":I
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    .line 885
    .local v1, "draggedItemY":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 888
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 889
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 890
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 891
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 893
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 896
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_0
    return-void
.end method

.method public getDndOnItemLongClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return v2

    .line 204
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstTouchX:I

    .line 208
    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstTouchY:I

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 215
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pointToPosition(II)I

    move-result v1

    .line 216
    .local v1, "itemPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->activatedByLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndState()V

    goto :goto_0

    .line 234
    .end local v1    # "itemPosition":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchMode:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 238
    goto :goto_0

    .line 243
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchMode:I

    if-eqz v3, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 202
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
    .line 900
    return-void
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    .line 256
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchMode:I

    if-nez v1, :cond_1

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 352
    :goto_0
    return v1

    .line 340
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 341
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 343
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 347
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 860
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 861
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 862
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 864
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

    .line 841
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 842
    .local v1, "index":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v4

    add-int v2, v1, v4

    .line 844
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDropDonePending:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    if-nez v4, :cond_0

    .line 855
    :goto_0
    return v3

    .line 848
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 849
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mCanvasSaveCount:I

    .line 850
    if-eqz v0, :cond_1

    .line 851
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mCanvasSaveCount:I

    .line 853
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 855
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method reorderIfNeeded()V
    .locals 7

    .prologue
    .line 545
    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    .line 548
    .local v4, "prevDestPosition":I
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 549
    .local v0, "adjustedX":I
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchY:I

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 550
    .local v1, "adjustedY":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->pointToPosition(II)I

    move-result v2

    .line 552
    .local v2, "dragPos":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 553
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 554
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    .line 576
    :cond_0
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    if-eq v4, v5, :cond_1

    .line 577
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mListItemSelectionAnimating:Z

    .line 578
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->recalculateOffset(II)V

    .line 579
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 581
    :cond_1
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 582
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 584
    :cond_3
    return-void

    .line 557
    :cond_4
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    if-le v5, v2, :cond_6

    .line 558
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    if-ge v3, v5, :cond_0

    .line 559
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v3}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 560
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    goto :goto_0

    .line 558
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 565
    .end local v3    # "i":I
    :cond_6
    add-int/lit8 v3, v2, -0x1

    .restart local v3    # "i":I
    :goto_2
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    if-le v3, v5, :cond_0

    .line 566
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    invoke-interface {v5, v6, v3}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 567
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    goto :goto_0

    .line 565
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndPositionValues()V

    .line 487
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnableHoverDrawable(Z)V

    .line 488
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 477
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndTouchValuesAndBitmap()V

    .line 479
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemWidth:I

    .line 480
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemHeight:I

    .line 481
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mNonMovableItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 482
    return-void
.end method

.method public setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V
    .locals 0
    .param p1, "dndController"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .line 167
    return-void
.end method
