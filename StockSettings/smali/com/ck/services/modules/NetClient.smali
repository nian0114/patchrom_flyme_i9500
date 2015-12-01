.class public Lcom/ck/services/modules/NetClient;
.super Ljava/lang/Object;
.source "NetClient.java"

# interfaces
.implements Lcom/ck/services/modules/INetClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/modules/NetClient$DownloadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetClient"


# instance fields
.field private isGprsConn:Z

.field private isWifiConn:Z

.field private mAppletContext:Landroid/content/Context;

.field private mIsConnected:Z

.field private mNetType:Lcom/ck/services/modules/INetClient$NET_TYPE;

.field private mNetworkManager:Lcom/ck/services/modules/NetworkManager;

.field private mShell:Lcom/ck/services/statistics/IStatistics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;

    .line 24
    iput-object v0, p0, Lcom/ck/services/modules/NetClient;->mAppletContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    .line 27
    iput-boolean v1, p0, Lcom/ck/services/modules/NetClient;->mIsConnected:Z

    .line 28
    sget-object v0, Lcom/ck/services/modules/INetClient$NET_TYPE;->NET_TYPE_INVALID:Lcom/ck/services/modules/INetClient$NET_TYPE;

    iput-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetType:Lcom/ck/services/modules/INetClient$NET_TYPE;

    .line 30
    iput-boolean v1, p0, Lcom/ck/services/modules/NetClient;->isGprsConn:Z

    .line 31
    iput-boolean v1, p0, Lcom/ck/services/modules/NetClient;->isWifiConn:Z

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/ck/services/modules/NetClient;)Lcom/ck/services/statistics/IStatistics;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ck/services/modules/NetClient;Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/ck/services/modules/NetClient;->isGprsConn:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ck/services/modules/NetClient;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/ck/services/modules/NetClient;->isWifiConn:Z

    return-void
.end method

.method static synthetic access$3(Lcom/ck/services/modules/NetClient;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/ck/services/modules/NetClient;->isGprsConn:Z

    return v0
.end method

.method static synthetic access$4(Lcom/ck/services/modules/NetClient;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/ck/services/modules/NetClient;->isWifiConn:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ck/services/modules/NetClient;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ck/services/modules/NetClient;->mIsConnected:Z

    return-void
.end method

.method static synthetic access$6(Lcom/ck/services/modules/NetClient;Lcom/ck/services/modules/INetClient$NET_TYPE;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ck/services/modules/NetClient;->mNetType:Lcom/ck/services/modules/INetClient$NET_TYPE;

    return-void
.end method


# virtual methods
.method public downloadObject(Lcom/ck/services/modules/INetClient$DownloadRequest;Lcom/ck/services/statistics/ITaskListener;)V
    .locals 3
    .param p1, "request"    # Lcom/ck/services/modules/INetClient$DownloadRequest;
    .param p2, "listener"    # Lcom/ck/services/statistics/ITaskListener;

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;

    new-instance v2, Lcom/ck/services/modules/NetClient$DownloadTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/ck/services/modules/NetClient$DownloadTask;-><init>(Lcom/ck/services/modules/NetClient;Lcom/ck/services/modules/INetClient$DownloadRequest;Lcom/ck/services/statistics/ITaskListener;)V

    invoke-interface {v1, v2}, Lcom/ck/services/statistics/IStatistics;->submitTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentNetType()Lcom/ck/services/modules/INetClient$NET_TYPE;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetType:Lcom/ck/services/modules/INetClient$NET_TYPE;

    return-object v0
.end method

.method public getCurrentNetTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetType:Lcom/ck/services/modules/INetClient$NET_TYPE;

    sget-object v1, Lcom/ck/services/modules/INetClient$NET_TYPE;->NET_TYPE_GPRS:Lcom/ck/services/modules/INetClient$NET_TYPE;

    if-ne v0, v1, :cond_0

    .line 102
    const-string v0, "GPRS"

    .line 106
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetType:Lcom/ck/services/modules/INetClient$NET_TYPE;

    sget-object v1, Lcom/ck/services/modules/INetClient$NET_TYPE;->NET_TYPE_WIFI:Lcom/ck/services/modules/INetClient$NET_TYPE;

    if-ne v0, v1, :cond_1

    .line 104
    const-string v0, "WIFI"

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentTraffic()J
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    invoke-virtual {v0}, Lcom/ck/services/modules/NetworkManager;->getUsedGprsTraffic()J

    move-result-wide v0

    return-wide v0
.end method

.method public isNetActivated()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/ck/services/modules/NetClient;->mIsConnected:Z

    return v0
.end method

.method public onCreate(Lcom/ck/services/statistics/IStatistics;)V
    .locals 5
    .param p1, "shell"    # Lcom/ck/services/statistics/IStatistics;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;

    .line 36
    invoke-interface {p1}, Lcom/ck/services/statistics/IStatistics;->getAppletContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ck/services/modules/NetClient;->mAppletContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/ck/services/modules/NetworkManager;

    iget-object v1, p0, Lcom/ck/services/modules/NetClient;->mAppletContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ck/services/modules/NetworkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    .line 38
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    const/4 v1, 0x3

    const-wide/16 v2, 0x4e20

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ck/services/modules/NetworkManager;->init(IJZ)V

    .line 40
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    new-instance v1, Lcom/ck/services/modules/NetClient$1;

    invoke-direct {v1, p0}, Lcom/ck/services/modules/NetClient$1;-><init>(Lcom/ck/services/modules/NetClient;)V

    invoke-virtual {v0, v1}, Lcom/ck/services/modules/NetworkManager;->setListener(Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;)V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    invoke-virtual {v0}, Lcom/ck/services/modules/NetworkManager;->deInit()V

    .line 93
    return-void
.end method

.method public postDataToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    invoke-virtual {v1, p1, p2}, Lcom/ck/services/modules/NetworkManager;->doHttpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public pullDataFromServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    invoke-virtual {v1, p1}, Lcom/ck/services/modules/NetworkManager;->doHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method public tcpRequest(Lcom/ck/services/modules/INetClient$Server;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "server"    # Lcom/ck/services/modules/INetClient$Server;
    .param p2, "requestData"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ck/services/modules/NetClient;->mNetworkManager:Lcom/ck/services/modules/NetworkManager;

    iget-object v1, p1, Lcom/ck/services/modules/INetClient$Server;->mAddress:Ljava/lang/String;

    iget v2, p1, Lcom/ck/services/modules/INetClient$Server;->mPort:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/ck/services/modules/NetworkManager;->doTcpRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
