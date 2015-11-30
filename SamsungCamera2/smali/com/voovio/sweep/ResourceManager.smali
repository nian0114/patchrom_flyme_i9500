.class Lcom/voovio/sweep/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/ResourceManager$DecodeImageTask;
    }
.end annotation


# static fields
.field static MAX_DISTANCE:I


# instance fields
.field private m_aNeighbours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field public m_aQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field private m_bPreloadedImages:Z

.field m_baImage:[B

.field m_bmImage:Landroid/graphics/Bitmap;

.field private m_bmOpts:Landroid/graphics/BitmapFactory$Options;

.field private m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

.field m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

.field m_oSweep:Lcom/voovio/sweep/Sweep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x2

    sput v0, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/ImageProvider;)V
    .locals 2
    .param p1, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    .line 44
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    .line 47
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    .line 50
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 51
    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 53
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    .line 54
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    return-void
.end method

.method private setState(Lcom/voovio/sweep/Voovio;I)V
    .locals 5
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;
    .param p2, "nTargetState"    # I

    .prologue
    const/4 v4, -0x1

    .line 231
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 232
    :try_start_0
    iput p2, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    .line 234
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "index":I
    if-ne v0, v4, :cond_1

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget v3, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    if-eq v1, v3, :cond_1

    .line 236
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    :goto_0
    monitor-exit v2

    .line 241
    return-void

    .line 238
    :cond_1
    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v1, :cond_2

    if-lez v0, :cond_0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 231
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearQueue()V
    .locals 4

    .prologue
    .line 246
    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v2}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "fromIndex":I
    :goto_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 249
    .local v1, "toIndex":I
    if-ge v0, v1, :cond_1

    .line 250
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 246
    :cond_1
    monitor-exit v3

    .line 252
    return-void

    .line 247
    .end local v0    # "fromIndex":I
    .end local v1    # "toIndex":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    .line 65
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 67
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    .line 69
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 71
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_0
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 75
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->cancel(Z)Z

    .line 77
    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    .line 78
    return-void
.end method

.method public fillTexturePool()V
    .locals 14

    .prologue
    const v13, 0x47012f00    # 33071.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 101
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v7, 0x0

    .local v7, "type":I
    const/4 v2, 0x0

    .line 106
    .local v2, "format":I
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v10, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 107
    .local v10, "config":Landroid/graphics/Bitmap$Config;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v10, v5, :cond_4

    .line 108
    const/16 v7, 0x1401

    .line 109
    const/16 v2, 0x1908

    .line 119
    :goto_1
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 120
    .local v3, "width":I
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 122
    .local v4, "height":I
    sget-boolean v5, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    if-eqz v5, :cond_3

    .line 123
    invoke-static {v3}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    invoke-static {v3}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v3

    .line 125
    :cond_2
    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 126
    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v4

    .line 130
    :cond_3
    sget v5, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v12, v5, 0x1

    .line 131
    .local v12, "nTextures":I
    new-array v9, v12, [I

    .line 133
    .local v9, "aTextureIDs":[I
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/voovio/sweep/TexturePool;->clear(Z)V

    .line 134
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-lt v11, v12, :cond_5

    .line 147
    const/4 v11, 0x0

    :goto_3
    if-lt v11, v12, :cond_7

    .line 150
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 111
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v9    # "aTextureIDs":[I
    .end local v11    # "i":I
    .end local v12    # "nTextures":I
    :cond_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v10, v5, :cond_0

    .line 112
    const v7, 0x8363

    .line 113
    const/16 v2, 0x1907

    .line 114
    goto :goto_1

    .line 135
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v9    # "aTextureIDs":[I
    .restart local v11    # "i":I
    .restart local v12    # "nTextures":I
    :cond_5
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->getTexture()I

    move-result v5

    aput v5, v9, v11

    .line 137
    aget v5, v9, v11

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 139
    const/16 v6, 0x2801

    sget-boolean v5, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x2703

    :goto_4
    int-to-float v5, v5

    invoke-static {v0, v6, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 140
    const/16 v5, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 141
    const/16 v5, 0x2802

    invoke-static {v0, v5, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 142
    const/16 v5, 0x2803

    invoke-static {v0, v5, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 144
    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 134
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 139
    :cond_6
    const/16 v5, 0x2601

    goto :goto_4

    .line 148
    :cond_7
    aget v5, v9, v11

    invoke-static {v5}, Lcom/voovio/sweep/TexturePool;->returnTexture(I)V

    .line 147
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method public getImage(Lcom/voovio/sweep/Voovio;)Z
    .locals 14
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 275
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    if-nez v10, :cond_0

    .line 276
    const/4 v10, 0x0

    .line 324
    :goto_0
    return v10

    .line 278
    :cond_0
    const/4 v0, 0x0

    .line 281
    .local v0, "bmImage":Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    if-eqz v10, :cond_3

    .line 282
    iget-object v10, p1, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iput-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 286
    :goto_1
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v11, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v11, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 288
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    const/4 v11, 0x0

    iget v12, p1, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iget-object v13, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_2

    .line 291
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eq v0, v10, :cond_1

    .line 292
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    const-string v10, "ResourceManager"

    const-string v11, "Bitmap was not reused in BitmapFactory.decodeByteArray() "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1
    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 324
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 284
    :cond_3
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iget-object v11, p1, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    iget v13, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    if-nez v0, :cond_4

    .line 301
    const-string v10, "ResourceManager"

    const-string v11, "IllegalArgumentException in BitmapFactory.decodeByteArray()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 305
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Error;
    instance-of v10, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v10, :cond_5

    .line 307
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v4, v10, v12

    .line 308
    .local v4, "maxMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v6, v10, v12

    .line 309
    .local v6, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v2, v10, v12

    .line 310
    .local v2, "freeMemory":J
    sub-long v8, v6, v2

    .line 312
    .local v8, "usedMemory":J
    const-string v10, "Memory Log (SweepView::ResourceManager)"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OutOfMemoryError decoding image "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v10, "Memory Log (SweepView::ResourceManager)"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Memory: Used ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Free ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Total ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Max ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 321
    .end local v2    # "freeMemory":J
    .end local v4    # "maxMemory":J
    .end local v6    # "totalMemory":J
    .end local v8    # "usedMemory":J
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 318
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_2
.end method

.method public loop(Z)V
    .locals 7
    .param p1, "bCreateTexture"    # Z

    .prologue
    .line 330
    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 346
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 350
    .local v1, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_5

    .line 351
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_3

    .line 352
    new-instance v2, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;-><init>(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    .line 353
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/voovio/sweep/Voovio;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 355
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 330
    .end local v0    # "i":I
    .end local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_0
    :goto_1
    monitor-exit v3

    .line 382
    return-void

    .line 336
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    .line 337
    .restart local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_2

    .line 338
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->DestroyHighResTexture(Z)V

    .line 339
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 341
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 335
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 357
    :cond_3
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_0

    .line 358
    if-eqz p1, :cond_4

    .line 359
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->CreateHighResTexture(Landroid/graphics/Bitmap;)V

    .line 365
    :goto_2
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 367
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 330
    .end local v0    # "i":I
    .end local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 361
    .restart local v0    # "i":I
    .restart local v1    # "oVoovio":Lcom/voovio/sweep/Voovio;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->getTexture()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->AssignHighResTexture(I)V

    .line 362
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->UpdateHighResTexture(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 371
    :cond_5
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_6

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_6

    .line 372
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    .line 374
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 376
    :cond_6
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v4, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v4, :cond_0

    .line 377
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public prepareVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1, "oVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 257
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    .line 259
    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v0, v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    .line 266
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/voovio/sweep/Voovio;->CreateHighResTexture(Landroid/graphics/Bitmap;)V

    .line 269
    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0
.end method

.method public setBitmapPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    return-void
.end method

.method public setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 7
    .param p1, "oCurVoovio"    # Lcom/voovio/sweep/Voovio;

    .prologue
    .line 206
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v5, :cond_1

    .line 226
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v6}, Lcom/voovio/sweep/Sweep;->getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V

    .line 211
    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 212
    :try_start_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v5}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v0, 0x0

    .line 213
    .local v0, "fromIndex":I
    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 214
    .local v4, "toIndex":I
    if-ge v0, v4, :cond_3

    .line 215
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 211
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 220
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    .line 221
    .local v3, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget v5, v3, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    sget v6, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    if-gt v5, v6, :cond_5

    .line 222
    sget v5, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-direct {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    .line 219
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "fromIndex":I
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .end local v4    # "toIndex":I
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 224
    .restart local v0    # "fromIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "oVoovio":Lcom/voovio/sweep/Voovio;
    .restart local v4    # "toIndex":I
    :cond_5
    sget v5, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    invoke-direct {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    goto :goto_2
.end method

.method public setImageProvider(Lcom/voovio/sweep/ImageProvider;)V
    .locals 0
    .param p1, "oImageProvider"    # Lcom/voovio/sweep/ImageProvider;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    .line 84
    return-void
.end method

.method public setImageSampleSize(I)V
    .locals 1
    .param p1, "imageSampleSize"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 90
    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 13
    .param p1, "oSweep"    # Lcom/voovio/sweep/Sweep;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/voovio/sweep/ResourceManager;->clearQueue()V

    .line 158
    iput-boolean v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    .line 159
    iput-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 162
    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    .line 165
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v8, :cond_5

    .line 166
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v11, 0x6

    if-eq v8, v11, :cond_6

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v11, 0x8

    if-eq v8, v11, :cond_6

    move v0, v10

    .line 167
    .local v0, "bPortrait":Z
    :goto_0
    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v8, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    .line 168
    .local v3, "imageWidth":I
    :goto_1
    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v8, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    .line 170
    .local v2, "imageHeight":I
    :goto_2
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v8, v9, :cond_1

    .line 171
    const/4 v6, 0x0

    .local v6, "shift":I
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 173
    .local v5, "sampleSize":I
    :cond_0
    shr-int/lit8 v5, v5, 0x1

    .line 174
    add-int/lit8 v6, v6, 0x1

    .line 172
    if-gt v5, v9, :cond_0

    .line 177
    shr-int/2addr v3, v6

    .line 178
    shr-int/2addr v2, v6

    .line 181
    .end local v5    # "sampleSize":I
    .end local v6    # "shift":I
    :cond_1
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v3, :cond_2

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v2, :cond_3

    .line 182
    :cond_2
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    iput-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 186
    :cond_3
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v8, :cond_4

    .line 187
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v8, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    .line 189
    :cond_4
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    iget-object v8, v8, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v8, :cond_9

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    .line 191
    iget-boolean v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    if-nez v8, :cond_5

    .line 192
    const/high16 v4, -0x80000000

    .line 193
    .local v4, "maxSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_a

    .line 198
    new-array v8, v4, [B

    iput-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    .line 201
    .end local v0    # "bPortrait":Z
    .end local v1    # "i":I
    .end local v2    # "imageHeight":I
    .end local v3    # "imageWidth":I
    .end local v4    # "maxSize":I
    :cond_5
    return-void

    :cond_6
    move v0, v9

    .line 166
    goto :goto_0

    .line 167
    .restart local v0    # "bPortrait":Z
    :cond_7
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v8, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    .line 168
    .restart local v3    # "imageWidth":I
    :cond_8
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v8, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    .restart local v2    # "imageHeight":I
    :cond_9
    move v8, v10

    .line 189
    goto :goto_3

    .line 194
    .restart local v1    # "i":I
    .restart local v4    # "maxSize":I
    :cond_a
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    iget v7, v8, Lcom/voovio/sweep/Voovio;->m_baSize:I

    .line 195
    .local v7, "size":I
    if-le v7, v4, :cond_b

    .line 196
    move v4, v7

    .line 193
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
