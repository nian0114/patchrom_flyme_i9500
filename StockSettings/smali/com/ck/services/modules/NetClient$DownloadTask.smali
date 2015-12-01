.class Lcom/ck/services/modules/NetClient$DownloadTask;
.super Ljava/lang/Object;
.source "NetClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ck/services/modules/NetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# static fields
.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x2710

.field private static final DEFAULT_READ_TIMEOUT:I = 0x4e20

.field private static final DEFAULT_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DownloadTask"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".temp"


# instance fields
.field private mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

.field private mDownloadedSize:J

.field private mListener:Lcom/ck/services/statistics/ITaskListener;

.field private mTargetObjectFilePath:Ljava/lang/String;

.field private mTargetObjectSize:J

.field private mTargetObjectTempFilePath:Ljava/lang/String;

.field private mTargetUrl:Ljava/net/URL;

.field final synthetic this$0:Lcom/ck/services/modules/NetClient;


# direct methods
.method public constructor <init>(Lcom/ck/services/modules/NetClient;Lcom/ck/services/modules/INetClient$DownloadRequest;Lcom/ck/services/statistics/ITaskListener;)V
    .locals 4
    .param p2, "dataInfo"    # Lcom/ck/services/modules/INetClient$DownloadRequest;
    .param p3, "listener"    # Lcom/ck/services/statistics/ITaskListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 170
    iput-object p1, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->this$0:Lcom/ck/services/modules/NetClient;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object v0, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    .line 161
    iput-object v0, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mListener:Lcom/ck/services/statistics/ITaskListener;

    .line 163
    iput-object v0, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetUrl:Ljava/net/URL;

    .line 164
    iput-object v0, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectTempFilePath:Ljava/lang/String;

    .line 166
    iput-wide v2, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    .line 167
    iput-wide v2, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDownloadedSize:J

    .line 171
    if-nez p3, :cond_0

    .line 172
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iput-object p2, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    .line 176
    iput-object p3, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mListener:Lcom/ck/services/statistics/ITaskListener;

    .line 177
    return-void
.end method

.method private doPreCheck()I
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 293
    const-string v5, "DownloadTask"

    const-string v6, "download task doPreCheck target object"

    invoke-static {v5, v6}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    if-eqz v5, :cond_5

    .line 296
    :try_start_0
    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    iget-object v3, v5, Lcom/ck/services/modules/INetClient$DownloadRequest;->url:Ljava/lang/String;

    .line 297
    .local v3, "url":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetUrl:Ljava/net/URL;

    .line 298
    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    iget-wide v6, v5, Lcom/ck/services/modules/INetClient$DownloadRequest;->targetSize:J

    iput-wide v6, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    .line 299
    const-string v5, "DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "target size ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/ck/services/application/SystemEnvironment;->getSDFreeSize()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    iget-wide v10, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 301
    invoke-static {}, Lcom/ck/services/application/SystemEnvironment;->getSystemFreeSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    invoke-static {}, Lcom/ck/services/application/SystemEnvironment;->getSDFreeSize()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 302
    const/4 v4, 0x2

    .line 327
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 305
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    iget-object v6, v6, Lcom/ck/services/modules/INetClient$DownloadRequest;->localPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    iget-object v6, v6, Lcom/ck/services/modules/INetClient$DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    .line 306
    const-string v5, "DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "target file path"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    .line 310
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectTempFilePath:Ljava/lang/String;

    .line 312
    iget-object v5, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "targetFolder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "folderChecker":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_0

    .line 315
    :cond_4
    const/4 v4, 0x5

    goto/16 :goto_0

    .line 317
    .end local v1    # "folderChecker":Ljava/io/File;
    .end local v2    # "targetFolder":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x4

    goto/16 :goto_0

    .line 319
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 321
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v4, 0x6

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 181
    const/16 v17, 0x0

    .line 182
    .local v17, "retryCount":I
    invoke-direct/range {p0 .. p0}, Lcom/ck/services/modules/NetClient$DownloadTask;->doPreCheck()I

    move-result v12

    .line 183
    .local v12, "preCheckResult":I
    const-wide/16 v18, 0x0

    .line 184
    .local v18, "startPos":J
    const/4 v8, 0x0

    .line 185
    .local v8, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 186
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v14, 0x0

    .line 187
    .local v14, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v4, 0x0

    .line 188
    .local v4, "buf":[B
    const/4 v9, 0x0

    .line 189
    .local v9, "lastProgress":I
    const/4 v13, 0x0

    .line 191
    .local v13, "progress":I
    const-string v21, "DownloadTask"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "precheck result : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/ck/services/application/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz v12, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mListener:Lcom/ck/services/statistics/ITaskListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->notifyId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v12, v1}, Lcom/ck/services/statistics/ITaskListener;->onPreExecute(ILjava/lang/Object;)V

    .line 290
    :goto_0
    return-void

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mListener:Lcom/ck/services/statistics/ITaskListener;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->notifyId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Lcom/ck/services/statistics/ITaskListener;->onPreExecute(ILjava/lang/Object;)V

    .line 196
    const/16 v16, 0x7

    .local v16, "result":I
    move-object v15, v14

    .line 199
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v15, "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v10, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->notifyId:I

    .line 201
    .local v10, "notifyId":I
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectTempFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v20, "tempFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 203
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 206
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetUrl:Ljava/net/URL;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 207
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 208
    const/16 v21, 0x4e20

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 210
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 211
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 212
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    move-wide/from16 v22, v0

    cmp-long v21, v18, v22

    if-ltz v21, :cond_8

    .line 213
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 214
    const-wide/16 v18, 0x0

    .line 220
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 221
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v21

    const/16 v22, 0xce

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_c

    .line 222
    const/16 v16, 0x7

    .line 226
    :cond_3
    :goto_3
    new-instance v14, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectTempFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "rwd"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    .end local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 228
    const/16 v21, 0x2800

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 230
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ck/services/modules/NetClient$DownloadTask;->mDownloadedSize:J

    .line 231
    :cond_4
    :goto_4
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "numread":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_d

    .line 243
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_e

    .line 244
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    const/16 v16, 0x7

    .line 268
    :goto_5
    if-eqz v5, :cond_5

    .line 270
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    const/4 v5, 0x0

    .line 278
    :cond_5
    :goto_6
    if-eqz v14, :cond_6

    .line 279
    :try_start_3
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    :cond_6
    if-eqz v8, :cond_7

    .line 282
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 288
    .end local v10    # "notifyId":I
    .end local v11    # "numread":I
    .end local v20    # "tempFile":Ljava/io/File;
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mListener:Lcom/ck/services/statistics/ITaskListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDataInfo:Lcom/ck/services/modules/INetClient$DownloadRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ck/services/modules/INetClient$DownloadRequest;->notifyId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ck/services/statistics/ITaskListener;->onExecuted(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v10    # "notifyId":I
    .restart local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v20    # "tempFile":Ljava/io/File;
    :cond_8
    :try_start_4
    const-string v21, "Range"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "bytes="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 253
    .end local v10    # "notifyId":I
    .end local v20    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v14, v15

    .line 254
    .end local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v6, "e":Ljava/net/MalformedURLException;
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 255
    const/16 v16, 0x1

    .line 268
    if-eqz v5, :cond_9

    .line 270
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 271
    const/4 v5, 0x0

    .line 278
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :cond_9
    :goto_9
    if-eqz v14, :cond_a

    .line 279
    :try_start_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    :cond_a
    if-eqz v8, :cond_b

    .line 282
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 287
    :cond_b
    :goto_a
    const/16 v21, 0x3

    .line 197
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    move-object v15, v14

    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 223
    .restart local v10    # "notifyId":I
    .restart local v20    # "tempFile":Ljava/io/File;
    :cond_c
    :try_start_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v21

    const/16 v22, 0x194

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 224
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 232
    .end local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "numread":I
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_d
    const/16 v21, 0x0

    :try_start_9
    move/from16 v0, v21

    invoke-virtual {v14, v4, v0, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 233
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDownloadedSize:J

    move-wide/from16 v22, v0

    int-to-long v0, v11

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ck/services/modules/NetClient$DownloadTask;->mDownloadedSize:J

    .line 234
    if-lez v11, :cond_4

    .line 235
    move v9, v13

    .line 236
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mDownloadedSize:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x64

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectSize:J

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v13, v0

    .line 237
    if-le v13, v9, :cond_4

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mListener:Lcom/ck/services/statistics/ITaskListener;

    move-object/from16 v21, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v10, v1}, Lcom/ck/services/statistics/ITaskListener;->onUpdate(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 253
    .end local v11    # "numread":I
    :catch_1
    move-exception v6

    goto :goto_8

    .line 247
    .restart local v11    # "numread":I
    :cond_e
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 248
    const/4 v14, 0x0

    .line 249
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ck/services/modules/NetClient$DownloadTask;->mTargetObjectFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 250
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 272
    :catch_2
    move-exception v6

    .line 274
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 283
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 284
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 272
    .end local v10    # "notifyId":I
    .end local v11    # "numread":I
    .end local v20    # "tempFile":Ljava/io/File;
    .local v6, "e":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v6

    .line 274
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 283
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 284
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 256
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v6

    move-object v14, v15

    .line 257
    .end local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_b
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 258
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    .line 259
    add-int/lit8 v17, v17, 0x1

    .line 261
    const-wide/16 v22, 0x7d0

    :try_start_b
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 268
    :goto_c
    if-eqz v5, :cond_f

    .line 270
    :try_start_c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 271
    const/4 v5, 0x0

    .line 278
    :cond_f
    :goto_d
    if-eqz v14, :cond_10

    .line 279
    :try_start_d
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    :cond_10
    if-eqz v8, :cond_b

    .line 282
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_a

    .line 283
    :catch_7
    move-exception v6

    .line 284
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 262
    .local v6, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v7

    .line 263
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_e
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_c

    .line 267
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v21

    .line 268
    :goto_e
    if-eqz v5, :cond_11

    .line 270
    :try_start_f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 271
    const/4 v5, 0x0

    .line 278
    :cond_11
    :goto_f
    if-eqz v14, :cond_12

    .line 279
    :try_start_10
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    :cond_12
    if-eqz v8, :cond_13

    .line 282
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 286
    :cond_13
    :goto_10
    throw v21

    .line 272
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v6

    .line 274
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 268
    :cond_14
    if-eqz v5, :cond_15

    .line 270
    :try_start_11
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 271
    const/4 v5, 0x0

    .line 278
    :cond_15
    :goto_11
    if-eqz v14, :cond_16

    .line 279
    :try_start_12
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    :cond_16
    if-eqz v8, :cond_b

    .line 282
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_a

    .line 283
    :catch_a
    move-exception v6

    .line 284
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 272
    .local v6, "e":Ljava/lang/Exception;
    :catch_b
    move-exception v6

    .line 274
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 272
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v6

    .line 274
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 283
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v6

    .line 284
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 267
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v21

    move-object v14, v15

    .end local v15    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_e

    .line 256
    .restart local v10    # "notifyId":I
    .restart local v20    # "tempFile":Ljava/io/File;
    :catch_e
    move-exception v6

    goto :goto_b
.end method
