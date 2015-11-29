.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;
.super Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcastsWithList"
.end annotation


# instance fields
.field final mUidMapOfNewPkgState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;-><init>()V

    .line 760
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    .line 761
    return-void
.end method

.method private getOrAllocateNewState(I)Ljava/util/HashMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 797
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 798
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 799
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 801
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 791
    invoke-super {p0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 792
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 793
    return-void
.end method

.method public getNewState(ILjava/lang/String;)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/HashMap;

    move-result-object v0

    .line 765
    .local v0, "packagesNewState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public packagesNewStateForUserId(I)Ljava/util/HashMap;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public putNewState(ILjava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->getOrAllocateNewState(I)Ljava/util/HashMap;

    move-result-object v0

    .line 770
    .local v0, "packagesNewState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 782
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->remove(I)V

    .line 783
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 784
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 774
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->remove(ILjava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 776
    .local v0, "packagesNewState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    :cond_0
    return-void
.end method
