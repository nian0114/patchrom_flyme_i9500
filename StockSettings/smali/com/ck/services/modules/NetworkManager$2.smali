.class Lcom/ck/services/modules/NetworkManager$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ck/services/modules/NetworkManager;->init(IJZ)V
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
    iput-object p1, p0, Lcom/ck/services/modules/NetworkManager$2;->this$0:Lcom/ck/services/modules/NetworkManager;

    .line 92
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager$2;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v0}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager$2;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v0}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v0

    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-interface {v0, v1}, Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;->onStatusChange(Lcom/ck/services/modules/NetworkManager$NET_STAT;)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager$2;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v0}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager$2;->this$0:Lcom/ck/services/modules/NetworkManager;

    # getter for: Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    invoke-static {v0}, Lcom/ck/services/modules/NetworkManager;->access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    move-result-object v0

    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-interface {v0, v1}, Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;->onStatusChange(Lcom/ck/services/modules/NetworkManager$NET_STAT;)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
