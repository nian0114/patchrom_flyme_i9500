.class public Landroid/hardware/scontext/SContextService;
.super Landroid/hardware/scontext/ISContextService$Stub;
.source "SContextService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextService$ServiceHandler;,
        Landroid/hardware/scontext/SContextService$Listener;
    }
.end annotation


# static fields
.field private static final FEATURE_SCONTEXT_LITE:Ljava/lang/String; = "com.sec.feature.scontext_lite"

.field private static final FEATURE_SENSORHUB:Ljava/lang/String; = "com.sec.feature.sensorhub"

.field private static final TAG:Ljava/lang/String; = "SContextService"

.field private static mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/provider/Provider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG_LEVEL_LOW:I

.field mAvailableServiceMap:Ljava/util/HashMap;
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

.field private final mContext:Landroid/content/Context;

.field mEventListener:Landroid/hardware/scontext/provider/EventListener;

.field private mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

.field private final mLatestInfo:Landroid/os/Bundle;

.field private mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/scontext/SContextService$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/ISContextService$Stub;-><init>()V

    const/16 v9, 0x4f4c

    iput v9, p0, Landroid/hardware/scontext/SContextService;->DEBUG_LEVEL_LOW:I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    new-instance v9, Landroid/hardware/scontext/SContextService$1;

    invoke-direct {v9, p0}, Landroid/hardware/scontext/SContextService$1;-><init>(Landroid/hardware/scontext/SContextService;)V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    iput-object p1, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v9, "scontext"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, "looper":Landroid/os/Looper;
    if-nez v2, :cond_1

    const-string v9, "SContextService"

    const-string v10, "looper is null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "looper":Landroid/os/Looper;
    :goto_0
    return-void

    .restart local v0    # "handlerThread":Landroid/os/HandlerThread;
    .restart local v2    # "looper":Landroid/os/Looper;
    :cond_1
    new-instance v9, Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-direct {v9, p0, v2}, Landroid/hardware/scontext/SContextService$ServiceHandler;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/Looper;)V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    new-instance v9, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v9, v10}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v8, 0x0

    .local v8, "version":I
    const/4 v7, 0x0

    .local v7, "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    new-instance v7, Landroid/hardware/scontext/SContextVersion;

    .end local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    invoke-direct {v7, v8, v10}, Landroid/hardware/scontext/SContextVersion;-><init>(IZ)V

    .restart local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    :goto_1
    invoke-virtual {v7}, Landroid/hardware/scontext/SContextVersion;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v9, :cond_4

    new-instance v6, Landroid/hardware/scontext/SContextProvider;

    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/hardware/scontext/SContextService;->mEventListener:Landroid/hardware/scontext/provider/EventListener;

    invoke-direct {v6, p1, v9, v10, v8}, Landroid/hardware/scontext/SContextProvider;-><init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/hardware/scontext/provider/EventListener;I)V

    .local v6, "scontextProvider":Landroid/hardware/scontext/SContextProvider;
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "next":I
    invoke-virtual {v6, v3}, Landroid/hardware/scontext/SContextProvider;->getProvider(I)Landroid/hardware/scontext/provider/Provider;

    move-result-object v5

    .local v5, "provider":Landroid/hardware/scontext/provider/Provider;
    if-eqz v5, :cond_2

    sget-object v9, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "next":I
    .end local v5    # "provider":Landroid/hardware/scontext/provider/Provider;
    .end local v6    # "scontextProvider":Landroid/hardware/scontext/SContextProvider;
    :cond_3
    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    new-instance v7, Landroid/hardware/scontext/SContextVersion;

    .end local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/hardware/scontext/SContextVersion;-><init>(IZ)V

    .restart local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    goto :goto_1

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v7    # "scontextVersion":Landroid/hardware/scontext/SContextVersion;
    .end local v8    # "version":I
    :cond_4
    const-string v9, "SContextService"

    const-string v10, "SContextService()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/hardware/scontext/SContextService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/scontext/SContextService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/scontext/SContextService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextService;

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addSContextService(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 3
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextService;->sendAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/Provider;->add()V

    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private encodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .local v0, "debug_level":I
    const-string v2, ""

    .local v2, "outStr":Ljava/lang/String;
    const-string v5, "Unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v2

    .end local v2    # "outStr":Ljava/lang/String;
    .local v3, "outStr":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "outStr":Ljava/lang/String;
    .restart local v2    # "outStr":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_1

    move-object v2, p1

    :cond_1
    move-object v3, v2

    .end local v2    # "outStr":Ljava/lang/String;
    .restart local v3    # "outStr":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "outStr":Ljava/lang/String;
    .restart local v2    # "outStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ne":Ljava/lang/NumberFormatException;
    move-object v3, v2

    .end local v2    # "outStr":Ljava/lang/String;
    .restart local v3    # "outStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const-string v1, ""

    .local v1, "client":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    :cond_0
    :goto_0
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Landroid/hardware/scontext/SContextService;->encodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private removeSContextService(I)V
    .locals 3
    .param p1, "service"    # I

    .prologue
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0}, Landroid/hardware/scontext/provider/Provider;->remove()V

    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSContextService() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 3
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/scontext/provider/Provider;->setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    const-string v0, "SContextService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAttribute() : service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private showListenerList()V
    .locals 7

    .prologue
    const-string v4, "SContextService"

    const-string v5, "===== SContext Service List ====="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "service":I
    const-string v4, "SContextService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    .end local v3    # "service":I
    :cond_1
    return-void
.end method

.method private declared-synchronized updateSContext(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getReportingMode(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v1, Landroid/hardware/scontext/SContextEvent;

    invoke-direct {v1}, Landroid/hardware/scontext/SContextEvent;-><init>()V

    .local v1, "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    invoke-virtual {v1, p1, p2}, Landroid/hardware/scontext/SContextEvent;->setSContextEvent(ILandroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mHandler:Landroid/hardware/scontext/SContextService$ServiceHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/scontext/SContextService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "SContextService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSContext() : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "scontextEvent":Landroid/hardware/scontext/SContextEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "res":Z
    if-nez p3, :cond_0

    move v5, v4

    .end local v4    # "res":Z
    .local v5, "res":I
    :goto_0
    return v5

    .end local v5    # "res":I
    .restart local v4    # "res":Z
    :cond_0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextService$Listener;

    .local v3, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v3

    .end local v3    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_2
    if-nez v1, :cond_3

    const-string v6, "SContextService"

    const-string v7, "cannot change parameters! : this listener is not registered."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    .restart local v5    # "res":I
    goto :goto_0

    .end local v5    # "res":I
    :cond_3
    :try_start_1
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Landroid/hardware/scontext/SContextService;->sendAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeParameters() : service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    .end local v2    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :goto_1
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v5, v4

    .restart local v5    # "res":I
    goto/16 :goto_0

    .end local v5    # "res":I
    :cond_4
    :try_start_2
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot change parameters! : This service ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not used."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump SContextService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listener count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "===== SContext Service List ====="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/scontext/SContextService$Listener;

    .local v4, "next":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/scontext/ISContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextCallback;

    move-result-object v0

    .local v0, "cb":Landroid/hardware/scontext/ISContextCallback;
    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client Listener ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/hardware/scontext/ISContextCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service Listener ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "service":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Service : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    .end local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "service":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "cb":Landroid/hardware/scontext/ISContextCallback;
    .restart local v3    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_1
    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAvailableServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextService;->mAvailableServiceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public initializeService(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-nez v1, :cond_2

    const-string v3, "SContextService"

    const-string v4, "cannot initialize scontext service! : this listener is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextAttribute;

    invoke-direct {p0, p2, v3}, Landroid/hardware/scontext/SContextService;->addSContextService(ILandroid/hardware/scontext/SContextAttribute;)V

    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeSContextService() : service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot initialize scontext service! : This service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not used."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1b

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v3, 0x0

    .local v3, "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v5, 0x0

    .local v5, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    if-nez p3, :cond_0

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/scontext/SContextService$Listener;

    .local v7, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    move-object v3, v7

    move-object v4, v3

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .end local v7    # "next":Landroid/hardware/scontext/SContextService$Listener;
    .local v4, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :goto_1
    if-nez v4, :cond_8

    :try_start_1
    new-instance v3, Landroid/hardware/scontext/SContextService$Listener;

    invoke-direct {v3, p0, p1}, Landroid/hardware/scontext/SContextService$Listener;-><init>(Landroid/hardware/scontext/SContextService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {p1, v3, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "registerCallback"

    invoke-direct {p0, p1, v8}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .local v6, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :try_start_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Landroid/hardware/scontext/SContextService;->addSContextService(ILandroid/hardware/scontext/SContextAttribute;)V

    if-ne p2, v10, :cond_7

    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v8, v3, p3}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->addAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v6

    .end local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_2
    :goto_3
    :try_start_4
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    if-ne p2, v8, :cond_5

    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v8, p2, p3}, Landroid/hardware/scontext/provider/Provider;->setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V

    :cond_5
    if-ne p2, v10, :cond_6

    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v8, v3, p3}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->addAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    :cond_6
    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getReportingMode(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mLatestRegisteredListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Landroid/hardware/scontext/SContextService;->mLatestInfo:Landroid/os/Bundle;

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "context":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    invoke-direct {p0, p2, v1}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .end local v1    # "context":Landroid/os/Bundle;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v8

    :goto_4
    iget-object v9, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    goto :goto_4

    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    goto :goto_4

    .end local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_7
    move-object v5, v6

    .end local v6    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    .restart local v5    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    goto/16 :goto_3

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    :cond_8
    move-object v3, v4

    .end local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    goto/16 :goto_2

    :cond_9
    move-object v4, v3

    .end local v3    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    .restart local v4    # "listener":Landroid/hardware/scontext/SContextService$Listener;
    goto/16 :goto_1
.end method

.method public requestToUpdate(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .local v1, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextService$Listener;

    .local v2, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .end local v2    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-nez v1, :cond_2

    const-string v3, "SContextService"

    const-string v4, "cannot initialize scontext service! : this listener is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v3}, Landroid/hardware/scontext/provider/Provider;->requestToUpdate()V

    const-string v3, "SContextService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestToUpdate() : service = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public setReferenceData(I[B)Z
    .locals 4
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .local v0, "res":Z
    if-nez p2, :cond_0

    move v1, v0

    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/scontext/provider/Provider;->setReferenceData(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_1
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v0

    .restart local v1    # "res":I
    goto :goto_0

    .end local v1    # "res":I
    :cond_1
    :try_start_1
    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/provider/Provider;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/scontext/provider/Provider;->setReferenceData(I[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v0

    .restart local v1    # "res":I
    goto :goto_0

    .end local v1    # "res":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public unregisterCallback(Landroid/os/IBinder;I)Z
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "service"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1b

    const/4 v2, 0x1

    .local v2, "isDeletableListener":Z
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v3, 0x0

    .local v3, "listener":Landroid/hardware/scontext/SContextService$Listener;
    :try_start_0
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/scontext/SContextService$Listener;

    .local v5, "next":Landroid/hardware/scontext/SContextService$Listener;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mToken:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/hardware/scontext/SContextService$Listener;->access$000(Landroid/hardware/scontext/SContextService$Listener;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, v5

    .end local v5    # "next":Landroid/hardware/scontext/SContextService$Listener;
    :cond_1
    if-eqz v3, :cond_3

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAttribute;

    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$200(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "unregisterCallback"

    invoke-direct {p0, p1, v6}, Landroid/hardware/scontext/SContextService;->notifyListeners(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    const-string v6, "SContextService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unregisterCallback() : Listener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", used = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    if-ne p2, v9, :cond_2

    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v3, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    :cond_2
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextService;->removeSContextService(I)V

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-direct {p0}, Landroid/hardware/scontext/SContextService;->showListenerList()V

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_3
    if-eqz v3, :cond_4

    # getter for: Landroid/hardware/scontext/SContextService$Listener;->mServices:Ljava/util/HashSet;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService$Listener;->access$100(Landroid/hardware/scontext/SContextService$Listener;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    if-eqz v2, :cond_6

    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .restart local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :cond_7
    if-ne p2, v9, :cond_8

    :try_start_1
    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/hardware/scontext/SContextService;->mProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;

    invoke-virtual {v6, v3, v0}, Landroid/hardware/scontext/provider/caeprovider/ActivityNotificationImpl;->removeAction(Landroid/hardware/scontext/SContextService$Listener;Landroid/hardware/scontext/SContextAttribute;)V

    :cond_8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/hardware/scontext/SContextService;->mUsedServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextService$Listener;>;"
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/scontext/SContextService$Listener;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/hardware/scontext/SContextService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method
