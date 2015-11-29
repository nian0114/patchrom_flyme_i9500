.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ReactiveService$AtCmdHandlingProcess;
    }
.end annotation


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private mErrorCode:I

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    const-string v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    new-instance v0, Lcom/android/server/ReactiveService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ReactiveService$1;-><init>(Lcom/android/server/ReactiveService;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mUEventObserver:Landroid/os/UEventObserver;

    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->Init()V

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->GetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;

    invoke-direct {v1, p0, v2}, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;-><init>(Lcom/android/server/ReactiveService;I)V

    const-string v2, "ReactiveServiceAt"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;

    invoke-direct {v1, p0, v3}, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;-><init>(Lcom/android/server/ReactiveService;I)V

    const-string v2, "ReactiveServiceData"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUsb:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/ReactiveService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private native GetFlag(I)I
.end method

.method private native GetString()Ljava/lang/String;
.end method

.method private native GetSystemSolution()I
.end method

.method private native HasPermission(Ljava/lang/String;I)Z
.end method

.method private native Init()V
.end method

.method private native RemoveString()I
.end method

.method private native SessionAccept([B)[B
.end method

.method private native SessionComplete([B)I
.end method

.method private native SetFlag(IILjava/lang/String;)I
.end method

.method private native SetString(Ljava/lang/String;)I
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ReactiveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ReactiveService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/ReactiveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ReactiveService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/ReactiveService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ReactiveService;

    .prologue
    iget-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;

    return-object v0
.end method

.method private hasPermission(II)Z
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .prologue
    const-string v1, ""

    .local v1, "currentPkgName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/ReactiveService;->HasPermission(Ljava/lang/String;I)Z

    move-result v4

    .local v4, "ret":Z
    if-eqz v4, :cond_2

    const-string v5, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_2
    const-string v5, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied. Package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], UID = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .locals 4
    .param p1, "flag"    # I

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    :cond_1
    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->GetFlag(I)I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_3

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_1
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "ret":I
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_1
.end method

.method public getServiceSupport()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->GetString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeString()I
    .locals 3

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->RemoveString()I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sessionAccept([B)[B
    .locals 5
    .param p1, "input"    # [B

    .prologue
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_1

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "ret":[B
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v1    # "ret":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "ret":[B
    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sessionComplete([B)I
    .locals 5
    .param p1, "input"    # [B

    .prologue
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_0

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v1

    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "ret":I
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .restart local v1    # "ret":I
    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 4
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_0

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    :cond_1
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->SetFlag(IILjava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_4

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_1
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "ret":I
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_1
.end method

.method public setString(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SetString(Ljava/lang/String;)I

    move-result v0

    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
