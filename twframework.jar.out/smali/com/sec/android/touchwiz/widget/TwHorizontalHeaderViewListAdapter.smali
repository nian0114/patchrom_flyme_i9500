.class public Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "TwHorizontalHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
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
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

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
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 65
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    .line 67
    if-nez p1, :cond_0

    .line 68
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 73
    :goto_0
    if-nez p2, :cond_1

    .line 74
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 82
    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 76
    :cond_1
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 79
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
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    .line 117
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    iget-boolean v2, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 122
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
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

    .line 185
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 186
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 221
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 222
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 241
    :goto_0
    return-object v3

    .line 226
    :cond_0
    sub-int v1, p1, v2

    .line 227
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 228
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 230
    if-ge v1, v0, :cond_1

    .line 231
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 236
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 237
    const/4 v3, 0x0

    goto :goto_0

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 246
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 247
    sub-int v1, p1, v2

    .line 248
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 249
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 253
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
    .line 290
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 291
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 292
    sub-int v1, p1, v2

    .line 293
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 294
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 295
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 299
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
    .line 265
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 266
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 267
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 286
    :goto_0
    return-object v3

    .line 271
    :cond_0
    sub-int v1, p1, v2

    .line 272
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 273
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 275
    if-ge v1, v0, :cond_1

    .line 276
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 281
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 282
    const/4 v3, 0x0

    goto :goto_0

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

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
    .line 194
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 195
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 196
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 215
    :goto_0
    return v3

    .line 200
    :cond_0
    sub-int v1, p1, v2

    .line 201
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 202
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 204
    if-ge v1, v0, :cond_1

    .line 205
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 210
    :cond_1
    sub-int v3, v1, v0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 211
    const/4 v3, 0x0

    goto :goto_0

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 313
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    .line 157
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    iget-object v4, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 158
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 168
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :goto_1
    return v3

    .line 155
    .restart local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 168
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    .line 134
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    iget-object v4, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 135
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 145
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :goto_1
    return v3

    .line 132
    .restart local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 145
    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 319
    :cond_0
    return-void
.end method
