.class public Landroid/net/pppoe/PppoeStateTracker;
.super Ljava/lang/Object;
.source "PppoeStateTracker.java"


# static fields
.field private static DBG:Z = false

.field private static final EVENT_PPPOE_STATE_CHANGED:I = 0xf

.field private static final PPPOE_CONNECTED:I = 0x5

.field private static final PPPOE_DISCONNECTED:I = 0x6

.field private static final PPPOE_DISCONNECTING:I = 0x8

.field private static final PPPOE_NETID:I = 0xffdc

.field private static final PPPOE_RECONNECT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PppoeStateTracker"


# instance fields
.field private gateway:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInterfaceName:Ljava/lang/String;

.field private mLastState:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLocalHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPppoeLinkProperties:Landroid/net/LinkProperties;

.field private mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

.field private mPppoeStarted:Z

.field private final mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWM:Landroid/net/pppoe/PppoeManager;

.field private mWifiPppoeState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/pppoe/PppoeStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    iput v2, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/net/pppoe/PppoeStateTracker$1;

    invoke-direct {v1, p0}, Landroid/net/pppoe/PppoeStateTracker$1;-><init>(Landroid/net/pppoe/PppoeStateTracker;)V

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLocalHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    new-instance v1, Landroid/net/pppoe/PppoeMonitor;

    invoke-direct {v1, p0}, Landroid/net/pppoe/PppoeMonitor;-><init>(Landroid/net/pppoe/PppoeStateTracker;)V

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    const-string v1, "pppoe.interface"

    const-string v2, "ppp9"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    const-string v1, "net.ppp9.gw"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/pppoe/PppoeStateTracker$2;

    invoke-direct {v2, p0}, Landroid/net/pppoe/PppoeStateTracker$2;-><init>(Landroid/net/pppoe/PppoeStateTracker;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Landroid/net/pppoe/PppoeStateTracker;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/pppoe/PppoeStateTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/pppoe/PppoeStateTracker;->handleLocalMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/pppoe/PppoeStateTracker;

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Landroid/net/pppoe/PppoeStateTracker;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/pppoe/PppoeStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/pppoe/PppoeStateTracker;

    .prologue
    iget-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    return v0
.end method

.method static synthetic access$300(Landroid/net/pppoe/PppoeStateTracker;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/pppoe/PppoeStateTracker;

    .prologue
    invoke-direct {p0}, Landroid/net/pppoe/PppoeStateTracker;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$400(Landroid/net/pppoe/PppoeStateTracker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/net/pppoe/PppoeStateTracker;

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private handleLocalMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recv PPPOE_CONNECTED!!!!! mLastState is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    if-eq v6, v10, :cond_2

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v6, v9}, Landroid/net/pppoe/PppoeMonitor;->setPppoeStarted(Z)V

    const-string v6, "net.ppp9.gw"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    const-string v6, "net.pppoe.local-ip"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "strLocalIp":Ljava/lang/String;
    const-string v6, "net.pppoe.remote-ip"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strRemoteIp":Ljava/lang/String;
    const-string v6, "net.pppoe.dns1"

    const-string v7, "8.8.8.8"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strDns1":Ljava/lang/String;
    const-string v6, "net.pppoe.dns2"

    const-string v7, "8.8.8.8"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "strDns2":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gateway = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/LinkAddress;

    const-string v7, "0.0.0.0"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .local v1, "routeInfo":Landroid/net/RouteInfo;
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    const/16 v9, 0x18

    invoke-direct {v7, v8, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    iget-object v7, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "routeInfo":Landroid/net/RouteInfo;
    :goto_1
    invoke-direct {p0}, Landroid/net/pppoe/PppoeStateTracker;->handlePppoeLinkProperties()V

    invoke-virtual {p0, v10}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeNotification()V

    .end local v2    # "strDns1":Ljava/lang/String;
    .end local v3    # "strDns2":Ljava/lang/String;
    .end local v4    # "strLocalIp":Ljava/lang/String;
    .end local v5    # "strRemoteIp":Ljava/lang/String;
    :cond_2
    iput v10, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    goto/16 :goto_0

    .restart local v2    # "strDns1":Ljava/lang/String;
    .restart local v3    # "strDns2":Ljava/lang/String;
    .restart local v4    # "strLocalIp":Ljava/lang/String;
    .restart local v5    # "strRemoteIp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v6, "PppoeStateTracker"

    const-string v7, "UnknownHostException "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v2    # "strDns1":Ljava/lang/String;
    .end local v3    # "strDns2":Ljava/lang/String;
    .end local v4    # "strLocalIp":Ljava/lang/String;
    .end local v5    # "strRemoteIp":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->stopPppoe()Z

    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recv PPPOE_DISCONNECTED!!!!! mLastState is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    if-eq v6, v11, :cond_3

    invoke-direct {p0}, Landroid/net/pppoe/PppoeStateTracker;->handleNetworkDisconnect()V

    invoke-virtual {p0, v11}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->cancelPppoeNotification()V

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->clear()V

    :cond_3
    iput v11, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    goto/16 :goto_0

    :pswitch_3
    iget v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    if-eqz v6, :cond_0

    invoke-virtual {p0, v9}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "PppoeStateTracker"

    const-string v7, "recv PPPOE_RECONNECT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v6

    if-eq v6, v10, :cond_0

    const-string v6, "PppoeStateTracker"

    const-string v7, "begin in starteventloop and start pppoe!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->startEventLoop()V

    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->startPppoe()Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const-string v3, "PppoeStateTracker"

    const-string v4, "wifi network disconnected!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .local v2, "nmService":Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v3, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    const v4, 0xffdc

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    const v3, 0xffdc

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->removeNetwork(I)V

    const-string v3, "PppoeStateTracker"

    const-string v4, "Remove pppoe network successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PppoeStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove pppoe network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePppoeLinkProperties()V
    .locals 25

    .prologue
    const-string v22, "PppoeStateTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handlePppoeLinkProperties, mPppoeLinkProperties:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v18

    .local v18, "oldRouteInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/RouteInfo;

    .local v20, "route":Landroid/net/RouteInfo;
    const-string v22, "PppoeStateTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "RouteInfo of wlan0:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v20    # "route":Landroid/net/RouteInfo;
    :cond_0
    const/16 v21, -0x1

    .local v21, "wifiNetId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .local v5, "cm":Landroid/net/ConnectivityManager;
    const-string v22, "network_management"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .local v4, "b":Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v17

    .local v17, "nmService":Landroid/os/INetworkManagementService;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v15

    .local v15, "networks":[Landroid/net/Network;
    if-eqz v15, :cond_1

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_1

    move-object v3, v15

    .local v3, "arr$":[Landroid/net/Network;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v14, v3, v11

    .local v14, "net":Landroid/net/Network;
    invoke-virtual {v5, v14}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v12

    .local v12, "info":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    iget v0, v14, Landroid/net/Network;->netId:I

    move/from16 v21, v0

    .end local v3    # "arr$":[Landroid/net/Network;
    .end local v11    # "i$":I
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "len$":I
    .end local v14    # "net":Landroid/net/Network;
    :cond_1
    const-string v22, "PppoeStateTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "wifiNetId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/RouteInfo;

    .restart local v20    # "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v22

    if-eqz v22, :cond_2

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->removeRoute(ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v22, "PppoeStateTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception in removeRoute:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v20    # "route":Landroid/net/RouteInfo;
    .restart local v3    # "arr$":[Landroid/net/Network;
    .local v11, "i$":I
    .restart local v12    # "info":Landroid/net/NetworkInfo;
    .restart local v13    # "len$":I
    .restart local v14    # "net":Landroid/net/Network;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v3    # "arr$":[Landroid/net/Network;
    .end local v11    # "i$":I
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "len$":I
    .end local v14    # "net":Landroid/net/Network;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    .local v8, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, "pppoeDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .local v6, "dns":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v6    # "dns":Ljava/net/InetAddress;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v7, v0, [Ljava/lang/String;

    .local v7, "dnsArr":[Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v0, v7

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    const-string v22, "PppoeStateTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Set net.dns"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v10, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v7, v10

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    const v22, 0xffdc

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(I)V

    const-string v22, "ppp9"

    const v23, 0xffdc

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    const v22, 0xffdc

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v7, v2}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    const v22, 0xffdc

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v16

    .local v16, "newRouteInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/RouteInfo;

    .restart local v20    # "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v20 .. v20}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v22

    if-eqz v22, :cond_7

    const v22, 0xffdc

    move-object/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .end local v16    # "newRouteInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    .end local v20    # "route":Landroid/net/RouteInfo;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v22, "PppoeStateTracker"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception in config pppoe:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    return-void
.end method


# virtual methods
.method public cancelPppoeNotification()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/flyme/internal/R$layout;->mz_ongoing_pppoe_notification:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public getPppoeState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method notifyPppoeConnected()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLocalHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPppoeDisconnected()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLocalHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPppoeDisconnecting()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLocalHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPppoeNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v1, "PppoeStateTracker"

    const-string v5, "enter notify"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.net.pppoe.PPPOE_NOTIFY"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .local v6, "contentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .local v8, "notification":Landroid/app/Notification;
    sget v1, Lcom/flyme/internal/R$drawable;->mz_stat_sys_pppoe:I

    iput v1, v8, Landroid/app/Notification;->icon:I

    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v8, Landroid/app/Notification;->flags:I

    iput-object v6, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/widget/RemoteViews;

    const-string v1, "com.android.phone"

    sget v5, Lcom/flyme/internal/R$layout;->mz_ongoing_pppoe_notification:I

    invoke-direct {v0, v1, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .local v0, "contentView":Landroid/widget/RemoteViews;
    sget v1, Lcom/flyme/internal/R$id;->mz_pppoe_icon:I

    sget v5, Lcom/flyme/internal/R$drawable;->mz_status_ic_pppoe:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const-wide/16 v2, 0x0

    .local v2, "chronometerBaseTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-object v0, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, ""

    .local v4, "expandedViewLine1":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    sget v5, Lcom/flyme/internal/R$string;->mz_notification_ongoing_pppoe_format:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/flyme/internal/R$id;->mz_pppoe_title:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    sget v5, Lcom/flyme/internal/R$layout;->mz_ongoing_pppoe_notification:I

    invoke-virtual {v1, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v1, "PppoeStateTracker"

    const-string v5, "leave notify"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPppoeStarted(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v0, p1}, Landroid/net/pppoe/PppoeMonitor;->setPppoeStarted(Z)V

    return-void
.end method

.method public declared-synchronized setPppoeState(I)V
    .locals 4
    .param p1, "pppoeState"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter setPppoeState state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.pppoe.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mWM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v0, p1}, Landroid/net/pppoe/PppoeManager;->setPppoeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public startEventLoop()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeMonitor;->setPppoeStarted(Z)V

    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeMonitor;->startMonitoring()V

    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "pppoe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/pppoe/PppoeManager;

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mWM:Landroid/net/pppoe/PppoeManager;

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "pppoe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/pppoe/PppoeManager;

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mWM:Landroid/net/pppoe/PppoeManager;

    return-void
.end method

.method public declared-synchronized startPppoe()Z
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    invoke-static {}, Landroid/net/pppoe/PppoeNative;->startPppoe()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPppoe()Z
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    invoke-static {}, Landroid/net/pppoe/PppoeNative;->stopPppoe()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
