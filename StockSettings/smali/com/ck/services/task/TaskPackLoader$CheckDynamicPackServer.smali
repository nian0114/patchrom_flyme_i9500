.class Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;
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
    name = "CheckDynamicPackServer"
.end annotation


# instance fields
.field private mServer:Lcom/ck/services/modules/INetClient$Server;

.field final synthetic this$0:Lcom/ck/services/task/TaskPackLoader;


# direct methods
.method private constructor <init>(Lcom/ck/services/task/TaskPackLoader;)V
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->mServer:Lcom/ck/services/modules/INetClient$Server;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;-><init>(Lcom/ck/services/task/TaskPackLoader;)V

    return-void
.end method

.method private constructRequest()Ljava/lang/String;
    .locals 6

    .prologue
    .line 343
    :try_start_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 344
    .local v2, "randKey":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ck2@13!4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ck/services/datas/security/Guardian;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "sign":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 346
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "op"

    const/16 v5, 0x3ea

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v4, "cid"

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v5}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v5

    invoke-interface {v5}, Lcom/ck/services/statistics/IStatistics;->getShellInfo()Lcom/ck/services/statistics/IStatistics$ShellInfo;

    move-result-object v5

    iget v5, v5, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mCustId:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v4, "vcode"

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v5}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v5

    invoke-interface {v5}, Lcom/ck/services/statistics/IStatistics;->getShellInfo()Lcom/ck/services/statistics/IStatistics$ShellInfo;

    move-result-object v5

    iget v5, v5, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mVersionCode:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v4, "pid"

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v5}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v5

    invoke-interface {v5}, Lcom/ck/services/statistics/IStatistics;->getShellInfo()Lcom/ck/services/statistics/IStatistics$ShellInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/ck/services/statistics/IStatistics$ShellInfo;->mAppletId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v4, "md"

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mLocalPackMD5:Ljava/lang/String;
    invoke-static {v5}, Lcom/ck/services/task/TaskPackLoader;->access$4(Lcom/ck/services/task/TaskPackLoader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v4, "sign"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v4, "ts"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 357
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "randKey":I
    .end local v3    # "sign":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 357
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseResponse(Ljava/lang/String;)Lcom/ck/services/task/TaskPackLoader$Pack;
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 372
    const/4 v2, 0x0

    .line 375
    .local v2, "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-object v6

    .line 379
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v5, "rspObj":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 381
    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 382
    .local v0, "code":I
    if-nez v0, :cond_1

    .line 383
    const-string v6, "pack"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 384
    .local v4, "packObj":Lorg/json/JSONObject;
    new-instance v3, Lcom/ck/services/task/TaskPackLoader$Pack;

    iget-object v6, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/ck/services/task/TaskPackLoader$Pack;-><init>(Lcom/ck/services/task/TaskPackLoader;Lcom/ck/services/task/TaskPackLoader$Pack;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v2    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    .local v3, "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    :try_start_1
    const-string v6, "size"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, v3, Lcom/ck/services/task/TaskPackLoader$Pack;->mSize:J

    .line 386
    const-string v6, "md"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/ck/services/task/TaskPackLoader$Pack;->mMD5:Ljava/lang/String;

    .line 387
    const-string v6, "address"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/ck/services/task/TaskPackLoader$Pack;->mAddress:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v0    # "code":I
    .end local v3    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    .end local v4    # "packObj":Lorg/json/JSONObject;
    .end local v5    # "rspObj":Lorg/json/JSONObject;
    .restart local v2    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    :cond_1
    :goto_1
    move-object v6, v2

    .line 394
    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 390
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    .restart local v0    # "code":I
    .restart local v3    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    .restart local v4    # "packObj":Lorg/json/JSONObject;
    .restart local v5    # "rspObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    .restart local v2    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->constructRequest()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "request":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 401
    const-string v4, "TaskPackLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mNetClient:Lcom/ck/services/modules/INetClient;
    invoke-static {v4}, Lcom/ck/services/task/TaskPackLoader;->access$3(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/modules/INetClient;

    move-result-object v4

    iget-object v5, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->mServer:Lcom/ck/services/modules/INetClient$Server;

    invoke-interface {v4, v5, v2}, Lcom/ck/services/modules/INetClient;->tcpRequest(Lcom/ck/services/modules/INetClient$Server;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "response":Ljava/lang/String;
    const-string v4, "TaskPackLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v3}, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->parseResponse(Ljava/lang/String;)Lcom/ck/services/task/TaskPackLoader$Pack;

    move-result-object v1

    .line 405
    .local v1, "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    if-eqz v1, :cond_0

    .line 406
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 407
    .local v0, "msg":Landroid/os/Message;
    const/16 v4, 0x34

    iput v4, v0, Landroid/os/Message;->what:I

    .line 408
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    iget-object v4, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->this$0:Lcom/ck/services/task/TaskPackLoader;

    # getter for: Lcom/ck/services/task/TaskPackLoader;->mShell:Lcom/ck/services/statistics/IStatistics;
    invoke-static {v4}, Lcom/ck/services/task/TaskPackLoader;->access$2(Lcom/ck/services/task/TaskPackLoader;)Lcom/ck/services/statistics/IStatistics;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/ck/services/statistics/IStatistics;->sendMessage(Landroid/os/Message;)V

    .line 412
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pack":Lcom/ck/services/task/TaskPackLoader$Pack;
    .end local v3    # "response":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setServer(Lcom/ck/services/modules/INetClient$Server;)V
    .locals 0
    .param p1, "svr"    # Lcom/ck/services/modules/INetClient$Server;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ck/services/task/TaskPackLoader$CheckDynamicPackServer;->mServer:Lcom/ck/services/modules/INetClient$Server;

    .line 328
    return-void
.end method
