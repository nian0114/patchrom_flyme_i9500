.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .local v19, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v20, "MountService"

    const-string v21, "++ H_UNMOUNT_PM_ADDOBJ (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .restart local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v21, "MountService"

    const-string v22, "++ H_UNMOUNT_PM_UPDATE (%s)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_1
    aput-object v20, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x0

    .local v5, "bFoundPath":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .local v18, "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .local v17, "storage":Landroid/os/storage/StorageVolume;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v5, 0x1

    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    .end local v18    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_2
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    const-string v20, "MountService"

    const-string v21, "Updating external media status on PackageManager"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .end local v5    # "bFoundPath":Z
    .end local v9    # "i":I
    :cond_3
    const-string v20, "null"

    goto/16 :goto_1

    .restart local v5    # "bFoundPath":Z
    .restart local v9    # "i":I
    .restart local v17    # "storage":Landroid/os/storage/StorageVolume;
    .restart local v18    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    .end local v18    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    :cond_5
    const-string v20, "MountService"

    const-string v21, "skip update enternal media status"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v5    # "bFoundPath":Z
    .end local v9    # "i":I
    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_2
    const-string v20, "MountService"

    const-string v21, "++ H_UNMOUNT_PM_DONE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v20, "MountService"

    const-string v21, "Updated status. Processing requests"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "size":I
    new-array v14, v13, [I

    .local v14, "sizeArr":[I
    const/4 v15, 0x0

    .local v15, "sizeArrN":I
    const-string v20, "activity"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .local v16, "sizeArrN":I
    :goto_3
    if-ge v9, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .restart local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .local v11, "path":Ljava/lang/String;
    const-string v20, "MountService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "H_UNMOUNT_PM_DONE -> path : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", force = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, "done":Z
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    const/4 v7, 0x1

    :cond_6
    :goto_4
    if-nez v7, :cond_b

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    const-string v20, "MountService"

    const-string v21, "Retrying to kill storage users again"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v23, v0

    add-int/lit8 v24, v23, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x1e

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v15, v16

    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .restart local v16    # "sizeArrN":I
    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .local v12, "pids":[I
    const-string v20, "MountService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "H_UNMOUNT_PM_DONE -> getStorageUsers : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v12

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_8

    array-length v0, v12

    move/from16 v20, v0

    if-nez v20, :cond_9

    :cond_8
    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const-string v20, "unmount media"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    if-eqz v12, :cond_a

    array-length v0, v12

    move/from16 v20, v0

    if-nez v20, :cond_6

    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_4

    .end local v12    # "pids":[I
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    const-string v20, "MountService"

    const-string v21, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    aput v9, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .end local v7    # "done":Z
    .end local v11    # "path":Ljava/lang/String;
    .end local v15    # "sizeArrN":I
    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v16    # "sizeArrN":I
    :cond_d
    add-int/lit8 v9, v16, -0x1

    :goto_6
    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    aget v21, v14, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v9    # "i":I
    .end local v13    # "size":I
    .end local v14    # "sizeArr":[I
    .end local v16    # "sizeArrN":I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .restart local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v20, "MountService"

    const-string v21, "++ H_UNMOUNT_MS (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    const-string v20, "MountService"

    const-string v21, "Boot-time mount exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v8    # "ex":Ljava/lang/Exception;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)V

    const-string v20, "MountService"

    const-string v21, "Running fstrim idle maintenance"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v20

    const-string v21, "fstrim"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "dotrim"

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Runnable;

    .local v6, "callback":Ljava/lang/Runnable;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .end local v6    # "callback":Ljava/lang/Runnable;
    :catch_1
    move-exception v10

    .local v10, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v20, "MountService"

    const-string v21, "Failed to run fstrim!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
