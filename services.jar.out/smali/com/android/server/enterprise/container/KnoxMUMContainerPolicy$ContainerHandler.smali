.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
.super Landroid/os/Handler;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerHandler"
.end annotation


# static fields
.field public static final MSG_ACTION_PACKAGE_ADDED:I = 0x6

.field public static final MSG_ACTION_PACKAGE_REMOVED:I = 0x7

.field public static final MSG_KLMS_LICENSE_UPDATE:I = 0x2

.field public static final MSG_REMOVE_ORPHANED_CONTAINERS:I = 0x4

.field public static final MSG_START_MIGRATION_WIZARD:I = 0x5

.field public static final MSG_START_SETUP_WIZARD:I = 0x1

.field public static final MSG_UPDATE_CONTAINER_CREATION_STATUS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 39
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ContainerHandler.MSG_START_SETUP_WIZARD is called ..."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sec/knox/container/ContainerCreationParams;

    .local v28, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.sec.knox.start.SETUP_WIZARD"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v24, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "creation_params"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$600()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createContainer: intent from User:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with requestid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v28 .. v28}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_0
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    move-object/from16 v28, v2

    check-cast v28, [Ljava/lang/Integer;

    .local v28, "params":[Ljava/lang/Integer;
    const/4 v2, 0x0

    aget-object v2, v28, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "requestId":I
    const/4 v2, 0x1

    aget-object v2, v28, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "containerId":I
    const/4 v2, 0x2

    aget-object v2, v28, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, "adminUid":I
    const/4 v2, 0x3

    aget-object v2, v28, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "creatorUid":I
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creation status: reqId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", containerId -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", adminUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", creatorUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v33

    .local v33, "pkgNames":[Ljava/lang/String;
    if-eqz v33, :cond_3

    move-object/from16 v14, v33

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    aget-object v3, v14, v21

    .local v3, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending creation update to package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    :cond_4
    if-lez v4, :cond_8

    if-ne v7, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v12

    .local v12, "ownerUid":I
    if-lez v12, :cond_8

    if-eq v12, v6, :cond_8

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v34

    .local v34, "pkgs":[Ljava/lang/String;
    if-eqz v34, :cond_7

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_5

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending creation update to app uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v14, v34

    .restart local v14    # "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v25, v0

    .restart local v25    # "len$":I
    const/16 v21, 0x0

    .restart local v21    # "i$":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    aget-object v3, v14, v21

    .restart local v3    # "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_6

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending creation update to package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object v9, v3

    move v10, v4

    move v11, v5

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .end local v12    # "ownerUid":I
    .end local v34    # "pkgs":[Ljava/lang/String;
    :cond_8
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "create callback found, updating callback.."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x3ea

    .local v36, "retCode":I
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .local v18, "data":Landroid/os/Bundle;
    if-lez v4, :cond_9

    const/16 v36, 0x3e9

    const-string v2, "containerid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    :try_start_1
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    move/from16 v0, v36

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/4 v2, 0x0

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$902(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    goto/16 :goto_0

    :cond_9
    const/16 v2, -0x3f9

    if-ne v4, v2, :cond_a

    const/16 v36, 0x3f8

    const-string v2, "containerid"

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "requestid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_a
    const-string v2, "containerid"

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :catch_1
    move-exception v19

    .local v19, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v4    # "containerId":I
    .end local v5    # "requestId":I
    .end local v6    # "creatorUid":I
    .end local v7    # "adminUid":I
    .end local v18    # "data":Landroid/os/Bundle;
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v28    # "params":[Ljava/lang/Integer;
    .end local v33    # "pkgNames":[Ljava/lang/String;
    .end local v36    # "retCode":I
    :pswitch_2
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MSG_REMOVE_ORPHANED_CONTAINERS received"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v31

    .local v31, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v31, :cond_0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PersonaInfo;

    .local v23, "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v22, v0

    .local v22, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v8, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v29

    .local v29, "partial":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    move-object/from16 v0, v23

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v12

    .restart local v12    # "ownerUid":I
    if-lez v12, :cond_c

    if-eqz v29, :cond_b

    :cond_c
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orphan container removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v23

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v9, 0x1

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    invoke-static {v2, v8, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto :goto_5

    .end local v12    # "ownerUid":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "id":I
    .end local v23    # "info":Landroid/content/pm/PersonaInfo;
    .end local v29    # "partial":Z
    .end local v31    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_3
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ContainerHandler.MSG_START_MIGRATION_WIZARD is called ..."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/sec/knox/container/ContainerCreationParams;

    .local v28, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v24, Landroid/content/Intent;

    const-string v2, "com.sec.knox.start.MIGRATION_WIZARD"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v24    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.containeragent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "creation_params"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$600()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createContainer: intent from User:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with requestid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v28 .. v28}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .end local v24    # "intent":Landroid/content/Intent;
    .end local v28    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_2
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_4
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MSG_KLMS_LICENSE_UPDATE received"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .local v15, "code":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .local v16, "container_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v32

    .local v32, "personasList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v32, :cond_12

    const/16 v37, 0x0

    .local v37, "retVal":Z
    const-string v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PersonaManagerService;

    .local v38, "service":Lcom/android/server/pm/PersonaManagerService;
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v30, v0

    .local v30, "personaIds":[I
    const/16 v26, 0x0

    .local v26, "length":I
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PersonaInfo;

    .restart local v23    # "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v23

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v17

    .local v17, "currentState":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v23

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersonaManager$StateManager;->getPreviousState()Landroid/content/pm/PersonaState;

    move-result-object v35

    .local v35, "previousState":Landroid/content/pm/PersonaState;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_f

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "persona id matched!! - container_id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x5a

    if-ne v15, v2, :cond_e

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentState for persona- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " previousState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v23

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v8, Landroid/content/pm/PersonaNewEvent;->LICENSE_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager$StateManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;

    if-eqz v38, :cond_d

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z

    move-result v37

    if-eqz v37, :cond_d

    add-int/lit8 v27, v26, 0x1

    .end local v26    # "length":I
    .local v27, "length":I
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v2, v30, v26

    move/from16 v26, v27

    .end local v27    # "length":I
    .restart local v26    # "length":I
    goto/16 :goto_6

    :cond_e
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "setting persona state to KLMS_LOCKED"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v23

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v8, Landroid/content/pm/PersonaNewEvent;->LICENSE_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager$StateManager;->fireEvent(Landroid/content/pm/PersonaNewEvent;)Landroid/content/pm/PersonaState;

    goto/16 :goto_6

    :cond_f
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "persona id unmatched!! - container_id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v17    # "currentState":Landroid/content/pm/PersonaState;
    .end local v23    # "info":Landroid/content/pm/PersonaInfo;
    .end local v35    # "previousState":Landroid/content/pm/PersonaState;
    :cond_10
    if-lez v26, :cond_0

    const/16 v20, 0x0

    .local v20, "i":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    aget v8, v30, v20

    invoke-interface {v2, v8}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_11

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting contaienr "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v30, v20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in background after reboot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :catch_3
    move-exception v19

    .restart local v19    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to start User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v30, v20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in Background:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    .end local v20    # "i":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v26    # "length":I
    .end local v30    # "personaIds":[I
    .end local v37    # "retVal":Z
    .end local v38    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_12
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v8, "persona list is null"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v15    # "code":I
    .end local v16    # "container_id":I
    .end local v32    # "personasList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->packageInstalledForExternalStorage(Ljava/lang/String;)V
    invoke-static {v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->packageRemovedForExternalStorage(Ljava/lang/String;)V
    invoke-static {v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
