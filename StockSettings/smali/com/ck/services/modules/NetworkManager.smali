.class public Lcom/ck/services/modules/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;,
        Lcom/ck/services/modules/NetworkManager$NET_STAT;
    }
.end annotation


# static fields
.field private static final PREDEFINED_TCP_HEADER_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NetworkManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnablePost:Z

.field private mHttpRetryCount:I

.field private mHttpTimeOut:I

.field private mIsInited:Z

.field private mIsWifiConneted:Z

.field private mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 56
    iput-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    .line 57
    iput-boolean v0, p0, Lcom/ck/services/modules/NetworkManager;->mIsInited:Z

    .line 58
    iput-boolean v0, p0, Lcom/ck/services/modules/NetworkManager;->mIsWifiConneted:Z

    .line 59
    iput-boolean v0, p0, Lcom/ck/services/modules/NetworkManager;->mEnablePost:Z

    .line 61
    iput v0, p0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    .line 62
    iput v0, p0, Lcom/ck/services/modules/NetworkManager;->mHttpTimeOut:I

    .line 63
    iput-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 132
    new-instance v0, Lcom/ck/services/modules/NetworkManager$1;

    invoke-direct {v0, p0}, Lcom/ck/services/modules/NetworkManager$1;-><init>(Lcom/ck/services/modules/NetworkManager;)V

    iput-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/ck/services/modules/NetworkManager;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/ck/services/modules/NetworkManager;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/ck/services/modules/NetworkManager;->mIsWifiConneted:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ck/services/modules/NetworkManager;)Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ck/services/modules/NetworkManager;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/ck/services/modules/NetworkManager;->mIsWifiConneted:Z

    return-void
.end method

.method public static byteArray2int([B)I
    .locals 9
    .param p0, "b"    # [B

    .prologue
    const/4 v8, 0x0

    .line 268
    const/4 v7, 0x4

    new-array v0, v7, [B

    .line 269
    .local v0, "a":[B
    array-length v7, v0

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    array-length v7, p0

    add-int/lit8 v2, v7, -0x1

    .line 270
    .local v2, "j":I
    :goto_0
    if-gez v1, :cond_0

    .line 276
    aget-byte v7, v0, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v3, v7, 0x18

    .line 277
    .local v3, "v0":I
    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x10

    .line 278
    .local v4, "v1":I
    const/4 v7, 0x2

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v5, v7, 0x8

    .line 279
    .local v5, "v2":I
    const/4 v7, 0x3

    aget-byte v7, v0, v7

    and-int/lit16 v6, v7, 0xff

    .line 280
    .local v6, "v3":I
    add-int v7, v3, v4

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    return v7

    .line 271
    .end local v3    # "v0":I
    .end local v4    # "v1":I
    .end local v5    # "v2":I
    .end local v6    # "v3":I
    :cond_0
    if-ltz v2, :cond_1

    .line 272
    aget-byte v7, p0, v2

    aput-byte v7, v0, v1

    .line 270
    :goto_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 274
    :cond_1
    aput-byte v8, v0, v1

    goto :goto_1
.end method

.method public static int2byteArray(I)[B
    .locals 3
    .param p0, "num"    # I

    .prologue
    .line 253
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 254
    .local v0, "result":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 255
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 256
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 257
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 258
    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/ck/services/modules/NetworkManager;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    const-string v0, "NetworkManager"

    const-string v1, "unregister listener to LISTEN_DATA_CONNECTION_STATE of TelephonyManager"

    invoke-static {v0, v1}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ck/services/modules/NetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 126
    :cond_0
    return-void
.end method

.method public doHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v5, 0x0

    .line 219
    .local v5, "retryCount":I
    :cond_0
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 220
    .local v7, "ts":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "ck2@13!4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ck/services/datas/security/Guardian;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "sign":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&sign="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, "net":Lorg/apache/http/client/methods/HttpGet;
    const-string v8, "ts"

    invoke-virtual {v4, v8, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 225
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 226
    .local v3, "httpRsp":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 227
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 243
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpRsp":Lorg/apache/http/HttpResponse;
    .end local v4    # "net":Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v8

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    iget v8, p0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    if-ge v5, v8, :cond_1

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    add-int/lit8 v5, v5, 0x1

    .line 234
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget v8, p0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    .line 218
    if-lt v5, v8, :cond_0

    .line 243
    const/4 v8, 0x0

    goto :goto_0

    .line 235
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 236
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public doHttpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ck/services/modules/NetworkManager;->mEnablePost:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 158
    const/4 v12, 0x0

    .line 212
    :cond_0
    :goto_0
    return-object v12

    .line 161
    :cond_1
    const/4 v13, 0x0

    .line 162
    .local v13, "retryCount":I
    const/4 v6, 0x0

    .line 163
    .local v6, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v9, 0x0

    .line 164
    .local v9, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    const/4 v12, 0x0

    .local v12, "result":Ljava/lang/String;
    move-object v10, v9

    .end local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .local v10, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    move-object v7, v6

    .line 168
    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v7, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_1
    :try_start_0
    new-instance v16, Ljava/util/Random;

    invoke-direct/range {v16 .. v16}, Ljava/util/Random;-><init>()V

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 169
    .local v15, "ts":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "ck2@13!4"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ck/services/datas/security/Guardian;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "sign":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "&sign="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "buffer":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 172
    .local v3, "bufferBytes":[B
    const-string v16, "NetworkManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "HTTP POST HEAD[ts]:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v16, "NetworkManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "HTTP POST CONTENT:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    new-instance v16, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 177
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    const-string v17, "http.socket.timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ck/services/modules/NetworkManager;->mHttpTimeOut:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 179
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 180
    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_2
    new-instance v16, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 181
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    const-string v17, "http.socket.timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ck/services/modules/NetworkManager;->mHttpTimeOut:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 182
    const-string v16, "Charset"

    const-string v17, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v16, "ts"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v6, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 187
    .local v11, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 188
    .local v8, "httpCode":I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v8, v0, :cond_2

    .line 189
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 190
    const-string v16, "NetworkManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "result:= "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    if-eqz v6, :cond_0

    .line 207
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 206
    :cond_2
    if-eqz v6, :cond_3

    .line 207
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 212
    .end local v2    # "buffer":Ljava/lang/String;
    .end local v3    # "bufferBytes":[B
    .end local v8    # "httpCode":I
    .end local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "sign":Ljava/lang/String;
    .end local v15    # "ts":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 194
    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    move-object v9, v10

    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    move-object v6, v7

    .line 195
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    add-int/lit8 v13, v13, 0x1

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    move/from16 v16, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    .line 199
    const-wide/16 v16, 0x3e8

    :try_start_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    :goto_3
    if-eqz v6, :cond_4

    .line 207
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 210
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    move/from16 v16, v0

    .line 166
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    move-object v10, v9

    .end local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    move-object v7, v6

    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_1

    .line 200
    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v5

    .line 201
    .local v5, "e1":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 205
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e1":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v16

    .line 206
    :goto_5
    if-eqz v6, :cond_5

    .line 207
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 209
    :cond_5
    throw v16

    .line 206
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v6, :cond_4

    .line 207
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 205
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    move-object v6, v7

    .end local v7    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_5

    .end local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v2    # "buffer":Ljava/lang/String;
    .restart local v3    # "bufferBytes":[B
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "sign":Ljava/lang/String;
    .restart local v15    # "ts":Ljava/lang/String;
    :catchall_2
    move-exception v16

    move-object v9, v10

    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_5

    .line 194
    .end local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v4

    move-object v9, v10

    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public doTcpRequest(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p1, "svrIp"    # Ljava/lang/String;
    .param p2, "svrPort"    # I
    .param p3, "requestData"    # Ljava/lang/String;

    .prologue
    .line 286
    const/16 v16, 0x0

    .line 287
    .local v16, "tcpSoc":Ljava/net/Socket;
    const/4 v13, 0x0

    .line 288
    .local v13, "response":Ljava/lang/String;
    const/4 v12, 0x0

    .line 289
    .local v12, "os":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 290
    .local v7, "fos":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 293
    .local v9, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 294
    .local v10, "ip":Ljava/net/InetAddress;
    new-instance v17, Ljava/net/Socket;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v10, v1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .local v17, "tcpSoc":Ljava/net/Socket;
    const/16 v20, 0x4e20

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 298
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 300
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 301
    .local v15, "sendBuf":[B
    array-length v0, v15

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/ck/services/modules/NetworkManager;->int2byteArray(I)[B

    move-result-object v3

    .line 303
    .local v3, "bufLen":[B
    invoke-virtual {v12, v3}, Ljava/io/OutputStream;->write([B)V

    .line 304
    invoke-virtual {v12, v15}, Ljava/io/OutputStream;->write([B)V

    .line 305
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 308
    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 310
    const/16 v18, 0x0

    .line 318
    .local v18, "time":Landroid/text/format/Time;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v2, v0, [B

    .line 319
    .local v2, "buf":[B
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 320
    .local v8, "headerSize":I
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v8, v0, :cond_1

    .line 325
    invoke-static {v2}, Lcom/ck/services/modules/NetworkManager;->byteArray2int([B)I

    move-result v5

    .line 326
    .local v5, "contentLen":I
    new-array v2, v5, [B

    .line 327
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 335
    .local v4, "c":I
    move v11, v4

    .line 336
    .local v11, "loadedByteSize":I
    :goto_0
    if-lez v4, :cond_0

    if-ge v11, v5, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isConnected()Z

    move-result v20

    if-nez v20, :cond_5

    .line 353
    :cond_0
    if-ne v11, v5, :cond_c

    .line 354
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v13    # "response":Ljava/lang/String;
    .local v14, "response":Ljava/lang/String;
    move-object v13, v14

    .line 372
    .end local v4    # "c":I
    .end local v5    # "contentLen":I
    .end local v11    # "loadedByteSize":I
    .end local v14    # "response":Ljava/lang/String;
    .restart local v13    # "response":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    :try_start_2
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 378
    :cond_3
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_4
    :goto_2
    move-object/from16 v16, v17

    .end local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v16    # "tcpSoc":Ljava/net/Socket;
    move-object v14, v13

    .line 386
    .end local v2    # "buf":[B
    .end local v3    # "bufLen":[B
    .end local v8    # "headerSize":I
    .end local v10    # "ip":Ljava/net/InetAddress;
    .end local v13    # "response":Ljava/lang/String;
    .end local v15    # "sendBuf":[B
    .end local v18    # "time":Landroid/text/format/Time;
    .restart local v14    # "response":Ljava/lang/String;
    :goto_3
    return-object v14

    .line 337
    .end local v14    # "response":Ljava/lang/String;
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .restart local v2    # "buf":[B
    .restart local v3    # "bufLen":[B
    .restart local v4    # "c":I
    .restart local v5    # "contentLen":I
    .restart local v8    # "headerSize":I
    .restart local v10    # "ip":Ljava/net/InetAddress;
    .restart local v11    # "loadedByteSize":I
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v15    # "sendBuf":[B
    .restart local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v18    # "time":Landroid/text/format/Time;
    :cond_5
    :try_start_3
    const-string v20, "NetworkManager"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "len = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " new tmpBuf size :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-int v22, v5, v11

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sub-int v20, v5, v11

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 339
    .local v19, "tmpBuf":[B
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 341
    if-lez v4, :cond_9

    .line 345
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    add-int/2addr v11, v4

    .line 347
    const-string v20, "NetworkManager"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "c = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " loadedByteSize = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 362
    .end local v2    # "buf":[B
    .end local v3    # "bufLen":[B
    .end local v4    # "c":I
    .end local v5    # "contentLen":I
    .end local v8    # "headerSize":I
    .end local v11    # "loadedByteSize":I
    .end local v15    # "sendBuf":[B
    .end local v18    # "time":Landroid/text/format/Time;
    .end local v19    # "tmpBuf":[B
    :catch_0
    move-exception v6

    move-object/from16 v16, v17

    .line 363
    .end local v10    # "ip":Ljava/net/InetAddress;
    .end local v17    # "tcpSoc":Ljava/net/Socket;
    .local v6, "e":Ljava/net/UnknownHostException;
    .restart local v16    # "tcpSoc":Ljava/net/Socket;
    :goto_4
    :try_start_4
    const-string v20, "NetworkManager"

    const-string v21, "UNKNOWN HOST!"

    invoke-static/range {v20 .. v21}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    if-eqz v12, :cond_6

    :try_start_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 378
    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .end local v6    # "e":Ljava/net/UnknownHostException;
    :cond_8
    :goto_5
    move-object v14, v13

    .line 386
    .end local v13    # "response":Ljava/lang/String;
    .restart local v14    # "response":Ljava/lang/String;
    goto :goto_3

    .line 349
    .end local v14    # "response":Ljava/lang/String;
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .restart local v2    # "buf":[B
    .restart local v3    # "bufLen":[B
    .restart local v4    # "c":I
    .restart local v5    # "contentLen":I
    .restart local v8    # "headerSize":I
    .restart local v10    # "ip":Ljava/net/InetAddress;
    .restart local v11    # "loadedByteSize":I
    .restart local v13    # "response":Ljava/lang/String;
    .restart local v15    # "sendBuf":[B
    .restart local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v18    # "time":Landroid/text/format/Time;
    .restart local v19    # "tmpBuf":[B
    :cond_9
    :try_start_6
    const-string v20, "NetworkManager"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "c = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 365
    .end local v2    # "buf":[B
    .end local v3    # "bufLen":[B
    .end local v4    # "c":I
    .end local v5    # "contentLen":I
    .end local v8    # "headerSize":I
    .end local v11    # "loadedByteSize":I
    .end local v15    # "sendBuf":[B
    .end local v18    # "time":Landroid/text/format/Time;
    .end local v19    # "tmpBuf":[B
    :catch_1
    move-exception v6

    move-object/from16 v16, v17

    .line 366
    .end local v10    # "ip":Ljava/net/InetAddress;
    .end local v17    # "tcpSoc":Ljava/net/Socket;
    .local v6, "e":Ljava/io/IOException;
    .restart local v16    # "tcpSoc":Ljava/net/Socket;
    :goto_6
    :try_start_7
    const-string v20, "NetworkManager"

    const-string v21, "SOCKET CREATE FAILED!"

    invoke-static/range {v20 .. v21}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 372
    if-eqz v12, :cond_a

    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_a
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 378
    :cond_b
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_5

    .line 379
    :catch_2
    move-exception v6

    .line 381
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 356
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .restart local v2    # "buf":[B
    .restart local v3    # "bufLen":[B
    .restart local v4    # "c":I
    .restart local v5    # "contentLen":I
    .restart local v8    # "headerSize":I
    .restart local v10    # "ip":Ljava/net/InetAddress;
    .restart local v11    # "loadedByteSize":I
    .restart local v15    # "sendBuf":[B
    .restart local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v18    # "time":Landroid/text/format/Time;
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 379
    .end local v4    # "c":I
    .end local v5    # "contentLen":I
    .end local v11    # "loadedByteSize":I
    :catch_3
    move-exception v6

    .line 381
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 379
    .end local v2    # "buf":[B
    .end local v3    # "bufLen":[B
    .end local v8    # "headerSize":I
    .end local v10    # "ip":Ljava/net/InetAddress;
    .end local v15    # "sendBuf":[B
    .end local v17    # "tcpSoc":Ljava/net/Socket;
    .end local v18    # "time":Landroid/text/format/Time;
    .local v6, "e":Ljava/net/UnknownHostException;
    .restart local v16    # "tcpSoc":Ljava/net/Socket;
    :catch_4
    move-exception v6

    .line 381
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 368
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 369
    .local v6, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 372
    if-eqz v12, :cond_d

    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 378
    :cond_e
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_5

    .line 379
    :catch_6
    move-exception v6

    .line 381
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 370
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 372
    :goto_8
    if-eqz v12, :cond_f

    :try_start_b
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 373
    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 378
    :cond_10
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 385
    :cond_11
    :goto_9
    throw v20

    .line 379
    :catch_7
    move-exception v6

    .line 381
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 382
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v21

    goto :goto_9

    .line 370
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .restart local v10    # "ip":Ljava/net/InetAddress;
    .restart local v17    # "tcpSoc":Ljava/net/Socket;
    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v16    # "tcpSoc":Ljava/net/Socket;
    goto :goto_8

    .line 382
    .end local v10    # "ip":Ljava/net/InetAddress;
    .local v6, "e":Ljava/lang/Exception;
    :catch_9
    move-exception v20

    goto :goto_5

    .line 368
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .restart local v10    # "ip":Ljava/net/InetAddress;
    .restart local v17    # "tcpSoc":Ljava/net/Socket;
    :catch_a
    move-exception v6

    move-object/from16 v16, v17

    .end local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v16    # "tcpSoc":Ljava/net/Socket;
    goto :goto_7

    .line 382
    .end local v10    # "ip":Ljava/net/InetAddress;
    .local v6, "e":Ljava/io/IOException;
    :catch_b
    move-exception v20

    goto/16 :goto_5

    .line 365
    .end local v6    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v6

    goto :goto_6

    .line 382
    .local v6, "e":Ljava/net/UnknownHostException;
    :catch_d
    move-exception v20

    goto/16 :goto_5

    .line 362
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :catch_e
    move-exception v6

    goto/16 :goto_4

    .line 382
    .end local v16    # "tcpSoc":Ljava/net/Socket;
    .restart local v2    # "buf":[B
    .restart local v3    # "bufLen":[B
    .restart local v8    # "headerSize":I
    .restart local v10    # "ip":Ljava/net/InetAddress;
    .restart local v15    # "sendBuf":[B
    .restart local v17    # "tcpSoc":Ljava/net/Socket;
    .restart local v18    # "time":Landroid/text/format/Time;
    :catch_f
    move-exception v20

    goto/16 :goto_2
.end method

.method public getUsedGprsTraffic()J
    .locals 12

    .prologue
    const-wide/16 v8, -0x1

    .line 390
    const-wide/16 v4, -0x1

    .line 391
    .local v4, "totalUsed":J
    iget-object v7, p0, Lcom/ck/services/modules/NetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 394
    .local v6, "uid":I
    const-string v7, "NetworkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "UID="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-nez v7, :cond_0

    .line 397
    const-string v7, "NetworkManager"

    const-string v10, "TrafficStats is not supported on this device"

    invoke-static {v7, v10}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_0
    return-wide v8

    .line 399
    :cond_0
    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 400
    .local v0, "totalReceived":J
    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 401
    .local v2, "totalSent":J
    add-long v4, v0, v2

    .line 402
    const-string v7, "NetworkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RECV:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SENT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TOTAL:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v4

    .line 403
    goto :goto_0
.end method

.method public declared-synchronized init(IJZ)V
    .locals 4
    .param p1, "httpRetryCount"    # I
    .param p2, "httpDefaultTimeout"    # J
    .param p4, "enablePost"    # Z

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/ck/services/modules/NetworkManager;->mIsInited:Z

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    iput-boolean p4, p0, Lcom/ck/services/modules/NetworkManager;->mEnablePost:Z

    .line 78
    if-nez p1, :cond_2

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    .line 83
    :goto_1
    iget v1, p0, Lcom/ck/services/modules/NetworkManager;->mHttpTimeOut:I

    if-nez v1, :cond_3

    .line 84
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/ck/services/modules/NetworkManager;->mHttpTimeOut:I

    .line 88
    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "wifiInF":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ck/services/modules/NetworkManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    new-instance v1, Lcom/ck/services/modules/NetworkManager$2;

    invoke-direct {v1, p0}, Lcom/ck/services/modules/NetworkManager$2;-><init>(Lcom/ck/services/modules/NetworkManager;)V

    iput-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 113
    iget-object v1, p0, Lcom/ck/services/modules/NetworkManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/ck/services/modules/NetworkManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ck/services/modules/NetworkManager;->mIsInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "wifiInF":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 81
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/ck/services/modules/NetworkManager;->mHttpRetryCount:I

    goto :goto_1

    .line 86
    :cond_3
    long-to-int v1, p2

    iput v1, p0, Lcom/ck/services/modules/NetworkManager;->mHttpTimeOut:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setListener(Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ck/services/modules/NetworkManager;->mListener:Lcom/ck/services/modules/NetworkManager$INetworkStatusListener;

    .line 130
    return-void
.end method
