.class Lcom/voovio/sweep/Sweep$DecodeImageRunnable;
.super Ljava/lang/Object;
.source "Sweep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voovio/sweep/Sweep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeImageRunnable"
.end annotation


# instance fields
.field private m_nImageIndex:I

.field private m_nLowResSampleSize:I

.field private m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

.field final synthetic this$0:Lcom/voovio/sweep/Sweep;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/Sweep;ILcom/voovio/sweep/ResourceManager;I)V
    .locals 0
    .param p2, "nImageIndex"    # I
    .param p3, "oResourceManager"    # Lcom/voovio/sweep/ResourceManager;
    .param p4, "nLowResSampleSize"    # I

    .prologue
    .line 799
    iput-object p1, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput p2, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_nImageIndex:I

    .line 801
    iput-object p3, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    .line 802
    iput p4, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_nLowResSampleSize:I

    .line 803
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 810
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 811
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 812
    iget v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_nLowResSampleSize:I

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 813
    iget-object v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_bmImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 814
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iput-object v1, v5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 816
    const/4 v2, 0x0

    .line 819
    .local v2, "bmDecodedImage":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    iget v7, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_nImageIndex:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voovio/sweep/Voovio;

    .line 820
    .local v4, "oVoovio":Lcom/voovio/sweep/Voovio;
    iget-object v6, v4, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v6, :cond_1

    .line 821
    iget-object v0, v4, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    .line 822
    .local v0, "baImage":[B
    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_baSize:I

    invoke-static {v0, v9, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 830
    :goto_0
    if-eq v2, v1, :cond_0

    .line 831
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 834
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_decodedBitmaps:Ljava/util/concurrent/SynchronousQueue;

    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    iget v8, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_nImageIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_1
    return-void

    .line 824
    .end local v0    # "baImage":[B
    :cond_1
    iget-object v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 825
    .restart local v0    # "baImage":[B
    iget-object v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;

    iget-object v6, v6, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iget-object v7, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    iget-object v7, v7, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget v8, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->m_nImageIndex:I

    invoke-virtual {v6, v7, v0, v8}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V

    .line 826
    iget v6, v4, Lcom/voovio/sweep/Voovio;->m_baSize:I

    invoke-static {v0, v9, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 827
    iget-object v6, p0, Lcom/voovio/sweep/Sweep$DecodeImageRunnable;->this$0:Lcom/voovio/sweep/Sweep;

    iget-object v6, v6, Lcom/voovio/sweep/Sweep;->m_baImages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
    :catch_0
    move-exception v3

    .line 836
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
