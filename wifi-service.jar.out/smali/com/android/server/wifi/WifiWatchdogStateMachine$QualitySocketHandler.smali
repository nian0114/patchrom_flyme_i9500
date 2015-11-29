.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QualitySocketHandler"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mQCStartTime:J

.field private mRxBytesBeforeQC:J

.field private mRxPacketsBeforeQC:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "WifiWatchdogStateMachine.QualitySocketHandler"

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    return-void
.end method

.method private sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V
    .locals 18
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "resolvedIp"    # I
    .param p3, "srcUrl"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "isSSLSocket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[URL] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, "addr":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    :goto_0
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addr : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, " (Proxy)"

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v12, "url":Ljava/net/URL;
    const/16 v9, 0x50

    .local v9, "port":I
    if-eqz p5, :cond_2

    const/16 v9, 0x1bb

    :cond_2
    invoke-virtual {v12}, Ljava/net/URL;->getPort()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    invoke-virtual {v12}, Ljava/net/URL;->getPort()I

    move-result v9

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v9

    :cond_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getProtocol: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v13, "http"

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "https"

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v14, "No http(s) request!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/net/SocketException;

    invoke-direct {v13}, Ljava/net/SocketException;-><init>()V

    throw v13

    .end local v9    # "port":I
    .end local v12    # "url":Ljava/net/URL;
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const-string v13, " "

    goto/16 :goto_1

    .restart local v9    # "port":I
    .restart local v12    # "url":Ljava/net/URL;
    :cond_8
    const-string v4, "/"

    .local v4, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, ""

    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "http://%s%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    .local v5, "ipaddr":Ljava/net/InetAddress;
    if-nez p1, :cond_d

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v14, "socket closed before connect"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v13, Ljava/net/SocketException;

    invoke-direct {v13}, Ljava/net/SocketException;-><init>()V

    throw v13

    .end local v5    # "ipaddr":Ljava/net/InetAddress;
    :cond_b
    const-string v13, "http://%s/"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_c
    const-string v13, ""

    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v12}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .restart local v5    # "ipaddr":Ljava/net/InetAddress;
    :cond_d
    const-string v13, "wlan0"

    invoke-static {v13}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string v13, "wlan0"

    invoke-static {v13}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    new-instance v13, Ljava/net/InetSocketAddress;

    const/4 v14, 0x0

    invoke-direct {v13, v5, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :try_start_0
    sget-object v13, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v14

    sget v15, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v16, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    const-string v17, "wlan0"

    invoke-interface/range {v13 .. v17}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v11, 0x1388

    .local v11, "timeout":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-direct {v13, v2, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v14, "socket Connected!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .local v6, "message":Landroid/os/Message;
    move/from16 v0, p4

    iput v0, v6, Landroid/os/Message;->arg1:I

    if-nez p4, :cond_13

    const v13, 0x2102f

    iput v13, v6, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v13

    const-wide/16 v14, 0xbb8

    invoke-virtual {v13, v6, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .local v10, "theOutput":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .local v8, "out":Ljava/io/OutputStreamWriter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v14, "ro.product.model"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    const/4 v7, 0x0

    .local v7, "modelName":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserAgentModelName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v7

    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GET "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " HTTP/1.1\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User-Agent: Dalvik/1.6.0 (Linux; U; Android 4.3; "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Build/JSS15J)\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Host: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v13, "Connection: close\r\n"

    invoke-virtual {v8, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v13, "\r\n"

    invoke-virtual {v8, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v14, "socket.sendGetMethod!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void

    .end local v6    # "message":Landroid/os/Message;
    .end local v7    # "modelName":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/OutputStreamWriter;
    .end local v10    # "theOutput":Ljava/io/OutputStream;
    .end local v11    # "timeout":I
    :catch_0
    move-exception v3

    .local v3, "errnoException":Landroid/system/ErrnoException;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v3}, Landroid/system/ErrnoException;->printStackTrace()V

    :cond_11
    new-instance v13, Ljava/net/SocketException;

    invoke-direct {v13}, Ljava/net/SocketException;-><init>()V

    throw v13

    .end local v3    # "errnoException":Landroid/system/ErrnoException;
    :cond_12
    const/16 v11, 0xbb8

    goto/16 :goto_3

    .restart local v6    # "message":Landroid/os/Message;
    .restart local v11    # "timeout":I
    :cond_13
    const v13, 0x21024

    iput v13, v6, Landroid/os/Message;->what:I

    if-eqz p5, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    add-int/lit16 v14, v14, 0x1f4

    int-to-long v14, v14

    invoke-virtual {v13, v6, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_6
    const-string v13, "wlan0"

    invoke-static {v13}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string v13, "wlan0"

    invoke-static {v13}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v13, v6, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .restart local v7    # "modelName":Ljava/lang/String;
    .restart local v8    # "out":Ljava/io/OutputStreamWriter;
    .restart local v10    # "theOutput":Ljava/io/OutputStream;
    :cond_15
    const-string v7, "GT-I9500"

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPropertiesModelName:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    :cond_17
    const-string v7, "GT-I9500"

    goto/16 :goto_5
.end method

.method private sendGetMethod(Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 22
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "srcUrl"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[URL] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .local v13, "message":Landroid/os/Message;
    const v19, 0x21025

    move/from16 v0, v19

    iput v0, v13, Landroid/os/Message;->what:I

    move/from16 v0, p3

    iput v0, v13, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    const-wide/16 v20, 0xbb8

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    .local v5, "addrList":[Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    const v20, 0x21025

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const/4 v11, 0x0

    .local v11, "ipv4Count":I
    move-object v6, v5

    .local v6, "arr$":[Ljava/net/InetAddress;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_2

    aget-object v9, v6, v8

    .local v9, "inet":Ljava/net/InetAddress;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "inet : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v0, v9, Ljava/net/Inet4Address;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v9    # "inet":Ljava/net/InetAddress;
    :cond_2
    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "There is no an IPv4 address in the array of IP addresses"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/net/UnknownHostException;

    invoke-direct/range {v19 .. v19}, Ljava/net/UnknownHostException;-><init>()V

    throw v19

    :cond_3
    new-instance v16, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .local v16, "rand":Ljava/util/Random;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    aget-object v4, v5, v19

    .local v4, "addr":Ljava/net/InetAddress;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "addr : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v15, 0x50

    .local v15, "port":I
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getPort()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getPort()I

    move-result v15

    :cond_5
    const-string v19, "http"

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "No http request!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/net/SocketException;

    invoke-direct/range {v19 .. v19}, Ljava/net/SocketException;-><init>()V

    throw v19

    :cond_6
    const-string v7, "/"

    .local v7, "file":Ljava/lang/String;
    const-string v19, ""

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v10

    .local v10, "ipaddr":Ljava/net/InetAddress;
    if-nez p1, :cond_9

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "socket closed before connect"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v19, Ljava/net/SocketException;

    invoke-direct/range {v19 .. v19}, Ljava/net/SocketException;-><init>()V

    throw v19

    :cond_9
    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    new-instance v19, Ljava/net/InetSocketAddress;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v20, 0xbb8

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "socket Connected!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    const v19, 0x21024

    move/from16 v0, v19

    iput v0, v13, Landroid/os/Message;->what:I

    move/from16 v0, p3

    iput v0, v13, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCTimeoutMs:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    const-string v19, "wlan0"

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .local v17, "theOutput":Ljava/io/OutputStream;
    new-instance v14, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .local v14, "out":Ljava/io/OutputStreamWriter;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GET "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " HTTP/1.1\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HOST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v19, "Connection: close\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "socket.sendGetMethod!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method


# virtual methods
.method getRxBytesDuringQC()I
    .locals 6

    .prologue
    const-string v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .local v0, "bytes":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRxBytesDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method getRxPacketsDuringQC()I
    .locals 6

    .prologue
    const-string v1, "wlan0"

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxPacketsBeforeQC:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .local v0, "packets":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRxPacketsDuringQC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v29, 0x0

    .local v29, "needSkip":Z
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .local v6, "id":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .local v4, "ip":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .local v5, "qcUrl":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[QUALITY_CHECK_START] id : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[QUALITY_CHECK_START] id : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    const/16 v34, 0x0

    .local v34, "rtt":I
    const/16 v33, 0x0

    .local v33, "resultBytes":I
    const/16 v40, 0x0

    .local v40, "urlCheck":Ljava/net/URL;
    const/16 v26, 0x0

    .local v26, "isSSLSocket":Z
    :try_start_0
    new-instance v41, Ljava/net/URL;

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v40    # "urlCheck":Ljava/net/URL;
    .local v41, "urlCheck":Ljava/net/URL;
    :try_start_1
    const-string v2, "https"

    invoke-virtual/range {v41 .. v41}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_12

    move-result v26

    move-object/from16 v40, v41

    .end local v41    # "urlCheck":Ljava/net/URL;
    .restart local v40    # "urlCheck":Ljava/net/URL;
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSSLSocket: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", url: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    if-lt v6, v2, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(mQCSocket != null) : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(mQCSSLSocket != null) : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    const/16 v29, 0x1

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v30

    .local v30, "ongoingId":I
    if-eqz v29, :cond_25

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t test quality by problem on using socket!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v30    # "ongoingId":I
    :catch_0
    move-exception v21

    .local v21, "ex":Ljava/net/MalformedURLException;
    :goto_5
    const/16 v40, 0x0

    goto/16 :goto_1

    .end local v21    # "ex":Ljava/net/MalformedURLException;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCRepeat:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_6

    if-eqz v26, :cond_11

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v22

    check-cast v22, Ljavax/net/ssl/SSLSocketFactory;

    .local v22, "factory":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V

    .end local v22    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_7
    const/16 v2, 0x1400

    new-array v15, v2, [C

    .local v15, "buffer":[C
    const/16 v27, 0x0

    .local v27, "length":I
    const/16 v25, 0x0

    .local v25, "in":Ljava/io/InputStream;
    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    :goto_8
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v14, "br":Ljava/io/BufferedReader;
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "line":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v28, :cond_1a

    const-string v2, "301"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    const-string v2, "302"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    const-string v2, "303"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21024

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    const/16 v31, 0x0

    .local v31, "redirectURL":Ljava/lang/String;
    :cond_c
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_c

    const/4 v2, 0x0

    const/16 v3, 0x9

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Location:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x9

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirectURL : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    if-nez v31, :cond_19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t get redirect URL from response! (SSL)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2}, Ljava/net/SocketException;-><init>()V

    throw v2
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "buffer":[C
    .end local v24    # "i":I
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v27    # "length":I
    .end local v28    # "line":Ljava/lang/String;
    .end local v31    # "redirectURL":Ljava/lang/String;
    :catch_1
    move-exception v38

    .local v38, "ste":Ljava/net/SocketTimeoutException;
    :try_start_4
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "SocketTimeoutException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v2, "wlan0"

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mRxBytesBeforeQC:J

    move-wide/from16 v42, v0

    sub-long v2, v2, v42

    long-to-int v2, v2

    div-int/lit8 v33, v2, 0x3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v30

    .restart local v30    # "ongoingId":I
    if-eqz v29, :cond_2d

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t test quality by problem on using socket!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v30    # "ongoingId":I
    .end local v38    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v24    # "i":I
    :cond_11
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_7

    .end local v24    # "i":I
    :catch_2
    move-exception v19

    .local v19, "ee":Ljava/lang/Exception;
    :try_start_6
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_13
    const/16 v33, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v30

    .restart local v30    # "ongoingId":I
    if-eqz v29, :cond_35

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t test quality by problem on using socket!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v19    # "ee":Ljava/lang/Exception;
    .end local v30    # "ongoingId":I
    .restart local v15    # "buffer":[C
    .restart local v24    # "i":I
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v27    # "length":I
    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    goto/16 :goto_8

    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v31    # "redirectURL":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    if-nez v31, :cond_19

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t get redirect URL from response!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2}, Ljava/net/SocketException;-><init>()V

    throw v2
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "buffer":[C
    .end local v24    # "i":I
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v27    # "length":I
    .end local v28    # "line":Ljava/lang/String;
    .end local v31    # "redirectURL":Ljava/lang/String;
    :catch_3
    move-exception v13

    .local v13, "ae":Ljava/lang/AssertionError;
    :try_start_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AssertionError occured : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_18
    const/16 v33, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v30

    .restart local v30    # "ongoingId":I
    if-eqz v29, :cond_3d

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t test quality by problem on using socket!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v13    # "ae":Ljava/lang/AssertionError;
    .end local v30    # "ongoingId":I
    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "buffer":[C
    .restart local v24    # "i":I
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v27    # "length":I
    .restart local v28    # "line":Ljava/lang/String;
    .restart local v31    # "redirectURL":Ljava/lang/String;
    :cond_19
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21029

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/16 v29, 0x1

    goto/16 :goto_4

    .end local v31    # "redirectURL":Ljava/lang/String;
    :cond_1a
    const/16 v36, 0x1400

    .local v36, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v3

    if-ne v2, v3, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPassBytes:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v39

    .local v39, "targetBytes":I
    :goto_9
    move/from16 v32, v39

    .local v32, "remainBytes":I
    :cond_1b
    :goto_a
    const/4 v2, 0x0

    move/from16 v0, v36

    invoke-virtual {v14, v15, v2, v0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v18

    .local v18, "count":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1d

    sub-int v32, v32, v18

    add-int v27, v27, v18

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " count: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-gtz v32, :cond_24

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->mQCStartTime:J

    move-wide/from16 v42, v0

    sub-long v2, v2, v42

    long-to-int v2, v2

    add-int v34, v34, v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rtt : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " ms"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->getRxBytesDuringQC()I

    move-result v16

    .local v16, "bytes":I
    move/from16 v0, v27

    move/from16 v1, v39

    if-lt v0, v1, :cond_1f

    move/from16 v0, v27

    mul-int/lit16 v2, v0, 0x5cc

    div-int/lit16 v2, v2, 0x596

    mul-int/lit16 v2, v2, 0x3e8

    div-int v2, v2, v34

    add-int v33, v33, v2

    :cond_1f
    move/from16 v0, v33

    move/from16 v1, v16

    if-ge v0, v1, :cond_20

    move/from16 v33, v16

    :cond_20
    move/from16 v0, v33

    move/from16 v1, v39

    if-ge v0, v1, :cond_22

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "Before socket timeout, all data had been received successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move/from16 v33, v39

    :cond_22
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .end local v16    # "bytes":I
    .end local v18    # "count":I
    .end local v32    # "remainBytes":I
    .end local v39    # "targetBytes":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v39

    goto/16 :goto_9

    .restart local v18    # "count":I
    .restart local v32    # "remainBytes":I
    .restart local v39    # "targetBytes":I
    :cond_24
    move/from16 v0, v32

    move/from16 v1, v36

    if-ge v0, v1, :cond_1b

    move/from16 v36, v32

    goto/16 :goto_a

    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "buffer":[C
    .end local v18    # "count":I
    .end local v24    # "i":I
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v27    # "length":I
    .end local v28    # "line":Ljava/lang/String;
    .end local v32    # "remainBytes":I
    .end local v36    # "size":I
    .end local v39    # "targetBytes":I
    .restart local v30    # "ongoingId":I
    :cond_25
    if-nez v30, :cond_26

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality id["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] was already timed out!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_28

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11

    :cond_28
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_29

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    :cond_29
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v30

    if-ne v6, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21029

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send qc result...id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21027

    move/from16 v0, v33

    invoke-static {v2, v3, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21025

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21024

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_2c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .restart local v38    # "ste":Ljava/net/SocketTimeoutException;
    :cond_2d
    if-nez v30, :cond_2e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality id["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] was already timed out!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_30

    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    :cond_30
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_31

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :cond_31
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v30

    if-ne v6, v0, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21029

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_34

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send qc result...id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21027

    move/from16 v0, v33

    invoke-static {v2, v3, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_33
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21025

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21024

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_34
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .end local v38    # "ste":Ljava/net/SocketTimeoutException;
    .restart local v19    # "ee":Ljava/lang/Exception;
    :cond_35
    if-nez v30, :cond_36

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality id["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] was already timed out!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_38

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    :cond_38
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_39

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    :cond_39
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v30

    if-ne v6, v0, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21029

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send qc result...id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21027

    move/from16 v0, v33

    invoke-static {v2, v3, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_3b
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21025

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21024

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_3c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .end local v19    # "ee":Ljava/lang/Exception;
    .restart local v13    # "ae":Ljava/lang/AssertionError;
    :cond_3d
    if-nez v30, :cond_3e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality id["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] was already timed out!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_40

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    :cond_40
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    if-eqz v2, :cond_41

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    :cond_41
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v30

    if-ne v6, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21029

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_44

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send qc result...id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21027

    move/from16 v0, v33

    invoke-static {v2, v3, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_43
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21025

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v2

    const v3, 0x21024

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_44
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .end local v13    # "ae":Ljava/lang/AssertionError;
    .end local v30    # "ongoingId":I
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v30

    .restart local v30    # "ongoingId":I
    if-eqz v29, :cond_45

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "couldn\'t test quality by problem on using socket!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_45
    if-nez v30, :cond_46

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "quality id["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] was already timed out!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_48

    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    :cond_48
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSocket:Ljava/net/Socket;
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    if-eqz v3, :cond_49

    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    :cond_49
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSSLSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move/from16 v0, v30

    if-ne v6, v0, :cond_4c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    const v7, 0x21029

    invoke-virtual {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_4c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send qc result...id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    const v7, 0x21027

    move/from16 v0, v33

    invoke-static {v3, v7, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_4b
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    const v7, 0x21025

    invoke-virtual {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v3

    const v7, 0x21024

    invoke-virtual {v3, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    throw v2

    :cond_4c
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v3

    if-eqz v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v7, "[id:%d, ongoingId:%d] Skip sending result"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .end local v4    # "ip":I
    .end local v5    # "qcUrl":Ljava/lang/String;
    .end local v6    # "id":I
    .end local v26    # "isSSLSocket":Z
    .end local v29    # "needSkip":Z
    .end local v30    # "ongoingId":I
    .end local v33    # "resultBytes":I
    .end local v34    # "rtt":I
    .end local v40    # "urlCheck":Ljava/net/URL;
    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    const-string v3, "[CONNECT_CAPTIVE_PORTAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .local v9, "captivePortalIp":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .local v10, "captivePortalUrl":Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, "firstLine":Ljava/lang/String;
    const/16 v37, -0x1

    .local v37, "statusCode":I
    const/16 v35, 0x0

    .local v35, "sameLocation":Z
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->sendGetMethod(Ljava/net/Socket;ILjava/lang/String;IZ)V

    const/16 v2, 0x32

    new-array v15, v2, [C

    .restart local v15    # "buffer":[C
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .restart local v25    # "in":Ljava/io/InputStream;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v14    # "br":Ljava/io/BufferedReader;
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_52

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_52

    const/16 v2, 0x9

    const/16 v3, 0xc

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .local v17, "code":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response code : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_4e
    const/16 v2, 0x64

    move/from16 v0, v17

    if-lt v0, v2, :cond_52

    const/16 v2, 0x3e7

    move/from16 v0, v17

    if-ge v0, v2, :cond_52

    move/from16 v37, v17

    const/16 v28, 0x0

    .restart local v28    # "line":Ljava/lang/String;
    const/16 v31, 0x0

    .restart local v31    # "redirectURL":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_51

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_51

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_4f

    const/4 v2, 0x0

    const/16 v3, 0x9

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Location:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/16 v2, 0x9

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_51

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirectURL : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    if-eqz v31, :cond_52

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "same Location : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v35, 0x1

    .end local v17    # "code":I
    .end local v28    # "line":Ljava/lang/String;
    .end local v31    # "redirectURL":Ljava/lang/String;
    :cond_52
    if-gez v37, :cond_56

    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2}, Ljava/net/SocketException;-><init>()V

    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "buffer":[C
    .end local v25    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v20

    .local v20, "eee":Ljava/lang/Exception;
    :try_start_15
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    :cond_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2102f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2102f

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {v2, v3, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v37, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2102f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v3

    const v7, 0x2102e

    if-eqz v35, :cond_59

    const/4 v2, 0x1

    :goto_1b
    move/from16 v0, v37

    invoke-static {v3, v7, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2102f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    .end local v20    # "eee":Ljava/lang/Exception;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "buffer":[C
    .restart local v25    # "in":Ljava/io/InputStream;
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v37, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2102f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v3

    const v7, 0x2102e

    if-eqz v35, :cond_58

    const/4 v2, 0x1

    :goto_1d
    move/from16 v0, v37

    invoke-static {v3, v7, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v3, 0x2102f

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_58
    const/4 v2, 0x0

    goto :goto_1d

    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "buffer":[C
    .end local v25    # "in":Ljava/io/InputStream;
    .restart local v20    # "eee":Ljava/lang/Exception;
    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_1b

    .end local v20    # "eee":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    if-eqz v2, :cond_5b

    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V

    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalSocket:Ljava/net/Socket;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    if-eqz v2, :cond_5b

    if-lez v37, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v7, 0x2102f

    invoke-virtual {v2, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v7

    const v8, 0x2102e

    if-eqz v35, :cond_5c

    const/4 v2, 0x1

    :goto_1f
    move/from16 v0, v37

    invoke-static {v7, v8, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualitySocketHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v2

    const v7, 0x2102f

    invoke-virtual {v2, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    :cond_5b
    throw v3

    :cond_5c
    const/4 v2, 0x0

    goto :goto_1f

    :catch_5
    move-exception v2

    goto :goto_1e

    .restart local v20    # "eee":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    goto/16 :goto_1a

    .end local v20    # "eee":Ljava/lang/Exception;
    .restart local v14    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "buffer":[C
    .restart local v25    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    goto/16 :goto_1c

    .end local v9    # "captivePortalIp":I
    .end local v10    # "captivePortalUrl":Ljava/lang/String;
    .end local v14    # "br":Ljava/io/BufferedReader;
    .end local v15    # "buffer":[C
    .end local v23    # "firstLine":Ljava/lang/String;
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v35    # "sameLocation":Z
    .end local v37    # "statusCode":I
    .restart local v4    # "ip":I
    .restart local v5    # "qcUrl":Ljava/lang/String;
    .restart local v6    # "id":I
    .restart local v26    # "isSSLSocket":Z
    .restart local v29    # "needSkip":Z
    .restart local v30    # "ongoingId":I
    .restart local v33    # "resultBytes":I
    .restart local v34    # "rtt":I
    .restart local v40    # "urlCheck":Ljava/net/URL;
    :catch_8
    move-exception v3

    goto/16 :goto_18

    :catch_9
    move-exception v3

    goto/16 :goto_17

    .restart local v13    # "ae":Ljava/lang/AssertionError;
    :catch_a
    move-exception v2

    goto/16 :goto_15

    :catch_b
    move-exception v2

    goto/16 :goto_14

    .end local v13    # "ae":Ljava/lang/AssertionError;
    .restart local v19    # "ee":Ljava/lang/Exception;
    :catch_c
    move-exception v2

    goto/16 :goto_12

    :catch_d
    move-exception v2

    goto/16 :goto_11

    .end local v19    # "ee":Ljava/lang/Exception;
    .restart local v38    # "ste":Ljava/net/SocketTimeoutException;
    :catch_e
    move-exception v2

    goto/16 :goto_f

    :catch_f
    move-exception v2

    goto/16 :goto_e

    .end local v38    # "ste":Ljava/net/SocketTimeoutException;
    :catch_10
    move-exception v2

    goto/16 :goto_c

    :catch_11
    move-exception v2

    goto/16 :goto_b

    .end local v30    # "ongoingId":I
    .end local v40    # "urlCheck":Ljava/net/URL;
    .restart local v41    # "urlCheck":Ljava/net/URL;
    :catch_12
    move-exception v21

    move-object/from16 v40, v41

    .end local v41    # "urlCheck":Ljava/net/URL;
    .restart local v40    # "urlCheck":Ljava/net/URL;
    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x21026 -> :sswitch_0
        0x2102d -> :sswitch_1
    .end sparse-switch
.end method
