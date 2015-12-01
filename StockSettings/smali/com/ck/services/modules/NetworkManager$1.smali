.class Lcom/ck/services/modules/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/modules/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ck/services/modules/NetworkManager;


# direct methods
.method constructor <init>(Lcom/ck/services/modules/NetworkManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    .line 132
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 139
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    .local v2, "isDisconnected":Z
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mIsWifiConneted:Z
    invoke-static {v3}, Lcom/ck/services/modules/NetworkManager;->access$0(Lcom/ck/services/modules/NetworkManager;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v3}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v3}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v3

    sget-object v4, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-interface {v3, v4}, Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;->onStatusChange(Lcom/ck/services/modules/NetworkManager$NET_STAT;)V

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/ck/services/modules/NetworkManager;->access$2(Lcom/ck/services/modules/NetworkManager;Z)V

    .line 152
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "isDisconnected":Z
    :cond_1
    :goto_0
    return-void

    .line 145
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "isDisconnected":Z
    :cond_2
    if-eqz v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mIsWifiConneted:Z
    invoke-static {v3}, Lcom/ck/services/modules/NetworkManager;->access$0(Lcom/ck/services/modules/NetworkManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v3}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 147
    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v3}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v3

    sget-object v4, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-interface {v3, v4}, Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;->onStatusChange(Lcom/ck/services/modules/NetworkManager$NET_STAT;)V

    .line 149
    :cond_3
    iget-object v3, p0, Lcom/ck/services/modules/NetworkManager$1;->this$0:Lcom/ck/services/modules/NetworkManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ck/services/modules/NetworkManager;->access$2(Lcom/ck/services/modules/NetworkManager;Z)V

    goto :goto_0
.end method
