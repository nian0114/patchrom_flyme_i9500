.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    return-void
.end method

.method public onDisplayStateChange(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    if-ne p1, v3, :cond_3

    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] blankAllDisplays() : blankAllDisplaysFromPowerManage"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;Z)V

    const-string v1, "nativeSetInteractive(false)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;Z)V

    const-string v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;J)J

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    .restart local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :cond_3
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] unblankAllDisplays() : unblankAllDisplaysFromPowerManager"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;Z)V

    const-string v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;Z)V

    const-string v1, "nativeSetInteractive(true)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string v3, "wakeUp()"

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProximityNegative()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "[s] DisplayPowerCallbacks : onProximityNegative()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1276(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, " proximity far"

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2184(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, " proximity far"

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2184(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;JI)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProximityPositive()V
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v1, "[s] DisplayPowerCallbacks : onProximityPositive()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1276(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, " proximity close"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1984(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;JIII)Z

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStateChanged()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "[s] DisplayPowerCallbacks : onStateChanged()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1276(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$3;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
