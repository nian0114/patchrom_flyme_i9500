.class public Lcom/ck/services/task/TaskPackLoader;
.super Ljava/lang/Object;
.source "TaskPackLoader.java"

# interfaces
.implements Lcom/ck/services/task/ITask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;,
        Lcom/ck/services/task/TaskPackLoader$DownloadPack;,
        Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;,
        Lcom/ck/services/task/TaskPackLoader$Pack;
    }
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final CODE:Ljava/lang/String; = "code"

.field private static final CUSTID:Ljava/lang/String; = "cid"

.field private static final INTERVAL:Ljava/lang/String; = "interval"

.field private static final MD5:Ljava/lang/String; = "md"

.field private static final NETTYPE:Ljava/lang/String; = "net"

.field private static final OPERATION:Ljava/lang/String; = "op"

.field private static final PACK:Ljava/lang/String; = "pack"

.field private static final PROJECTID:Ljava/lang/String; = "pid"

.field private static final SIGN:Ljava/lang/String; = "sign"

.field private static final SIGNKEY:Ljava/lang/String; = "ts"

.field private static final SIZE:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "TaskPackLoader"

.field private static final TASK:Ljava/lang/String; = "task"

.field private static final TCPPORT:Ljava/lang/String; = "port"

.field private static final TCPSVR:Ljava/lang/String; = "tcpSvr"

.field private static final VERCODE:Ljava/lang/String; = "vcode"


# instance fields
.field private mConfig:Lcom/ck/services/modules/IMainConfig;

.field private mContext:Landroid/content/Context;

.field private mLocalPackMD5:Ljava/lang/String;

.field private mNetClient:Lcom/ck/services/modules/INetClient;

.field private mPackChecker:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

.field private mPackServerChecker:Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

.field private mShell:Lcom/ck/services/statistics/IStatistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;

    .line 53
    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mContext:Landroid/content/Context;

    .line 54
    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mNetClient:Lcom/ck/services/modules/INetClient;

    .line 55
    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mConfig:Lcom/ck/services/modules/IMainConfig;

    .line 56
    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackChecker:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

    .line 57
    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackServerChecker:Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mLocalPackMD5:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/ck/services/task/TaskPackLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ck/services/task/TaskPackLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader;->mLocalPackMD5:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/modules/INetClient;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mNetClient:Lcom/ck/services/modules/INetClient;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ck/services/task/TaskPackLoader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mLocalPackMD5:Ljava/lang/String;

    return-object v0
.end method

.method private doCheckDynamicPack()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackChecker:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;-><init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;)V

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackChecker:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;

    iget-object v1, p0, Lcom/ck/services/task/TaskPackLoader;->mPackChecker:Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;

    invoke-interface {v0, v1}, Lcom/ck/services/statistics/IStatistics;->submitTask(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method private doCheckDynamicPackServer(Lcom/ck/services/modules/INetClient$Server;)V
    .locals 2
    .param p1, "server"    # Lcom/ck/services/modules/INetClient$Server;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackServerChecker:Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;-><init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;)V

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackServerChecker:Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mPackServerChecker:Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

    invoke-virtual {v0, p1}, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->setServer(Lcom/ck/services/modules/INetClient$Server;)V

    .line 107
    iget-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;

    iget-object v1, p0, Lcom/ck/services/task/TaskPackLoader;->mPackServerChecker:Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;

    invoke-interface {v0, v1}, Lcom/ck/services/statistics/IStatistics;->submitTask(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method private doDownloadDynamicPack(Lcom/ck/services/task/TaskPackLoader$Pack;)V
    .locals 1
    .param p1, "pack"    # Lcom/ck/services/task/TaskPackLoader$Pack;

    .prologue
    .line 111
    new-instance v0, Lcom/ck/services/task/TaskPackLoader$DownloadPack;

    invoke-direct {v0, p0, p1}, Lcom/ck/services/task/TaskPackLoader$DownloadPack;-><init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$Pack;)V

    invoke-virtual {v0}, Lcom/ck/services/task/TaskPackLoader$DownloadPack;->submit()V

    .line 112
    return-void
.end method


# virtual methods
.method public onCreate(Lcom/ck/services/statistics/IStatistics;)V
    .locals 1
    .param p1, "shell"    # Lcom/ck/services/statistics/IStatistics;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;

    .line 64
    invoke-interface {p1}, Lcom/ck/services/statistics/IStatistics;->getAppletContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "instance_netclient"

    invoke-interface {p1, v0}, Lcom/ck/services/statistics/IStatistics;->getShellService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ck/services/modules/INetClient;

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mNetClient:Lcom/ck/services/modules/INetClient;

    .line 66
    const-string v0, "instance_preferences"

    invoke-interface {p1, v0}, Lcom/ck/services/statistics/IStatistics;->getShellService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ck/services/modules/IMainConfig;

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader;->mConfig:Lcom/ck/services/modules/IMainConfig;

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onMinTick(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "curSysTime"    # Landroid/text/format/Time;

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public processSystemMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/ck/services/task/TaskPackLoader;->doCheckDynamicPack()V

    .line 84
    const/4 v0, 0x1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_2

    .line 86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ck/services/modules/INetClient$Server;

    invoke-direct {p0, v1}, Lcom/ck/services/task/TaskPackLoader;->doCheckDynamicPackServer(Lcom/ck/services/modules/INetClient$Server;)V

    .line 87
    const/4 v0, 0x1

    .line 88
    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x34

    if-ne v1, v2, :cond_0

    .line 89
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ck/services/task/TaskPackLoader$Pack;

    invoke-direct {p0, v1}, Lcom/ck/services/task/TaskPackLoader;->doDownloadDynamicPack(Lcom/ck/services/task/TaskPackLoader$Pack;)V

    .line 90
    const/4 v0, 0x1

    goto :goto_0
.end method
