.class public Lcom/sec/android/touchwiz/app/TwExpandableListActivity;
.super Landroid/app/Activity;
.source "TwExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    const v0, 0x2030001

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->ensureList()V

    .line 264
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 221
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 223
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a TwExpandableListView whose id attribute is \'R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnChildClickListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnChildClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupExpandListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setOnGroupCollapseListener(Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;)V

    .line 237
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 240
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mFinishedStart:Z

    .line 241
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 176
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 192
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 198
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->ensureList()V

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->ensureList()V

    .line 251
    iput-object p1, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 252
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 253
    monitor-exit p0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/touchwiz/app/TwExpandableListActivity;->mList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectedGroup(I)V

    .line 327
    return-void
.end method
