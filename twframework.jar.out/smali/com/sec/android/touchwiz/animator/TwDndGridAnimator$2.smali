.class Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;
.super Ljava/lang/Object;
.source "TwDndGridAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 154
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    # invokes: Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->initDragIfNecessary(I)Z
    invoke-static {v0, p3}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;I)Z

    move-result v0

    return v0
.end method
