.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    .prologue
    .line 8556
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 8564
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 8584
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 8569
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8571
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setLongClickable(Z)V

    .line 8572
    const/4 v0, 0x1

    .line 8574
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 8589
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 8590
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8593
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearChoices()V

    .line 8595
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    .line 8596
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->rememberSyncState()V

    .line 8597
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestLayout()V

    .line 8599
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setLongClickable(Z)V

    .line 8600
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 8605
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8608
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTwCustomMultiChoiceMode:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8609
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 8611
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 8579
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    .prologue
    .line 8560
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$MultiChoiceModeListener;

    .line 8561
    return-void
.end method
