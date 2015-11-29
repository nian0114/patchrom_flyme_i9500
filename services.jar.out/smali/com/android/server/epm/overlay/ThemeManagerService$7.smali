.class Lcom/android/server/epm/overlay/ThemeManagerService$7;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_INSTALL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v11, v11, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, "bdl":Landroid/os/Bundle;
    const-string v9, "path"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .local v8, "path":Landroid/net/Uri;
    const-string v9, "isTrial"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .local v4, "isTrial":Z
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->installThemePackage(Landroid/net/Uri;Z)V

    goto :goto_0

    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v4    # "isTrial":Z
    .end local v8    # "path":Landroid/net/Uri;
    :cond_1
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .local v5, "msg1":Landroid/os/Message;
    iget v9, p1, Landroid/os/Message;->what:I

    iput v9, v5, Landroid/os/Message;->what:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v5    # "msg1":Landroid/os/Message;
    :pswitch_1
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_NORMAL_INSTALL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v11, v11, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->normalMasterInstallation(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_2
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_CHANGE_STATE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "packageName":Ljava/lang/String;
    const-string v9, "order"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "order":I
    const-string v9, "isTrial"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .restart local v4    # "isTrial":Z
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v6, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeThemeState(Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v4    # "isTrial":Z
    .end local v6    # "order":I
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # operator-- for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2310(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_UNINSTALL_MASTER"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v11}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v11, v11, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v9

    if-gtz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v2, "hl":Landroid/os/Handler;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/epm/overlay/ThemeManagerService$7$1;

    invoke-direct {v9, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$7$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$7;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2402(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->mCallback:Landroid/app/epm/IPluginManagerCallback;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x64

    invoke-interface {v9, v10, v11}, Landroid/app/epm/IPluginManagerCallback;->onInstallCompleted(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v9, Lcom/android/server/epm/overlay/ThemeManagerService$7$2;

    invoke-direct {v9, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$7$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$7;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "hl":Landroid/os/Handler;
    :pswitch_4
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MESSAGE_BUGGY_MASTER"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v10, v11

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2302(Lcom/android/server/epm/overlay/ThemeManagerService;I)I

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_5
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_REMOVE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v7    # "packageName":Ljava/lang/String;
    :pswitch_6
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MESSAGE_EVENT"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string v9, "packageName"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "packageName":Ljava/lang/String;
    const-string v9, "index"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "index":I
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;I)V
    invoke-static {v9, v7, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v3    # "index":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$7;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2600(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
