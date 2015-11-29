.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    return-void
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "res":Z
    if-nez p1, :cond_0

    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    .restart local v1    # "res":I
    goto :goto_0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1

    .end local v1    # "res":Z
    :cond_1
    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/16 v3, 0x21

    if-eq p2, v3, :cond_2

    const/16 v3, 0x23

    if-eq p2, v3, :cond_2

    const/16 v3, 0x25

    if-ne p2, v3, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_3

    const-string v3, "SContextManager"

    const-string v4, "  .changeParameters : SContextListener is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .changeParameters : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeService(Landroid/os/IBinder;I)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1

    .end local v1    # "res":Z
    :pswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_9
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_a
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_b
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_c
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_d
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_11
    new-instance v0, Landroid/hardware/scontext/SContextExerciseAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1

    .end local v1    # "res":Z
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-ne p2, v2, :cond_3

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :cond_3
    const/16 v2, 0x21

    if-ne p2, v2, :cond_4

    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :cond_4
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1

    .end local v1    # "res":Z
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    :cond_2
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    .restart local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .local v0, "res":Z
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x5dc

    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .local v6, "res":Z
    return v6

    .end local v6    # "res":Z
    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1b

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .local v1, "res":Z
    return v1
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    const/16 v2, 0x26

    if-eq p2, v2, :cond_1

    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 9
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v5, 0x0

    .local v5, "res":Z
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v6, v5

    .end local v5    # "res":Z
    .local v6, "res":I
    :goto_0
    return v6

    .end local v6    # "res":I
    .restart local v5    # "res":Z
    :cond_1
    invoke-virtual {p2, p1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    move v6, v5

    .restart local v6    # "res":I
    goto :goto_0

    .end local v6    # "res":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_1
    move v6, v5

    .restart local v6    # "res":I
    goto :goto_0

    .end local v6    # "res":I
    :sswitch_0
    :try_start_0
    const-string v7, "net_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "gram_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "net_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, "netData":[B
    const-string v7, "gram_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "gramData":[B
    if-eqz v4, :cond_4

    if-nez v2, :cond_5

    :cond_4
    move v6, v5

    .restart local v6    # "res":I
    goto :goto_0

    .end local v6    # "res":I
    :cond_5
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v4}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v8, 0x2

    invoke-interface {v7, v8, v2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    .end local v2    # "gramData":[B
    .end local v4    # "netData":[B
    :cond_6
    move v6, v5

    .restart local v6    # "res":I
    goto :goto_0

    .end local v6    # "res":I
    :sswitch_1
    const-string v7, "luminance_config_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "luminance_config_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, "luminanceConfigData":[B
    if-nez v3, :cond_7

    move v6, v5

    .restart local v6    # "res":I
    goto :goto_0

    .end local v6    # "res":I
    :cond_7
    iget-object v7, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    .end local v3    # "luminanceConfigData":[B
    :cond_8
    move v6, v5

    .restart local v6    # "res":I
    goto :goto_0

    .end local v6    # "res":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "SContextManager"

    const-string v8, "RemoteException in initializeSContextService: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x25 -> :sswitch_1
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .locals 4
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    const/4 v0, 0x0

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v2, v1

    .end local v1    # "res":Z
    .local v2, "res":I
    :goto_0
    return v2

    .end local v2    # "res":I
    .restart local v1    # "res":Z
    :cond_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    move v2, v1

    .restart local v2    # "res":I
    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
