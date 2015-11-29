.class public Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "TwHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 66
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mIsFilterable:Z

    .line 68
    if-nez p1, :cond_0

    .line 69
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 74
    :goto_0
    if-nez p2, :cond_1

    .line 75
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 83
    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 77
    :cond_1
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 80
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    .line 104
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    .line 109
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 159
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 160
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 195
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 196
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 215
    :goto_0
    return-object v3

    .line 200
    :cond_0
    sub-int v1, p1, v2

    .line 201
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 202
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 204
    if-ge v1, v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 210
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 211
    const/4 v3, 0x0

    goto :goto_0

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 220
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 221
    sub-int v1, p1, v2

    .line 222
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 223
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 224
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 227
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 265
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 266
    sub-int v1, p1, v2

    .line 267
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 268
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 269
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 273
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 240
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 241
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    .line 260
    :goto_0
    return-object v3

    .line 245
    :cond_0
    sub-int v1, p1, v2

    .line 246
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 247
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 249
    if-ge v1, v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 255
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 256
    const/4 v3, 0x0

    goto :goto_0

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 169
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 170
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    .line 189
    :goto_0
    return v3

    .line 174
    :cond_0
    sub-int v1, p1, v2

    .line 175
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 176
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 178
    if-ge v1, v0, :cond_1

    .line 179
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 184
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 185
    const/4 v3, 0x0

    goto :goto_0

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 287
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    .line 134
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iget-object v4, v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 147
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :goto_1
    return v3

    .line 137
    .restart local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 147
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;

    .line 115
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    iget-object v4, v1, Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 128
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :goto_1
    return v3

    .line 118
    .restart local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 128
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 293
    :cond_0
    return-void
.end method
