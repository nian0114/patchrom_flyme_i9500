.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$CoverShapeThread;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field static final COVER_ABSENT:I = -0x1

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_CLOSED:I = 0x0

.field static final COVER_DETACH:I = 0x0

.field static final COVER_OPEN:I = 0x1

.field private static final DEBUG:Z = true

.field private static final SAFE_DEBUG:Z = true

.field private static final SERVICE_VERSION:I = 0x1020000

.field private static final TAG:Ljava/lang/String; = "CoverManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLedCoverController:Lcom/android/server/cover/LedCoverController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/android/server/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    new-instance v0, Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    new-instance v0, Lcom/android/server/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    new-instance v0, Lcom/android/server/cover/LedCoverController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    new-instance v0, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    return-void
.end method

.method private checkNeedThread([BII)Z
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const-string v1, "CoverManager"

    const-string v2, "checkNeedThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "isBoot"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    .local v0, "coverAttached":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v2

    if-eqz v2, :cond_1

    .local v1, "coverSwitchState":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v3, p2}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v2, :cond_2

    const-string v2, "CoverManager"

    const-string v3, "sendCoverAttachStateLocked : CoverState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .end local v1    # "coverSwitchState":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "coverSwitchState":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v2}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)V

    :cond_3
    :goto_2
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coverSwitchState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)V

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    goto :goto_2
.end method

.method private sendCoverSwitchStateLocked(ZZ)V
    .locals 3
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, "CoverManager"

    const-string v1, "updateCoverSwitchState : Returing switch state - it is same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", widthPixel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", heightPixel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCoverAttachState(ZZ)V
    .locals 1
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    :try_start_0
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverAttachState : attach="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isBoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverAttachedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const-string v0, "CoverManager"

    const-string v2, "updateCoverVerfiedState : Returing attach state - it is same"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 6
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v2

    :try_start_0
    const-string v1, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverSwitchState : switchState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->isCoverVerified()Z

    move-result v0

    .local v0, "isDetected":Z
    const-string v1, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmartCover]updateCoverSwitchState : switchState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isDetected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "isDetected":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CoverManager"

    const-string v3, "updateCoverSwitchState : Returing switch state - cover is not attached"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportDetectCover()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverVerifiedLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_5

    const-string v1, "CoverManager"

    const-string v3, "cover opened wake up"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    return-void
.end method


# virtual methods
.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    .local v1, "disabled":Z
    if-eqz v1, :cond_2

    .local v0, "coverSwitchState":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "coverSwitchState":Z
    .end local v1    # "disabled":Z
    :cond_1
    return-void

    .restart local v1    # "disabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    .restart local v0    # "coverSwitchState":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " Current Cover state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getCoverAttachStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x1a

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "sw":I
    if-lez v1, :cond_1

    const/4 v2, 0x1

    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string v4, "getSwitchStateOfCoveAttach(). Can\'t get cover attach state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCoverSwitchStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x15

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "sw":I
    if-lez v1, :cond_1

    const/4 v2, 0x1

    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string v4, "getSwitchStateOfCover(). Can\'t get cover state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    const/high16 v0, 0x1020000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    const-string v0, "CoverManager"

    const-string v1, "notifyCoverAttachStateChanged : Returing!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    goto :goto_0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "switchState"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    const-string v0, "CoverManager"

    const-string v1, "notifyCoverSwitchStateChanged : Returing!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CoverManager"

    const-string v1, "notifyCoverSwitchStateChanged : Returing! Cover manager disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    goto :goto_0
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    const-string v0, "CoverManager"

    const-string v1, "notifySmartCoverAttachStateChanged : Returing!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, p4}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v1, v1, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/server/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    const-string v0, "CoverManager"

    const-string v1, "onCoverAppCovered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->onCoverAppCovered(Z)I

    move-result v0

    return v0
.end method

.method public readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "point":Landroid/graphics/Point;
    const-string v3, "get_x_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    .local v1, "x":I
    const-string v3, "get_y_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    .local v2, "y":I
    if-le v1, v2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .restart local v0    # "point":Landroid/graphics/Point;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .restart local v0    # "point":Landroid/graphics/Point;
    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public sendDataToCover(I[B)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/LedCoverController;->sendPowerKeyToCover()V

    return-void
.end method

.method public sendTouchRegion([BII)V
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const-string v1, "CoverManager"

    const-string v2, "setCoverShape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v1, "CoverManager"

    const-string v2, "setCoverShape : coverShape is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    const-string v1, "CoverManager"

    const-string v2, "setCoverShape : width is 0 or height is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->checkNeedThread([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;-><init>(Lcom/android/server/cover/CoverManagerService;[BII)V

    .local v0, "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->start()V

    goto :goto_0

    .end local v0    # "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    :cond_3
    const-string v1, "CoverManager"

    const-string v2, "setCoverShape : we don\'t need to start thread because there is no valid value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "CoverManager"

    const-string v4, "systemReady!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverAttachStateFromInputManager()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .local v0, "coverSwitchState":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    return-void

    .end local v0    # "coverSwitchState":Z
    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method
