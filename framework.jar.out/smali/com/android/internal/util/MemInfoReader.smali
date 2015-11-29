.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mBuddyInfos:[J

.field final mInfos:[J

.field mbuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 28
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    .line 29
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 156
    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    .line 157
    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    .line 158
    move v0, p2

    .line 159
    .local v0, "start":I
    add-int/lit8 p2, p2, 0x1

    .line 161
    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    .line 162
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 165
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .line 169
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :goto_2
    return-wide v2

    .line 167
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 169
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private findKeyword([BIILjava/lang/String;)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "bound"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    .local v0, "N":I
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 145
    .local v1, "cFirst":C
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 146
    aget-byte v3, p1, v2

    if-ne v3, v1, :cond_0

    .line 147
    invoke-direct {p0, p1, v2, p4}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    add-int v3, v2, v0

    .line 152
    :goto_1
    return v3

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 131
    .local v0, "N":I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 135
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBuffersSizeKb()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCachedSize()J
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getFragRate()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .local v6, "totalCombination":J
    const-wide/16 v4, 0x0

    .line 58
    .local v4, "prevCombination":J
    const-wide/16 v0, 0x0

    .line 61
    .local v0, "fragMem":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    aget-wide v8, v3, v2

    add-long/2addr v8, v4

    div-long v4, v8, v10

    .line 63
    add-long/2addr v6, v4

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const-wide/16 v4, 0x0

    .line 69
    const/16 v2, 0xd

    :goto_1
    const/16 v3, 0x16

    if-gt v2, v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    aget-wide v8, v3, v2

    add-long/2addr v8, v4

    div-long v4, v8, v10

    .line 71
    add-long/2addr v6, v4

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_1
    const-wide/16 v8, 0x1000

    mul-long v0, v6, v8

    .line 76
    return-wide v0
.end method

.method public getFreeSize()J
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getShmemSizeKb()J
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSlabSizeKb()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapFreeSizeKb()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getUssByPid(I)J
    .locals 17
    .param p1, "pid"    # I

    .prologue
    .line 173
    const-wide/16 v6, 0x0

    .line 174
    .local v6, "resident":J
    const-wide/16 v8, 0x0

    .line 175
    .local v8, "shared":J
    const-wide/16 v12, 0x0

    .line 177
    .local v12, "uss":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/proc/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/statm"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 180
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 182
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    const/4 v15, 0x0

    const/16 v16, 0x200

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 184
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 186
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/util/MemInfoReader;->mbuffer:[B

    invoke-direct {v10, v14}, Ljava/lang/String;-><init>([B)V

    .line 187
    .local v10, "str":Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, "subs":[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    mul-int/lit16 v14, v14, 0x1000

    int-to-long v6, v14

    .line 190
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    mul-int/lit16 v14, v14, 0x1000

    int-to-long v8, v14

    .line 191
    sub-long v12, v6, v8

    .line 195
    if-eqz v3, :cond_0

    .line 197
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 203
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "subs":[Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-wide v12

    .line 193
    :catch_0
    move-exception v14

    .line 195
    :goto_2
    if-eqz v2, :cond_1

    .line 197
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 201
    :cond_1
    :goto_3
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 195
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v2, :cond_2

    .line 197
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 201
    :cond_2
    :goto_5
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v14

    .line 198
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "subs":[Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_0

    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "subs":[Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v14

    goto :goto_3

    :catch_3
    move-exception v15

    goto :goto_5

    .line 195
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 193
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v14

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public getWatermark()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x4

    .line 207
    const-wide/16 v6, 0x0

    .line 211
    .local v6, "watermark":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 212
    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 214
    .local v2, "is":Ljava/io/FileInputStream;
    const/16 v5, 0x800

    :try_start_0
    new-array v0, v5, [B

    .line 215
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/FileInputStream;

    const-string v5, "/proc/zoneinfo"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    const/16 v8, 0x800

    :try_start_1
    invoke-virtual {v3, v0, v5, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 217
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "i":I
    const/16 v5, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 222
    const/16 v5, 0x800

    const-string v8, "Normal"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 224
    const/16 v5, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    const/16 v5, 0x800

    const-string/jumbo v8, "low"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 226
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 233
    const/16 v5, 0x800

    const-string/jumbo v8, "zone"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 234
    const/16 v5, 0x800

    const-string v8, "HighMem"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 236
    const/16 v5, 0x800

    const-string/jumbo v8, "pages"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 237
    const/16 v5, 0x800

    const-string/jumbo v8, "low"

    invoke-direct {p0, v0, v1, v5, v8}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 247
    :cond_1
    if-eqz v3, :cond_2

    .line 249
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    :cond_2
    :goto_0
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .line 255
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-wide v6

    .line 244
    :catch_0
    move-exception v5

    .line 247
    :goto_2
    if-eqz v2, :cond_3

    .line 249
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    :cond_3
    :goto_3
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 245
    :catch_1
    move-exception v5

    .line 247
    :goto_4
    if-eqz v2, :cond_4

    .line 249
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 253
    :cond_4
    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v2, :cond_5

    .line 249
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 253
    :cond_5
    :goto_7
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    .line 250
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    goto :goto_3

    :catch_4
    move-exception v5

    goto :goto_5

    :catch_5
    move-exception v8

    goto :goto_7

    .line 247
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_6

    .line 245
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 244
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public getZramTotalSizeKb()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readBuddyInfo()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 49
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mBuddyInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getBuddyInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public readMemInfo()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 37
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
