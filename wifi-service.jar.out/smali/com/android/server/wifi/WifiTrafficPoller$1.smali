.class Lcom/android/server/wifi/WifiTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$102(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 134
    sget-object v0, Lcom/android/server/wifi/WifiTrafficPoller$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$100(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$200(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    const-string v1, "NUM"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller;->access$302(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 156
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    # getter for: Lcom/android/server/wifi/WifiTrafficPoller;->mHotspotClientNum:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->access$300(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v0

    if-lez v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iput-boolean v3, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    .line 159
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNeedBooster:Z

    .line 164
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
