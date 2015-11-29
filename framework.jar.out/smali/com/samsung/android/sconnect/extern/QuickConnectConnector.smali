.class public Lcom/samsung/android/sconnect/extern/QuickConnectConnector;
.super Ljava/lang/Object;
.source "QuickConnectConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;,
        Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    }
.end annotation


# instance fields
.field private final INTENT_BIND_QUICKCONNECT_CONNECTOR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

.field private mContext:Landroid/content/Context;

.field private mDeviceList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

.field private mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QuickConnectConnector"

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.sconnect.central_START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->INTENT_BIND_QUICKCONNECT_CONNECTOR:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceList:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    new-instance v0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;-><init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;-><init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    new-instance v0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;-><init>(Landroid/content/Context;Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QuickConnectConnector"

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.sconnect.central_START_SERVICE"

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->INTENT_BIND_QUICKCONNECT_CONNECTOR:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceList:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    new-instance v0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$1;-><init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector$2;-><init>(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)V

    iput-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    iput-object p1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->bind()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mCallback:Lcom/samsung/android/sconnect/central/extern/ISconnectCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;Lcom/samsung/android/sconnect/central/extern/ISconnectService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/android/sconnect/extern/QuickConnectConnector;)Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    return-object v0
.end method

.method private bind()V
    .locals 4

    .prologue
    const-string v1, "QuickConnectConnector"

    const-string v2, "bind:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sconnect.central_START_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.sconnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "QuickConnectConnector"

    const-string v1, "unBind:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mServiceConn:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v2, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    return-void
.end method


# virtual methods
.method public finishConnector()V
    .locals 2

    .prologue
    const-string v0, "QuickConnectConnector"

    const-string v1, "finishConnector:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->stopDiscovery()V

    invoke-direct {p0}, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->unBind()V

    return-void
.end method

.method public sendFiles(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v5, "QuickConnectConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendFiles:WRONG VALUE:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    :goto_0
    return v5

    :cond_1
    const-string v5, "QuickConnectConnector"

    const-string v7, "sendFiles:"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .local v4, "uriArray":[Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v5, "QuickConnectConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendFiles: length: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v7, v4

    move v5, v6

    :goto_2
    if-lt v5, v7, :cond_3

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    iget-object v5, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7, v5, p1, v4}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->sendFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    .end local v4    # "uriArray":[Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "uri":Landroid/net/Uri;
    .restart local v4    # "uriArray":[Ljava/lang/String;
    :cond_3
    aget-object v1, v4, v5

    .local v1, "item":Ljava/lang/String;
    const-string v8, "QuickConnectConnector"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendFiles:sending item: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v1    # "item":Ljava/lang/String;
    :cond_4
    const-string v5, "QuickConnectConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendFiles:uriArray is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "QuickConnectConnector"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendFiles:RemoteException"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v5, v6

    goto/16 :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "uriArray":[Ljava/lang/String;
    :cond_5
    const-string v5, "QuickConnectConnector"

    const-string v7, "sendFiles:list is empty"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_0
.end method

.method public startDiscovery(Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    .prologue
    const-string v1, "QuickConnectConnector"

    const-string v2, "startDiscovery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    invoke-interface {v1}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->refreshDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startDiscovery:RemoteException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopDiscovery()V
    .locals 4

    .prologue
    const-string v1, "QuickConnectConnector"

    const-string v2, "stopDiscovery:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mDeviceListener:Lcom/samsung/android/sconnect/extern/QuickConnectConnector$IDeviceStatusListener;

    iget-object v1, p0, Lcom/samsung/android/sconnect/extern/QuickConnectConnector;->mISconnect:Lcom/samsung/android/sconnect/central/extern/ISconnectService;

    invoke-interface {v1}, Lcom/samsung/android/sconnect/central/extern/ISconnectService;->stopDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickConnectConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopDiscovery:RemoteException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
