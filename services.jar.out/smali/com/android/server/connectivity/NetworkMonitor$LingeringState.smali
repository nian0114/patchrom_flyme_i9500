.class Lcom/android/server/connectivity/NetworkMonitor$LingeringState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LingeringState"
.end annotation


# static fields
.field private static final ACTION_LINGER_EXPIRED:Ljava/lang/String; = "android.net.netmon.lingerExpired"


# instance fields
.field private mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private mIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const v4, 0x82004

    .line 593
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "android.net.netmon.lingerExpired"

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 595
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    .line 603
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$5204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    .line 605
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$5500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 635
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->mBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 636
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 609
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    .line 610
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 628
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 613
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 616
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLingerToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x82005

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$LingeringState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x82001 -> :sswitch_1
        0x82004 -> :sswitch_2
        0x82008 -> :sswitch_0
    .end sparse-switch
.end method
