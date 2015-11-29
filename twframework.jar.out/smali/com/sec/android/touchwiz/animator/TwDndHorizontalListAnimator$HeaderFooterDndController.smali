.class Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "TwDndHorizontalListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V
    .locals 0
    .param p2, "wrappedController"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .line 828
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 3
    .param p1, "startPos"    # I

    .prologue
    const/4 v0, 0x0

    .line 831
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v0

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 838
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method public allowDrop(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    const/4 v0, 0x0

    .line 844
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return v0

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    .line 850
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v0

    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result p1

    .line 864
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 865
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result p2

    .line 870
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 873
    :cond_2
    return-void

    .line 861
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 866
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p2, v0, -0x1

    goto :goto_1
.end method
