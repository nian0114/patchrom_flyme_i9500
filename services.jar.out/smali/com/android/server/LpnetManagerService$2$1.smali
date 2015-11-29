.class Lcom/android/server/LpnetManagerService$2$1;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$2;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$varAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$2;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iput-object p2, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 699
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    if-eqz v8, :cond_2

    .line 700
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 701
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 702
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 704
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 705
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 706
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    const-wide/16 v6, 0x0

    .line 709
    .local v6, "rowsDeleted":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v8

    if-nez v8, :cond_0

    .line 710
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    new-instance v9, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v10, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v10, v10, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    # setter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v8, v9}, Lcom/android/server/LpnetManagerService;->access$402(Lcom/android/server/LpnetManagerService;Lcom/android/server/LpnetManagerService$DBManager;)Lcom/android/server/LpnetManagerService$DBManager;

    .line 713
    :cond_0
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 714
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    .line 715
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/server/LpnetManagerService$DBManager;->dbDelete(Ljava/lang/String;)J

    move-result-wide v6

    .line 716
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 722
    :cond_1
    :goto_0
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "LpnetManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "rowsDeleted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "rowsDeleted":J
    :cond_2
    :goto_1
    return-void

    .line 706
    .restart local v4    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 718
    .restart local v6    # "rowsDeleted":J
    :catch_0
    move-exception v3

    .line 719
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "LpnetManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception on handling DB : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 723
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "rowsDeleted":J
    :cond_3
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 724
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$600(Lcom/android/server/LpnetManagerService;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 725
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 726
    :try_start_3
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 727
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v10, "1"

    # invokes: Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v4, v10}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_4
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUserFSPackages : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_5
    monitor-exit v9

    goto/16 :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 737
    :cond_6
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 738
    :cond_7
    const/4 v1, 0x0

    .line 740
    .local v1, "appStatus":Z
    :try_start_4
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 741
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 745
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v1, :cond_a

    .line 747
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 752
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z
    invoke-static {v8, v4}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v5

    .line 753
    .local v5, "versionMatch":Z
    if-nez v5, :cond_8

    .line 755
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 756
    :try_start_5
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 757
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 760
    :cond_8
    if-eqz v5, :cond_2

    .line 761
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z
    invoke-static {v8, v4}, Lcom/android/server/LpnetManagerService;->access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    .line 762
    .local v2, "c2dmPermExists":Z
    if-nez v2, :cond_9

    .line 764
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 765
    :try_start_6
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 766
    monitor-exit v9

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v8

    .line 757
    .end local v2    # "c2dmPermExists":Z
    :catchall_3
    move-exception v8

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8

    .line 769
    .restart local v2    # "c2dmPermExists":Z
    :cond_9
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 770
    :try_start_8
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 771
    monitor-exit v9

    goto/16 :goto_1

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v8

    .line 777
    .end local v2    # "c2dmPermExists":Z
    .end local v5    # "versionMatch":Z
    :cond_a
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 778
    :try_start_9
    iget-object v8, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v8, v8, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 779
    monitor-exit v9

    goto/16 :goto_1

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v8

    .line 742
    :catch_1
    move-exception v8

    goto/16 :goto_2
.end method
