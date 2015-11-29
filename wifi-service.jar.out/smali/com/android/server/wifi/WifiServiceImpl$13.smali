.class Lcom/android/server/wifi/WifiServiceImpl$13;
.super Landroid/telephony/PhoneStateListener;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 4549
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$13;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/16 v6, 0xd

    .line 4551
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataConnectionStateChanged: state -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    const-string v3, "VZW"

    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MTR"

    const-string v4, "ALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4555
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$13;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v2

    .line 4556
    .local v2, "wifiApState":I
    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    if-ne v2, v6, :cond_3

    .line 4559
    :cond_1
    const/4 v1, 0x5

    .line 4561
    .local v1, "maxClientNum":I
    if-ne p2, v6, :cond_2

    .line 4562
    const/16 v1, 0xa

    .line 4566
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$13;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$5300(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4579
    .end local v1    # "maxClientNum":I
    .end local v2    # "wifiApState":I
    :cond_3
    :goto_0
    return-void

    .line 4567
    .restart local v1    # "maxClientNum":I
    .restart local v2    # "wifiApState":I
    :catch_0
    move-exception v0

    .line 4568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
