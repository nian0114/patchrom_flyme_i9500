.class Lcom/ck/services/modules/NetClient$1;
.super Ljava/lang/Object;
.source "NetClient.java"

# interfaces
.implements Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ck/services/modules/NetClient;->onCreate(Lcom/ck/services/statistics/IStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ck$services$modules$NetworkManager$NET_STAT:[I


# instance fields
.field final synthetic this$0:Lcom/ck/services/modules/NetClient;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ck$services$modules$NetworkManager$NET_STAT()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/ck/services/modules/NetClient$1;->$SWITCH_TABLE$com$ck$services$modules$NetworkManager$NET_STAT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ck/services/modules/NetworkManager$NET_STAT;->values()[Lcom/ck/services/modules/NetworkManager$NET_STAT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-virtual {v1}, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_GPRS_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-virtual {v1}, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_CONN:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-virtual {v1}, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ck/services/modules/NetworkManager$NET_STAT;->NET_WIFI_LOST:Lcom/ck/services/modules/NetworkManager$NET_STAT;

    invoke-virtual {v1}, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ck/services/modules/NetClient$1;->$SWITCH_TABLE$com$ck$services$modules$NetworkManager$NET_STAT:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/ck/services/modules/NetClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(Lcom/ck/services/modules/NetworkManager$NET_STAT;)V
    .locals 4
    .param p1, "status"    # Lcom/ck/services/modules/NetworkManager$NET_STAT;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-static {}, Lcom/ck/services/modules/NetClient$1;->$SWITCH_TABLE$com$ck$services$modules$NetworkManager$NET_STAT()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ck/services/modules/NetworkManager$NET_STAT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    iget-object v1, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->isGprsConn:Z
    invoke-static {v1}, Lcom/ck/services/modules/NetClient;->access$3(Lcom/ck/services/modules/NetClient;)Z

    move-result v1

    iget-object v2, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->isWifiConn:Z
    invoke-static {v2}, Lcom/ck/services/modules/NetClient;->access$4(Lcom/ck/services/modules/NetClient;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ck/services/modules/NetClient;->access$5(Lcom/ck/services/modules/NetClient;Z)V

    .line 84
    iget-object v1, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->isWifiConn:Z
    invoke-static {v0}, Lcom/ck/services/modules/NetClient;->access$4(Lcom/ck/services/modules/NetClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ck/services/modules/INetClient$NET_TYPE;->NET_TYPE_WIFI:Lcom/ck/services/modules/INetClient$NET_TYPE;

    :goto_1
    invoke-static {v1, v0}, Lcom/ck/services/modules/NetClient;->access$6(Lcom/ck/services/modules/NetClient;Lcom/ck/services/modules/INetClient$NET_TYPE;)V

    .line 86
    return-void

    .line 46
    :pswitch_0
    const-string v0, "NetClient"

    const-string v1, "GPRS is lost!"

    invoke-static {v0, v1}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v0}, Lcom/ck/services/modules/NetClient;->access$0(Lcom/ck/services/modules/NetClient;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    .line 48
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    invoke-static {v0, v2}, Lcom/ck/services/modules/NetClient;->access$1(Lcom/ck/services/modules/NetClient;Z)V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "NetClient"

    const-string v1, "Wifi is lost!"

    invoke-static {v0, v1}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v0}, Lcom/ck/services/modules/NetClient;->access$0(Lcom/ck/services/modules/NetClient;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    .line 54
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    invoke-static {v0, v2}, Lcom/ck/services/modules/NetClient;->access$2(Lcom/ck/services/modules/NetClient;Z)V

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "NetClient"

    const-string v1, "Wifi is connected"

    invoke-static {v0, v1}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v0}, Lcom/ck/services/modules/NetClient;->access$0(Lcom/ck/services/modules/NetClient;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    .line 73
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    invoke-static {v0, v3}, Lcom/ck/services/modules/NetClient;->access$2(Lcom/ck/services/modules/NetClient;Z)V

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "NetClient"

    const-string v1, "GPRS is connected"

    invoke-static {v0, v1}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v0}, Lcom/ck/services/modules/NetClient;->access$0(Lcom/ck/services/modules/NetClient;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    .line 79
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    invoke-static {v0, v3}, Lcom/ck/services/modules/NetClient;->access$1(Lcom/ck/services/modules/NetClient;Z)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ck/services/modules/NetClient$1;->this$0:Lcom/ck/services/modules/NetClient;

    # getter for: Lcom/ck/services/modules/NetClient;->isGprsConn:Z
    invoke-static {v0}, Lcom/ck/services/modules/NetClient;->access$3(Lcom/ck/services/modules/NetClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ck/services/modules/INetClient$NET_TYPE;->NET_TYPE_GPRS:Lcom/ck/services/modules/INetClient$NET_TYPE;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/ck/services/modules/INetClient$NET_TYPE;->NET_TYPE_INVALID:Lcom/ck/services/modules/INetClient$NET_TYPE;

    goto :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
