.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 84
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .local v49, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v77, 0x1

    .local v77, "showBackground":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v5, "result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppErrorResult;

    .local v6, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v7, :cond_3

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_3

    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_1
    monitor-exit v10

    goto :goto_0

    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .end local v77    # "showBackground":Z
    :cond_2
    const/16 v77, 0x0

    goto :goto_1

    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v77    # "showBackground":Z
    :cond_3
    :try_start_1
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v11, 0x2710

    if-lt v5, v11, :cond_4

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v11, :cond_4

    const/16 v57, 0x1

    .local v57, "isBackground":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v46, v0

    .local v46, "arr$":[I
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v59, v0

    .local v59, "len$":I
    const/16 v55, 0x0

    .local v55, "i$":I
    :goto_3
    move/from16 v0, v55

    move/from16 v1, v59

    if-ge v0, v1, :cond_6

    aget v83, v46, v55

    .local v83, "userId":I
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v83

    if-eq v5, v0, :cond_5

    const/4 v5, 0x1

    :goto_4
    and-int v57, v57, v5

    add-int/lit8 v55, v55, 0x1

    goto :goto_3

    .end local v46    # "arr$":[I
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v83    # "userId":I
    :cond_4
    const/16 v57, 0x0

    goto :goto_2

    .restart local v46    # "arr$":[I
    .restart local v55    # "i$":I
    .restart local v57    # "isBackground":Z
    .restart local v59    # "len$":I
    .restart local v83    # "userId":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .end local v83    # "userId":I
    :cond_6
    if-eqz v57, :cond_8

    if-nez v77, :cond_8

    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": background"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_c

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .local v4, "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_9
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    const/16 v5, 0x3e8

    iget v11, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->forceResetEasyOneHandService()V

    .end local v4    # "d":Landroid/app/Dialog;
    :cond_a
    :goto_5
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    :cond_b
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :cond_c
    if-eqz v6, :cond_a

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v46    # "arr$":[I
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v77    # "showBackground":Z
    :sswitch_2
    const-string v5, "AASAMSGAASA"

    const-string v10, " SHOW_CMPERMISSION_ERROR_MSG is called"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v77, 0x1

    .restart local v77    # "showBackground":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_3
    const-string v5, "errorpermission"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "permission":Ljava/lang/String;
    const-string v5, "errorpackagename"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "packagename":Ljava/lang/String;
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string v5, "result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppErrorResult;

    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v7, :cond_f

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_f

    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_d
    monitor-exit v11

    goto/16 :goto_0

    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "packagename":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .end local v77    # "showBackground":Z
    :cond_e
    const/16 v77, 0x0

    goto :goto_6

    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "packagename":Ljava/lang/String;
    .restart local v77    # "showBackground":Z
    :cond_f
    :try_start_4
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v10, 0x2710

    if-lt v5, v10, :cond_10

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v10, :cond_10

    const/16 v57, 0x1

    .restart local v57    # "isBackground":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v46, v0

    .restart local v46    # "arr$":[I
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v59, v0

    .restart local v59    # "len$":I
    const/16 v55, 0x0

    .restart local v55    # "i$":I
    :goto_8
    move/from16 v0, v55

    move/from16 v1, v59

    if-ge v0, v1, :cond_12

    aget v83, v46, v55

    .restart local v83    # "userId":I
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v83

    if-eq v5, v0, :cond_11

    const/4 v5, 0x1

    :goto_9
    and-int v57, v57, v5

    add-int/lit8 v55, v55, 0x1

    goto :goto_8

    .end local v46    # "arr$":[I
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v83    # "userId":I
    :cond_10
    const/16 v57, 0x0

    goto :goto_7

    .restart local v46    # "arr$":[I
    .restart local v55    # "i$":I
    .restart local v57    # "isBackground":Z
    .restart local v59    # "len$":I
    .restart local v83    # "userId":I
    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    .end local v83    # "userId":I
    :cond_12
    if-eqz v57, :cond_14

    if-nez v77, :cond_14

    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": background"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_13

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_13
    monitor-exit v11

    goto/16 :goto_0

    :cond_14
    const-string v5, "AASAMSGAASA"

    const-string v10, "AppPermissionManagedDialog was creadted by SHOW_CMPERMISSION_ERROR_MSG"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_18

    const/4 v4, 0x0

    .restart local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "emergency_mode"

    const/4 v12, 0x0

    invoke-static {v5, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "ultra_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v5, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_17

    :cond_15
    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "emergency_mode"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v14, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "ultra_powersaving_mode"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v14, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v4    # "d":Landroid/app/Dialog;
    :goto_a
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .end local v4    # "d":Landroid/app/Dialog;
    :cond_16
    :goto_b
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .restart local v4    # "d":Landroid/app/Dialog;
    :cond_17
    :try_start_5
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v4    # "d":Landroid/app/Dialog;
    goto :goto_a

    .end local v4    # "d":Landroid/app/Dialog;
    :cond_18
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "packagename":Ljava/lang/String;
    .end local v46    # "arr$":[I
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v77    # "showBackground":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_19

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_19

    const-string v5, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has anr dialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v26

    goto/16 :goto_0

    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_2
    move-exception v5

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_19
    :try_start_7
    new-instance v13, Landroid/content/Intent;

    const-string v5, "android.intent.action.ANR"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_1a

    const/high16 v5, 0x50000000

    invoke-virtual {v13, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v10 .. v25}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_1d

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v5, "activity"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1c

    const/16 v19, 0x1

    :goto_c
    move-object v14, v4

    move-object/from16 v17, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$3;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$4;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1b
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .end local v4    # "d":Landroid/app/Dialog;
    :goto_d
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :cond_1c
    const/16 v19, 0x0

    goto :goto_c

    :cond_1d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_d

    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_9
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_1e

    const-string v5, "ActivityManager"

    const-string v11, "App not found when showing strict mode dialog."

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    goto/16 :goto_0

    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v5

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v5

    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    :try_start_a
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1f

    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has strict mode dialog: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    goto/16 :goto_0

    :cond_1f
    const-string v5, "result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppErrorResult;

    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_20

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .end local v4    # "d":Landroid/app/Dialog;
    :goto_e
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :cond_20
    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_e

    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_5
    new-instance v4, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "msg"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .end local v4    # "d":Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v74

    .local v74, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    move-object/from16 v0, v74

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .end local v74    # "resolver":Landroid/content/ContentResolver;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v5

    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    move-object/from16 v66, v5

    check-cast v66, Landroid/util/Pair;

    .local v66, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    move-object/from16 v0, v66

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Lcom/android/server/am/ActivityRecord;

    .local v71, "r":Lcom/android/server/am/ActivityRecord;
    monitor-enter p0

    :try_start_d
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v71

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v66

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v5

    .end local v66    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    .end local v71    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .local v44, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_22

    move-object/from16 v0, v44

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v5, :cond_21

    new-instance v4, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-direct {v4, v5, v11, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .restart local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v44

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    move-object/from16 v0, v44

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .end local v4    # "d":Landroid/app/Dialog;
    :cond_21
    :goto_f
    monitor-exit v10

    goto/16 :goto_0

    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v5

    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v5

    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_22
    :try_start_f
    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_21

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    const/4 v5, 0x0

    move-object/from16 v0, v44

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_f

    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .local v63, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v63

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v10, 0x7530

    move-object/from16 v0, v63

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v63    # "nmsg":Landroid/os/Message;
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v5}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .local v54, "i":I
    :goto_10
    if-ltz v54, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .local v71, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v5, :cond_24

    :try_start_11
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :cond_24
    :goto_11
    add-int/lit8 v54, v54, -0x1

    goto :goto_10

    :catch_0
    move-exception v53

    .local v53, "ex":Landroid/os/RemoteException;
    :try_start_12
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update time zone for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_7
    move-exception v5

    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v5

    .restart local v54    # "i":I
    :cond_25
    :try_start_13
    monitor-exit v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto/16 :goto_0

    .end local v54    # "i":I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .restart local v54    # "i":I
    :goto_12
    if-ltz v54, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .restart local v71    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    if-eqz v5, :cond_26

    :try_start_15
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :cond_26
    :goto_13
    add-int/lit8 v54, v54, -0x1

    goto :goto_12

    :catch_1
    move-exception v53

    .restart local v53    # "ex":Landroid/os/RemoteException;
    :try_start_16
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to clear dns cache for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_8
    move-exception v5

    monitor-exit v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v5

    .restart local v54    # "i":I
    :cond_27
    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto/16 :goto_0

    .end local v54    # "i":I
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/net/ProxyInfo;

    .local v70, "proxy":Landroid/net/ProxyInfo;
    const-string v15, ""

    .local v15, "host":Ljava/lang/String;
    const-string v16, ""

    .local v16, "port":Ljava/lang/String;
    const-string v17, ""

    .local v17, "username":Ljava/lang/String;
    const-string v18, ""

    .local v18, "password":Ljava/lang/String;
    const-string v19, ""

    .local v19, "exclList":Ljava/lang/String;
    sget-object v20, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .local v20, "pacFileUrl":Landroid/net/Uri;
    if-eqz v70, :cond_28

    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v20

    :cond_28
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .restart local v54    # "i":I
    :goto_14
    if-ltz v54, :cond_2b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .restart local v71    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v5, :cond_29

    if-eqz v17, :cond_2a

    :try_start_19
    const-string v5, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    move-object/from16 v0, v71

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v14 .. v20}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_29
    :goto_15
    add-int/lit8 v54, v54, -0x1

    goto :goto_14

    :cond_2a
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v5, v15, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_15

    :catch_2
    move-exception v53

    .restart local v53    # "ex":Landroid/os/RemoteException;
    :try_start_1a
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update http proxy for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_9
    move-exception v5

    monitor-exit v10
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    throw v5

    .restart local v54    # "i":I
    :cond_2b
    :try_start_1b
    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto/16 :goto_0

    .end local v15    # "host":Ljava/lang/String;
    .end local v16    # "port":Ljava/lang/String;
    .end local v17    # "username":Ljava/lang/String;
    .end local v18    # "password":Ljava/lang/String;
    .end local v19    # "exclList":Ljava/lang/String;
    .end local v20    # "pacFileUrl":Landroid/net/Uri;
    .end local v54    # "i":I
    .end local v70    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_e
    const-string v81, "System UIDs Inconsistent"

    .local v81, "title":Ljava/lang/String;
    const-string v79, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .local v79, "text":Ljava/lang/String;
    const-string v5, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v79

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .local v4, "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v10, 0x7da

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    const-string v10, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v4, v5, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .end local v4    # "d":Landroid/app/AlertDialog;
    .end local v79    # "text":Ljava/lang/String;
    .end local v81    # "title":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x14

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .restart local v63    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v63

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v63

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v63    # "nmsg":Landroid/os/Message;
    :cond_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_a
    move-exception v5

    monitor-exit v10
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    throw v5

    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_b
    move-exception v5

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    throw v5

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_1e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .local v23, "appid":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2d

    const/16 v24, 0x1

    .local v24, "restart":Z
    :goto_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Bundle;

    .local v47, "bundle":Landroid/os/Bundle;
    const-string v5, "pkg"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "pkg":Ljava/lang/String;
    const-string v5, "reason"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v21 .. v30}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    monitor-exit v10

    goto/16 :goto_0

    .end local v22    # "pkg":Ljava/lang/String;
    .end local v23    # "appid":I
    .end local v24    # "restart":Z
    .end local v30    # "reason":Ljava/lang/String;
    .end local v47    # "bundle":Landroid/os/Bundle;
    :catchall_c
    move-exception v5

    monitor-exit v10
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    throw v5

    .restart local v23    # "appid":I
    :cond_2d
    const/16 v24, 0x0

    goto :goto_16

    .end local v23    # "appid":I
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v5}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v56

    .local v56, "inm":Landroid/app/INotificationManager;
    if-eqz v56, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Lcom/android/server/am/ActivityRecord;

    .local v75, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v75

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v68, v0

    .local v68, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v68, :cond_0

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v68

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v48

    .local v48, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104049a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v79

    .restart local v79    # "text":Ljava/lang/String;
    new-instance v64, Landroid/app/Notification;

    invoke-direct/range {v64 .. v64}, Landroid/app/Notification;-><init>()V

    .local v64, "notification":Landroid/app/Notification;
    const v5, 0x1080878

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->icon:I

    const-wide/16 v10, 0x0

    move-object/from16 v0, v64

    iput-wide v10, v0, Landroid/app/Notification;->when:J

    const/4 v5, 0x2

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v79

    move-object/from16 v1, v64

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->defaults:I

    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput-object v5, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x1060058

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->color:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104049b

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v75

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v33, v0

    const/high16 v34, 0x10000000

    const/16 v35, 0x0

    new-instance v36, Landroid/os/UserHandle;

    move-object/from16 v0, v75

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v36

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v31 .. v36}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    move-object/from16 v2, v79

    invoke-virtual {v0, v1, v2, v5, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_1f} :catch_4

    const/4 v5, 0x1

    :try_start_20
    new-array v0, v5, [I

    move-object/from16 v37, v0

    .local v37, "outId":[I
    const-string v32, "android"

    const-string v33, "android"

    const/16 v34, 0x0

    const v35, 0x104049a

    move-object/from16 v0, v75

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v38, v0

    move-object/from16 v31, v56

    move-object/from16 v36, v64

    invoke-interface/range {v31 .. v38}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_20} :catch_4

    goto/16 :goto_0

    .end local v37    # "outId":[I
    :catch_3
    move-exception v52

    .local v52, "e":Ljava/lang/RuntimeException;
    :try_start_21
    const-string v5, "ActivityManager"

    const-string v10, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_21} :catch_4

    goto/16 :goto_0

    .end local v48    # "context":Landroid/content/Context;
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v64    # "notification":Landroid/app/Notification;
    .end local v79    # "text":Ljava/lang/String;
    :catch_4
    move-exception v52

    .local v52, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    const-string v10, "Unable to create context for heavy notification"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v52    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v56    # "inm":Landroid/app/INotificationManager;
    .end local v68    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v75    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_15
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v56

    .restart local v56    # "inm":Landroid/app/INotificationManager;
    if-eqz v56, :cond_0

    :try_start_22
    const-string v5, "android"

    const/4 v10, 0x0

    const v11, 0x104049a

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v56

    invoke-interface {v0, v5, v10, v11, v12}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_9

    goto/16 :goto_0

    :catch_5
    move-exception v52

    .local v52, "e":Ljava/lang/RuntimeException;
    const-string v5, "ActivityManager"

    const-string v10, "Error canceling notification for service"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v56    # "inm":Landroid/app/INotificationManager;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .restart local v63    # "nmsg":Landroid/os/Message;
    const-wide/32 v26, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v10

    goto/16 :goto_0

    .end local v63    # "nmsg":Landroid/os/Message;
    :catchall_d
    move-exception v5

    monitor-exit v10
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    throw v5

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v10, v11, v12, v14}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/server/am/ActivityRecord;

    .local v45, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v5, v5, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    monitor-exit v10

    goto/16 :goto_0

    .end local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_e
    move-exception v5

    monitor-exit v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    throw v5

    .restart local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2e
    :try_start_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v5}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    :cond_2f
    if-eqz v45, :cond_30

    :cond_30
    monitor-exit v10
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    goto/16 :goto_0

    .end local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v67, v0

    .local v67, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v82, v0

    .local v82, "uid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v67

    move/from16 v1, v82

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .end local v67    # "pid":I
    .end local v82    # "uid":I
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Ljava/util/ArrayList;

    .local v60, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v80, Lcom/android/server/am/ActivityManagerService$MainHandler$5;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$5;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .local v80, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v80 .. v80}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v60    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v80    # "thread":Ljava/lang/Thread;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v10, v11, v5}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040b1a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_31

    const/16 v62, 0x1

    .local v62, "nextState":Z
    :goto_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v5

    move/from16 v0, v62

    if-eq v5, v0, :cond_0

    if-eqz v62, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .end local v62    # "nextState":Z
    :cond_31
    const/16 v62, 0x0

    goto :goto_17

    .restart local v62    # "nextState":Z
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .end local v62    # "nextState":Z
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v10, v11, v12, v14}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto/16 :goto_0

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_f
    move-exception v5

    monitor-exit v10
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    throw v5

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .restart local v54    # "i":I
    :goto_18
    if-ltz v54, :cond_35

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .restart local v71    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    if-eqz v5, :cond_33

    :try_start_28
    move-object/from16 v0, v71

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_34

    const/4 v5, 0x0

    :goto_19
    invoke-interface {v11, v5}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_6
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    :cond_33
    :goto_1a
    add-int/lit8 v54, v54, -0x1

    goto :goto_18

    :cond_34
    const/4 v5, 0x1

    goto :goto_19

    :catch_6
    move-exception v53

    .restart local v53    # "ex":Landroid/os/RemoteException;
    :try_start_29
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update preferences for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_10
    move-exception v5

    monitor-exit v10
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    throw v5

    .restart local v54    # "i":I
    :cond_35
    :try_start_2a
    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    goto/16 :goto_0

    .end local v54    # "i":I
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .local v69, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v78, v0

    .local v78, "stopReason":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move/from16 v0, v69

    move/from16 v1, v78

    invoke-static {v10, v5, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    .end local v69    # "processId":I
    .end local v78    # "stopReason":I
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v10, 0x8007

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v10, 0x4008

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v10, 0x8008

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLockToAppRequest:Lcom/android/server/am/LockToAppRequestDialog;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/LockToAppRequestDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/LockToAppRequestDialog;->clearPrompt()V

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_2b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v71

    .local v71, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v71, :cond_36

    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_36

    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    if-eqz v5, :cond_36

    :try_start_2c
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v71

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v11}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_8
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    :cond_36
    :goto_1b
    :try_start_2d
    monitor-exit v10

    goto/16 :goto_0

    .end local v71    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_11
    move-exception v5

    monitor-exit v10
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    throw v5

    :sswitch_2b
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    :cond_37
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    :sswitch_2c
    :try_start_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/util/Locale;

    .local v58, "l":Ljava/util/Locale;
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v76

    .local v76, "service":Landroid/os/IBinder;
    invoke-static/range {v76 .. v76}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v61

    .local v61, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Storing locale "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v58 .. v58}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for decryption UI"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SystemLocale"

    invoke-virtual/range {v58 .. v58}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v61

    invoke-interface {v0, v5, v10}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_7

    goto/16 :goto_0

    .end local v58    # "l":Ljava/util/Locale;
    .end local v61    # "mountService":Landroid/os/storage/IMountService;
    .end local v76    # "service":Landroid/os/IBinder;
    :catch_7
    move-exception v52

    .local v52, "e":Landroid/os/RemoteException;
    const-string v5, "ActivityManager"

    const-string v10, "Error storing locale for decryption UI"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v52    # "e":Landroid/os/RemoteException;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_38

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0xc

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0x10

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0x13

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_3b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0xe

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_3b
    sget v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    const/4 v5, 0x0

    sput v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v5

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v5

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/app/ApplicationErrorReport;

    .local v72, "report":Landroid/app/ApplicationErrorReport;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v83, v0

    .restart local v83    # "userId":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-lez v5, :cond_41

    const/16 v65, 0x1

    .local v65, "notify":Z
    :goto_1c
    if-eqz v72, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    const/16 v51, 0x0

    .local v51, "dumpStrTmp":Ljava/lang/String;
    :try_start_2f
    move-object/from16 v0, v72

    iget v5, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_42

    const-string v51, "-k -t -z -d -o /data/log/dumpstate_app_error"

    :cond_3f
    :goto_1d
    move-object/from16 v50, v51

    .local v50, "dumpCmd":Ljava/lang/String;
    if-eqz v50, :cond_40

    const-string v5, "user"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    new-instance v5, Ljava/lang/Thread;

    new-instance v11, Lcom/android/server/am/ActivityManagerService$MainHandler$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v11, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$6;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;)V

    const-string v12, "dumpstate"

    invoke-direct {v5, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_40
    :goto_1e
    monitor-exit v10
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    if-eqz v65, :cond_0

    new-instance v73, Landroid/content/Intent;

    const-string v5, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v73, "reportIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v73

    move/from16 v1, v83

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v50    # "dumpCmd":Ljava/lang/String;
    .end local v51    # "dumpStrTmp":Ljava/lang/String;
    .end local v65    # "notify":Z
    .end local v73    # "reportIntent":Landroid/content/Intent;
    :cond_41
    const/16 v65, 0x0

    goto :goto_1c

    .restart local v51    # "dumpStrTmp":Ljava/lang/String;
    .restart local v65    # "notify":Z
    :cond_42
    :try_start_30
    move-object/from16 v0, v72

    iget v5, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_3f

    const-string v51, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    goto :goto_1d

    .restart local v50    # "dumpCmd":Ljava/lang/String;
    :cond_43
    invoke-static/range {v50 .. v50}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_1e

    .end local v50    # "dumpCmd":Ljava/lang/String;
    :catchall_12
    move-exception v5

    monitor-exit v10
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    throw v5

    .end local v51    # "dumpStrTmp":Ljava/lang/String;
    .end local v65    # "notify":Z
    .end local v72    # "report":Landroid/app/ApplicationErrorReport;
    .end local v83    # "userId":I
    .restart local v71    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_8
    move-exception v5

    goto/16 :goto_1b

    .end local v71    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v56    # "inm":Landroid/app/INotificationManager;
    :catch_9
    move-exception v5

    goto/16 :goto_0

    .restart local v48    # "context":Landroid/content/Context;
    .restart local v64    # "notification":Landroid/app/Notification;
    .restart local v68    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v75    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v79    # "text":Ljava/lang/String;
    :catch_a
    move-exception v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x14 -> :sswitch_10
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x17 -> :sswitch_13
        0x18 -> :sswitch_14
        0x19 -> :sswitch_15
        0x1a -> :sswitch_4
        0x1b -> :sswitch_16
        0x1c -> :sswitch_c
        0x1d -> :sswitch_d
        0x1e -> :sswitch_18
        0x1f -> :sswitch_19
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_1b
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1f
        0x24 -> :sswitch_20
        0x25 -> :sswitch_21
        0x26 -> :sswitch_22
        0x27 -> :sswitch_23
        0x28 -> :sswitch_24
        0x29 -> :sswitch_25
        0x2a -> :sswitch_28
        0x2b -> :sswitch_29
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_2b
        0x2e -> :sswitch_1c
        0x2f -> :sswitch_2c
        0x31 -> :sswitch_2d
        0x32 -> :sswitch_2e
        0x36 -> :sswitch_2
        0x37 -> :sswitch_0
        0x190 -> :sswitch_27
        0x1f4 -> :sswitch_26
        0x259 -> :sswitch_1e
        0x2bc -> :sswitch_8
        0x3e7 -> :sswitch_17
    .end sparse-switch
.end method
