.class Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1

    .prologue
    .line 8659
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8673
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .prologue
    .line 8659
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    .prologue
    .line 8659
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    return-object p1
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9139
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9140
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9142
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9143
    return-void
.end method

.method private clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9132
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9133
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9134
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9136
    :cond_0
    return-void
.end method

.method private pruneScrapViews()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 9016
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v12

    .line 9017
    .local v3, "maxViews":I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9018
    .local v11, "viewTypeCount":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9019
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 9020
    aget-object v4, v5, v1

    .line 9021
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9022
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 9023
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 9024
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 9025
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9024
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 9019
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9029
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9030
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_3

    .line 9031
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 9032
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9033
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_2

    .line 9034
    invoke-direct {p0, v10, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9035
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9036
    add-int/lit8 v1, v1, -0x1

    .line 9031
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9041
    .end local v10    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9042
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_5

    .line 9043
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 9044
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9045
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_4

    .line 9046
    invoke-direct {p0, v10, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9047
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 9048
    add-int/lit8 v1, v1, -0x1

    .line 9043
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9052
    .end local v10    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 9146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9147
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V

    .line 9148
    return-void
.end method

.method private retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 10
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 9104
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9105
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 9107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 9108
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9109
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 9112
    .local v1, "params":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v7, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 9113
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 9114
    .local v2, "id":J
    iget-wide v8, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 9115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 9127
    .end local v0    # "i":I
    .end local v1    # "params":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v2    # "id":J
    .end local v6    # "view":Landroid/view/View;
    :goto_1
    return-object v4

    .line 9117
    .restart local v0    # "i":I
    .restart local v1    # "params":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v6    # "view":Landroid/view/View;
    :cond_0
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_1

    .line 9118
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9119
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9107
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9123
    .end local v1    # "params":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9124
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9127
    .end local v0    # "i":I
    .end local v4    # "scrap":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 8868
    if-nez p1, :cond_1

    .line 8930
    :cond_0
    :goto_0
    return-void

    .line 8870
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8871
    .local v0, "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v0, :cond_0

    .line 8875
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8879
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 8880
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8884
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8890
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 8894
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8895
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 8896
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 8899
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 8900
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8902
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 8903
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 8906
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 8907
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8909
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 8912
    :cond_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 8913
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 8915
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8918
    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_9

    .line 8919
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8926
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 8927
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 8921
    :cond_9
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 8922
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 5

    .prologue
    .line 8742
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8743
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8744
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8753
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8754
    return-void

    .line 8746
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8747
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 8748
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 8749
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearTransientStateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8824
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8825
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 8826
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8827
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8828
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8827
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8830
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8833
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8834
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 8835
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8836
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8837
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8836
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8839
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 8841
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 8764
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 8765
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8767
    :cond_0
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 8770
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8771
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8772
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8773
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8775
    .local v3, "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 8778
    aput-object v1, v0, v2

    .line 8771
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8781
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 8791
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8792
    .local v1, "index":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8793
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 8794
    aget-object v2, v0, v1

    .line 8795
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 8798
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 8847
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8848
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8855
    :goto_0
    return-object v1

    .line 8850
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8851
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8852
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8855
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 8802
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 8803
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 8804
    .local v0, "id":J
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8805
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8816
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 8808
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 8809
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 8810
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 8811
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8812
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 8816
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 8704
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 8705
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8706
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8707
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 8708
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8711
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8712
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 8713
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 8714
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8715
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 8716
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8715
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8712
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8720
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 8721
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8722
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 8723
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8722
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8726
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 8727
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8728
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 8729
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8728
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8732
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9058
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 9059
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9068
    :cond_0
    return-void

    .line 9061
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9062
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9063
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 9064
    aget-object v1, v2, v0

    .line 9065
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 4

    .prologue
    .line 8936
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 8944
    :goto_0
    return-void

    .line 8939
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8940
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 8941
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8940
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8943
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 8950
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8951
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    if-eqz v13, :cond_2

    move v2, v11

    .line 8952
    .local v2, "hasListener":Z
    :goto_0
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v13, v11, :cond_3

    move v7, v11

    .line 8954
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8955
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8956
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 8957
    aget-object v9, v0, v3

    .line 8958
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 8959
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 8961
    .local v6, "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 8963
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 8965
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 8967
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8969
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 8970
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 8971
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8973
    :cond_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8974
    .local v4, "id":J
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8956
    .end local v4    # "id":J
    .end local v6    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_2
    move v2, v12

    .line 8951
    goto :goto_0

    .restart local v2    # "hasListener":Z
    :cond_3
    move v7, v12

    .line 8952
    goto :goto_1

    .line 8975
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 8976
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 8977
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8979
    :cond_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 8980
    :cond_6
    if-eq v10, v14, :cond_1

    .line 8982
    invoke-direct {p0, v9, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 8984
    :cond_7
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 8986
    if-eq v10, v14, :cond_1

    .line 8987
    invoke-direct {p0, v9, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 8991
    :cond_8
    if-eqz v7, :cond_9

    .line 8992
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 8995
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8996
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8997
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8999
    if-eqz v2, :cond_1

    .line 9000
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 9006
    .end local v6    # "lp":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->pruneScrapViews()V

    .line 9007
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 9076
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 9077
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9078
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9079
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 9080
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9079
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9083
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9084
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 9085
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 9086
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9087
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 9088
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9087
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9084
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9093
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9094
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9095
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 9096
    aget-object v7, v0, v2

    .line 9097
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 9098
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9095
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9101
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 8690
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 8691
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8694
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8695
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 8696
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8695
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8698
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8699
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8700
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8701
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 8735
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
