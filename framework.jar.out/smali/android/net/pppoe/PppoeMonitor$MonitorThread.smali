.class Landroid/net/pppoe/PppoeMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeMonitor;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeMonitor;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    const-string v0, "PppoeMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const-string v2, "PppoeMonitor"

    const-string v3, "enter PppoeMonitorThread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "timecount":I
    :goto_0
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->waitForPpoeEvent()I

    move-result v0

    .local v0, "event":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeConnected()V

    const-string v2, "PppoeMonitor"

    const-string v3, "notifyPppoeConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    # invokes: Landroid/net/pppoe/PppoeMonitor;->nap(I)V
    invoke-static {v4}, Landroid/net/pppoe/PppoeMonitor;->access$200(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnecting()V

    const-string v2, "PppoeMonitor"

    const-string v3, "notifyPppoeDisconnecting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStarted:Z
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$100(Landroid/net/pppoe/PppoeMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    const-string v2, "PppoeMonitor"

    const-string v3, "notifyPppoeDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v4, :cond_0

    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnected()V

    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    # getter for: Landroid/net/pppoe/PppoeMonitor;->mPppoeStateTracker:Landroid/net/pppoe/PppoeStateTracker;
    invoke-static {v2}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppoeDisconnected()V

    goto :goto_2
.end method
