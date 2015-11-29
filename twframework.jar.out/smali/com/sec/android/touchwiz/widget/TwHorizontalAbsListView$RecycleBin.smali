.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
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

.field private mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

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

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 1

    .prologue
    .line 8753
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8767
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    .prologue
    .line 8753
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    .prologue
    .line 8753
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    return-object p1
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9265
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9266
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 9268
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9269
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
    .line 9258
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9259
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 9260
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9262
    :cond_0
    return-void
.end method

.method private pruneScrapViews()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 9136
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v12

    .line 9137
    .local v3, "maxViews":I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9138
    .local v11, "viewTypeCount":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9139
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 9140
    aget-object v4, v5, v1

    .line 9141
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9142
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 9143
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 9144
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 9145
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9144
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 9139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9149
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9150
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_3

    .line 9151
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_3

    .line 9152
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9153
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_2

    .line 9154
    invoke-direct {p0, v10, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9155
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 9156
    add-int/lit8 v1, v1, -0x1

    .line 9151
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9161
    .end local v10    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9162
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_5

    .line 9163
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    if-ge v1, v12, :cond_5

    .line 9164
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 9165
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v12

    if-nez v12, :cond_4

    .line 9166
    invoke-direct {p0, v10, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9167
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 9168
    add-int/lit8 v1, v1, -0x1

    .line 9163
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 9172
    .end local v10    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 9272
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9273
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/view/View;Z)V

    .line 9274
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
    .line 9230
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9231
    .local v5, "size":I
    if-lez v5, :cond_3

    .line 9233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 9234
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 9235
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 9238
    .local v1, "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v7, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 9239
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v7, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 9240
    .local v2, "id":J
    iget-wide v8, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->itemId:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 9241
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 9253
    .end local v0    # "i":I
    .end local v1    # "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v2    # "id":J
    .end local v6    # "view":Landroid/view/View;
    :goto_1
    return-object v4

    .line 9243
    .restart local v0    # "i":I
    .restart local v1    # "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .restart local v6    # "view":Landroid/view/View;
    :cond_0
    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v7, p2, :cond_1

    .line 9244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9245
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9233
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9249
    .end local v1    # "params":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 9250
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    goto :goto_1

    .line 9253
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

    .line 8988
    if-nez p1, :cond_1

    .line 9050
    :cond_0
    :goto_0
    return-void

    .line 8990
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 8991
    .local v0, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-eqz v0, :cond_0

    .line 8995
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8999
    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    .line 9000
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9004
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9010
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 9014
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 9015
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 9016
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 9019
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 9020
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9022
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 9023
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 9026
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 9027
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9029
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 9032
    :cond_5
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 9033
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 9035
    :cond_6
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9038
    :cond_7
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_9

    .line 9039
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9046
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 9047
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 9041
    :cond_9
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 9042
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addScrapView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "ignoreRetainView"    # Z

    .prologue
    .line 8976
    return-void
.end method

.method public addShouldRetainView(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 8784
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    .line 8857
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8858
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8859
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8868
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8869
    return-void

    .line 8861
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8862
    .local v2, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 8863
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v3, v0

    .line 8864
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 8862
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearShouldRetainView()V
    .locals 0

    .prologue
    .line 8787
    return-void
.end method

.method clearTransientStateViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8938
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8939
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    .line 8940
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8941
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8942
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8944
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8947
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8948
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 8949
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8950
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 8951
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8950
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8953
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 8955
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
    .line 8879
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 8880
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8882
    :cond_0
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 8884
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8885
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8886
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8887
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 8889
    .local v3, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 8892
    aput-object v1, v0, v2

    .line 8885
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8895
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 8905
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8906
    .local v1, "index":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8907
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 8908
    aget-object v2, v0, v1

    .line 8909
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 8912
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public getRetainViewPositions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8793
    const/4 v0, 0x0

    return-object v0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 8961
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8962
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8969
    :goto_0
    return-object v1

    .line 8964
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8965
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8966
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8969
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShouldRetainView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 8801
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldRetainViewCount()I
    .locals 1

    .prologue
    .line 8797
    const/4 v0, 0x0

    return v0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 8916
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 8917
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 8918
    .local v0, "id":J
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8919
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8930
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 8922
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 8923
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 8924
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 8925
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8926
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 8930
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 8819
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 8820
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8821
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8822
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 8823
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8822
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8826
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8827
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 8828
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 8829
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8830
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 8831
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8830
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8827
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8835
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 8836
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8837
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 8838
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8837
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8841
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 8842
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8843
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 8844
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8843
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8847
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
    .line 9178
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 9179
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9188
    :cond_0
    return-void

    .line 9181
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9182
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 9183
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 9184
    aget-object v1, v2, v0

    .line 9185
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeShouldRetainView(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 8790
    return-void
.end method

.method removeSkippedScrap()V
    .locals 4

    .prologue
    .line 9056
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 9064
    :goto_0
    return-void

    .line 9059
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9060
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 9061
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 9060
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9063
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 9070
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9071
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    if-eqz v13, :cond_2

    move v2, v11

    .line 9072
    .local v2, "hasListener":Z
    :goto_0
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v13, v11, :cond_3

    move v7, v11

    .line 9074
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9075
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 9076
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 9077
    aget-object v9, v0, v3

    .line 9078
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 9079
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 9081
    .local v6, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    .line 9083
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    aput-object v11, v0, v3

    .line 9085
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 9087
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9089
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v11, :cond_4

    .line 9090
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v11, :cond_0

    .line 9091
    new-instance v11, Landroid/util/LongSparseArray;

    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 9093
    :cond_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v11, v11, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v11, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 9094
    .local v4, "id":J
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9076
    .end local v4    # "id":J
    .end local v6    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
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

    .line 9071
    goto :goto_0

    .restart local v2    # "hasListener":Z
    :cond_3
    move v7, v12

    .line 9072
    goto :goto_1

    .line 9095
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v11, v11, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v11, :cond_6

    .line 9096
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v11, :cond_5

    .line 9097
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 9099
    :cond_5
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v11, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 9100
    :cond_6
    if-eq v10, v14, :cond_1

    .line 9102
    invoke-direct {p0, v9, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 9104
    :cond_7
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 9106
    if-eq v10, v14, :cond_1

    .line 9107
    invoke-direct {p0, v9, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 9111
    :cond_8
    if-eqz v7, :cond_9

    .line 9112
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v8, v11, v10

    .line 9115
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 9116
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v3

    iput v11, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    .line 9117
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9119
    if-eqz v2, :cond_1

    .line 9120
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;

    invoke-interface {v11, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 9126
    .end local v6    # "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->pruneScrapViews()V

    .line 9127
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 9196
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 9197
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 9198
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9199
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 9200
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9203
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 9204
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 9205
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 9206
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 9207
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 9208
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9207
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9204
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9213
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 9214
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 9215
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 9216
    aget-object v7, v0, v2

    .line 9217
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 9218
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9215
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 9221
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 8805
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 8806
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8809
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8810
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 8811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8810
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8813
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mViewTypeCount:I

    .line 8814
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8815
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8816
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 8850
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
