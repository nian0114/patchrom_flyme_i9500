.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .local v5, "nmsg":Landroid/os/Message;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v5    # "nmsg":Landroid/os/Message;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->SAMP_ENABLE:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$000(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v10, 0x4

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    const-string v11, "idle timeout"

    invoke-virtual {v9, v10, v12, v8, v11}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :sswitch_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "ActivityManager"

    const-string v10, "Sleep timeout!  Sleeping now."

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    :cond_3
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    :sswitch_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v9, 0x68

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ActivityManager"

    const-string v10, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v8

    :sswitch_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAddedLocked(I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChangedLocked(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemovedLocked(I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v7, :cond_6

    :goto_1
    invoke-interface {v0, v9, v7}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_0

    :cond_6
    move v7, v8

    goto :goto_1

    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_9
    :try_start_4
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$102(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    :cond_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-nez v10, :cond_b

    :goto_2
    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v9, v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$202(Lcom/android/server/am/ActivityStackSupervisor;Z)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    if-eqz v8, :cond_9

    const/high16 v4, 0x3bf0000

    .local v4, "flags":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v8

    if-nez v8, :cond_8

    const/high16 v8, 0x1200000

    xor-int/2addr v4, v8

    :cond_8
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .end local v4    # "flags":I
    :cond_9
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v9

    const-string v10, "Lock-to-App"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v9, v10, v8, v11}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_a
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(Z)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_b
    move v7, v8

    goto :goto_2

    :sswitch_a
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    :cond_c
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v9, v10, v11, v12}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_d
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$102(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    :cond_e
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_to_app_exit_locked"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_10

    .local v7, "shouldLockKeyguard":Z
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v8

    if-nez v8, :cond_f

    if-eqz v7, :cond_f

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v7    # "shouldLockKeyguard":Z
    :cond_f
    :goto_4
    :try_start_7
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(Z)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->onLockTaskModeChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    .restart local v3    # "ex":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_10
    move v7, v8

    goto :goto_3

    :sswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    goto/16 :goto_0

    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_c
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_9
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timeout waiting for all activities in task to finish. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v8, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    monitor-exit v9

    goto/16 :goto_0

    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v8

    :sswitch_d
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_a
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v8}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_11

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_11
    monitor-exit v9

    goto/16 :goto_0

    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v8

    :sswitch_e
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1030128

    invoke-direct {v2, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v2, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040b88

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v2    # "context":Landroid/content/Context;
    :sswitch_f
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    monitor-exit v9

    goto/16 :goto_0

    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v8

    :catch_4
    move-exception v8

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0xc8 -> :sswitch_e
        0xc9 -> :sswitch_f
    .end sparse-switch
.end method
