.class Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;
.super Ljava/lang/Object;
.source "TaskPackLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/task/TaskPackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicPackChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ck/services/task/TaskPackLoader;


# direct methods
.method private constructor <init>(Lcom/ck/services/task/TaskPackLoader;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;-><init>(Lcom/ck/services/task/TaskPackLoader;)V

    return-void
.end method

.method private constructUdpRequest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "request":Ljava/lang/String;
    iget-object v4, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v4}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v4

    invoke-interface {v4}, Lcom/ck/services/statistics/IStatistics;->getShellInfo()Lcom/ck/services/statistics/IStatistics$ShellInfo;

    move-result-object v3

    .line 198
    .local v3, "shellInfo":Lcom/ck/services/statistics/IStatistics$ShellInfo;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v2, "requestObj":Lorg/json/JSONObject;
    const-string v4, "cid"

    iget v5, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mCustId:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    const-string v4, "pid"

    iget-object v5, v3, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v4, "net"

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mNetClient:Lcom/ck/services/modules/INetClient;
    invoke-static {v5}, Lcom/ck/services/task/TaskPackLoader;->access$3(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/modules/INetClient;

    move-result-object v5

    invoke-interface {v5}, Lcom/ck/services/modules/INetClient;->getCurrentNetTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v4, "md"

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mLocalPackMD5:Ljava/lang/String;
    invoke-static {v5}, Lcom/ck/services/task/TaskPackLoader;->access$4(Lcom/ck/services/task/TaskPackLoader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    .end local v2    # "requestObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private copyPackFromAssertToFileDir()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/ck/services/task/TaskPackLoader;->access$0(Lcom/ck/services/task/TaskPackLoader;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DynMain.jar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "internalDexPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v5, "internalDexFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 159
    iget-object v8, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/ck/services/task/TaskPackLoader;->access$0(Lcom/ck/services/task/TaskPackLoader;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "DynMain.jar"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 160
    .local v4, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x2800

    new-array v0, v8, [B

    .line 162
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 163
    .local v1, "bufferRead":I
    :goto_0
    const/4 v8, -0x1

    if-ne v1, v8, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 180
    .end local v0    # "buffer":[B
    .end local v1    # "bufferRead":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return v7

    .line 164
    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferRead":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 165
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "buffer":[B
    .end local v1    # "bufferRead":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "TaskPackLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IOException "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 180
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private doUdpRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v13, 0x0

    .line 256
    .local v13, "response":Ljava/lang/String;
    const/4 v2, 0x3

    .line 257
    .local v2, "MAX_RETRY_COUNT":I
    const/4 v15, 0x0

    .line 260
    .local v15, "retryCount":I
    const/16 v16, 0x0

    .line 261
    .local v16, "socket":Ljava/net/DatagramSocket;
    const/16 v3, 0x400

    .line 262
    .local v3, "RECV_BUFFER_SIZE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    move-object/from16 v19, v0

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static/range {v19 .. v19}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/ck/services/statistics/IStatistics;->getUdpServer()Lcom/ck/services/statistics/IStatistics$UdpServer;

    move-result-object v18

    .line 264
    .local v18, "udpServer":Lcom/ck/services/statistics/IStatistics$UdpServer;
    const-string v19, "TaskPackLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SERVER: ["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mIP:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "~"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v19, "TaskPackLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "requestString="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, "buffer":[B
    move-object/from16 v17, v16

    .line 270
    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .local v17, "socket":Ljava/net/DatagramSocket;
    :goto_0
    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mIP:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 272
    .local v6, "destIp":Ljava/net/InetAddress;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 273
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    move/from16 v20, v0

    add-int v7, v19, v20

    .line 281
    .local v7, "destPort":I
    :goto_1
    const-string v19, "TaskPackLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "dest IP:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v19, "TaskPackLoader"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "dest port : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v10, v4, v0, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 285
    .local v10, "hPacket":Ljava/net/DatagramPacket;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 286
    .local v12, "recvBuffer":[B
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v5, v12, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 287
    .local v5, "cPacket":Ljava/net/DatagramPacket;
    new-instance v16, Ljava/net/DatagramSocket;

    invoke-direct/range {v16 .. v16}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    :try_start_1
    const-string v19, "TaskPackLoader"

    const-string v20, "send udp"

    invoke-static/range {v19 .. v20}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 292
    const/16 v19, 0x2710

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 293
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 294
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    .line 295
    .local v11, "len":I
    if-lez v11, :cond_5

    .line 296
    new-instance v14, Ljava/lang/String;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v14, v12, v0, v11}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .end local v13    # "response":Ljava/lang/String;
    .local v14, "response":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 310
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v13, v14

    .line 319
    .end local v5    # "cPacket":Ljava/net/DatagramPacket;
    .end local v6    # "destIp":Ljava/net/InetAddress;
    .end local v7    # "destPort":I
    .end local v10    # "hPacket":Ljava/net/DatagramPacket;
    .end local v11    # "len":I
    .end local v12    # "recvBuffer":[B
    .end local v14    # "response":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v13

    .line 274
    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .restart local v6    # "destIp":Ljava/net/InetAddress;
    .restart local v17    # "socket":Ljava/net/DatagramSocket;
    :cond_1
    :try_start_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 275
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMinPort:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I

    move/from16 v20, v0

    add-int v7, v19, v20

    .line 276
    .restart local v7    # "destPort":I
    goto/16 :goto_1

    .line 277
    .end local v7    # "destPort":I
    :cond_2
    move-object/from16 v0, v18

    iget v7, v0, Lcom/ck/services/statistics/IStatistics$UdpServer;->mMaxPort:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v7    # "destPort":I
    goto/16 :goto_1

    .line 312
    .end local v13    # "response":Ljava/lang/String;
    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .restart local v5    # "cPacket":Ljava/net/DatagramPacket;
    .restart local v10    # "hPacket":Ljava/net/DatagramPacket;
    .restart local v11    # "len":I
    .restart local v12    # "recvBuffer":[B
    .restart local v14    # "response":Ljava/lang/String;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object v13, v14

    .line 297
    .end local v14    # "response":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    goto :goto_2

    .line 299
    .end local v5    # "cPacket":Ljava/net/DatagramPacket;
    .end local v6    # "destIp":Ljava/net/InetAddress;
    .end local v7    # "destPort":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "hPacket":Ljava/net/DatagramPacket;
    .end local v11    # "len":I
    .end local v12    # "recvBuffer":[B
    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .restart local v17    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v8

    move-object/from16 v16, v17

    .line 300
    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .local v8, "e":Ljava/io/IOException;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    :goto_3
    :try_start_4
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    add-int/lit8 v15, v15, 0x1

    .line 303
    const-wide/16 v20, 0x3e8

    :try_start_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    :goto_4
    if-eqz v16, :cond_3

    .line 310
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 317
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    const/16 v19, 0x3

    .line 268
    move/from16 v0, v19

    if-ge v15, v0, :cond_0

    move-object/from16 v17, v16

    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .restart local v17    # "socket":Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .line 304
    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    :catch_2
    move-exception v9

    .line 305
    .local v9, "e1":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 307
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e1":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v19

    .line 309
    :goto_6
    if-eqz v16, :cond_4

    .line 310
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 316
    :cond_4
    :goto_7
    throw v19

    .line 312
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 314
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 312
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 314
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 309
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "cPacket":Ljava/net/DatagramPacket;
    .restart local v6    # "destIp":Ljava/net/InetAddress;
    .restart local v7    # "destPort":I
    .restart local v10    # "hPacket":Ljava/net/DatagramPacket;
    .restart local v11    # "len":I
    .restart local v12    # "recvBuffer":[B
    :cond_5
    if-eqz v16, :cond_3

    .line 310
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    .line 312
    :catch_5
    move-exception v8

    .line 314
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 307
    .end local v5    # "cPacket":Ljava/net/DatagramPacket;
    .end local v6    # "destIp":Ljava/net/InetAddress;
    .end local v7    # "destPort":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "hPacket":Ljava/net/DatagramPacket;
    .end local v11    # "len":I
    .end local v12    # "recvBuffer":[B
    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .restart local v17    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    goto :goto_6

    .line 299
    .restart local v5    # "cPacket":Ljava/net/DatagramPacket;
    .restart local v6    # "destIp":Ljava/net/InetAddress;
    .restart local v7    # "destPort":I
    .restart local v10    # "hPacket":Ljava/net/DatagramPacket;
    .restart local v12    # "recvBuffer":[B
    :catch_6
    move-exception v8

    goto :goto_3

    .end local v13    # "response":Ljava/lang/String;
    .restart local v11    # "len":I
    .restart local v14    # "response":Ljava/lang/String;
    :cond_6
    move-object v13, v14

    .end local v14    # "response":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private parseUdpResponse(Ljava/lang/String;)Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 251
    .end local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .local v2, "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :goto_0
    return-object v2

    .line 235
    .end local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, "rspObj":Lorg/json/JSONObject;
    new-instance v2, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;-><init>(Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :try_start_1
    const-string v4, "task"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mCommand:I

    .line 238
    const-string v4, "interval"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    const-string v4, "interval"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mNextRequestInteval:I

    .line 241
    :cond_1
    const-string v4, "tcpSvr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    const-string v4, "tcpSvr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mTcpSvr:Ljava/lang/String;

    .line 243
    const-string v4, "port"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    const-string v4, "port"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mTcpPort:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .end local v3    # "rspObj":Lorg/json/JSONObject;
    .restart local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :goto_1
    move-object v2, v1

    .line 251
    .end local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    goto :goto_0

    .line 247
    .end local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v3    # "rspObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    goto :goto_2

    .end local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :cond_2
    move-object v1, v2

    .end local v2    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .restart local v1    # "packCheckRsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x35

    .line 118
    invoke-direct {p0}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->copyPackFromAssertToFileDir()Z

    move-result v0

    .line 120
    .local v0, "dexExist":Z
    if-eqz v0, :cond_0

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/ck/services/task/TaskPackLoader;->access$0(Lcom/ck/services/task/TaskPackLoader;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "DynMain.jar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "internalDexPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    invoke-static {v1}, Lcom/ck/services/datas/security/Guardian$MD5;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ck/services/task/TaskPackLoader;->access$1(Lcom/ck/services/task/TaskPackLoader;Ljava/lang/String;)V

    .line 125
    .end local v1    # "internalDexPath":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->constructUdpRequest()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "request":Ljava/lang/String;
    const-string v7, "TaskPackLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "json object : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v3}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->doUdpRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "response":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 129
    const-string v7, "TaskPackLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "response : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v4}, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->parseUdpResponse(Ljava/lang/String;)Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;

    move-result-object v5

    .line 132
    .local v5, "rsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    if-eqz v5, :cond_1

    .line 133
    iget v7, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mCommand:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_2

    .line 134
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 135
    .local v2, "msg":Landroid/os/Message;
    const/16 v7, 0x33

    iput v7, v2, Landroid/os/Message;->what:I

    .line 136
    new-instance v6, Lcom/ck/services/modules/INetClient$Server;

    invoke-direct {v6}, Lcom/ck/services/modules/INetClient$Server;-><init>()V

    .line 137
    .local v6, "svr":Lcom/ck/services/modules/INetClient$Server;
    iget-object v7, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mTcpSvr:Ljava/lang/String;

    iput-object v7, v6, Lcom/ck/services/modules/INetClient$Server;->mAddress:Ljava/lang/String;

    .line 138
    iget v7, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mTcpPort:I

    iput v7, v6, Lcom/ck/services/modules/INetClient$Server;->mPort:I

    .line 139
    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v7, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v7}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/ck/services/statistics/IStatistics;->sendMessage(Landroid/os/Message;)V

    .line 151
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "rsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    .end local v6    # "svr":Lcom/ck/services/modules/INetClient$Server;
    :cond_1
    :goto_0
    return-void

    .line 141
    .restart local v5    # "rsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :cond_2
    iget v7, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mCommand:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 142
    iget-object v7, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v7}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v7

    iget-object v8, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mTcpSvr:Ljava/lang/String;

    iget v9, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mTcpPort:I

    invoke-interface {v7, v8, v9}, Lcom/ck/services/statistics/IStatistics;->setRegServer(Ljava/lang/String;I)V

    .line 143
    iget-object v7, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v7}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v7

    invoke-interface {v7, v10}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    goto :goto_0

    .line 144
    :cond_3
    iget v7, v5, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;->mCommand:I

    const/16 v8, 0x78

    if-ne v7, v8, :cond_1

    .line 145
    iget-object v7, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v7}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v7

    const/16 v8, 0x64

    invoke-interface {v7, v8}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    goto :goto_0

    .line 149
    .end local v5    # "rsp":Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker$packCheckResponse;
    :cond_4
    iget-object v7, p0, Lcom/ck/services/task/TaskPackLoader$DynamicPackChecker;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v7}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v7

    invoke-interface {v7, v10}, Lcom/ck/services/statistics/IStatistics;->sendEmptyMessage(I)V

    goto :goto_0
.end method
