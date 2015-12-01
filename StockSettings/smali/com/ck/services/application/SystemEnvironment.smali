.class public Lcom/ck/services/application/SystemEnvironment;
.super Ljava/lang/Object;
.source "SystemEnvironment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemEnvironment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDFreeSize()J
    .locals 10

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 18
    const-wide/16 v6, 0x0

    .line 27
    .local v0, "blockSize":J
    .local v2, "freeBlocks":J
    .local v4, "path":Ljava/io/File;
    .local v5, "sf":Landroid/os/StatFs;
    :goto_0
    return-wide v6

    .line 20
    .end local v0    # "blockSize":J
    .end local v2    # "freeBlocks":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "sf":Landroid/os/StatFs;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 21
    .restart local v4    # "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 23
    .restart local v5    # "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 25
    .restart local v0    # "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v2, v6

    .line 26
    .restart local v2    # "freeBlocks":J
    const-string v6, "SystemEnvironment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SD\u7a7a\u95f4\u53ef\u7528\u5927\u5c0f:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-long v8, v2, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    mul-long v6, v2, v0

    goto :goto_0
.end method

.method public static getSystemFreeSize()J
    .locals 10

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    .line 32
    .local v4, "root":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 33
    .local v5, "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 34
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 35
    .local v0, "availCount":J
    const-string v6, "SystemEnvironment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u7cfb\u7edf\u7a7a\u95f4\u53ef\u7528\u5927\u5c0f:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "byte"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ck/services/application/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    mul-long v6, v0, v2

    return-wide v6
.end method
