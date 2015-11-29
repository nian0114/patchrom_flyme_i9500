.class public Landroid/net/pppoe/PppoeMonitor;
.super Ljava/lang/Object;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/pppoe/PppoeMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PppoeMonitor"


# instance fields
.field private mPppoeStarted:Z

.field private final mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeStateTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/net/pppoe/PppoeStateTracker;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/pppoe/PppoeMonitor;->mPppoeStarted:Z

    iput-object p1, p0, Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    return-void
.end method

.method static synthetic access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;
    .locals 1
    .param p0, "x0"    # Landroid/net/pppoe/PppoeMonitor;

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/pppoe/PppoeMonitor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/pppoe/PppoeMonitor;

    .prologue
    iget-boolean v0, p0, Landroid/net/pppoe/PppoeMonitor;->mPppoeStarted:Z

    return v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/net/pppoe/PppoeMonitor;->nap(I)V

    return-void
.end method

.method private static nap(I)V
    .locals 2
    .param p0, "secs"    # I

    .prologue
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public setPppoeStarted(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/net/pppoe/PppoeMonitor;->mPppoeStarted:Z

    return-void
.end method

.method public startMonitoring()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;-><init>(Landroid/net/pppoe/PppoeMonitor;)V

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->start()V

    return-void
.end method
