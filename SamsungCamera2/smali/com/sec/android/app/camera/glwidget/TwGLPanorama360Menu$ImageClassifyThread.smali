.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;
.super Ljava/lang/Thread;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageClassifyThread"
.end annotation


# instance fields
.field private mInputBmp:Landroid/graphics/Bitmap;

.field private mInputFormat:Ljava/lang/String;

.field private mInputHeight:I

.field private mInputRaw:[B

.field private mInputWidth:I

.field private mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;)V
    .locals 2
    .param p2, "buff"    # Landroid/graphics/Bitmap;
    .param p3, "is"    # Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3407
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread ImageClassifyThread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    .line 3409
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputBmp:Landroid/graphics/Bitmap;

    .line 3410
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3422
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread run "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    if-nez v0, :cond_1

    .line 3424
    :cond_0
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread run error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :goto_0
    return-void

    .line 3427
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mMorphoImageStitcher:Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputWidth:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputHeight:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputFormat:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/camera/panorama360/core/MorphoImageStitcher;->convertImage(Landroid/graphics/Bitmap;[BIIILjava/lang/String;)I

    move-result v7

    .line 3428
    .local v7, "ret":I
    if-eqz v7, :cond_2

    .line 3429
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMorphoImageStitcher.convertImage error ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :cond_2
    const-string v0, "somp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputBmp:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/sec/vips/indooroutdoor/communicator/IndoorOutdoorJniBinder;->classify(Landroid/graphics/Bitmap;)D

    move-result-wide v2

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6702(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;D)D

    .line 3435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    .line 3436
    const-string v0, "TwGLPanorama360Menu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageClassifyThread run ClassifyResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->mImageClassifyResult:D
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;->access$6700(Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInputData([BIILjava/lang/String;)V
    .locals 2
    .param p1, "frame"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 3413
    const-string v0, "TwGLPanorama360Menu"

    const-string v1, "ImageClassifyThread setInputData "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputRaw:[B

    .line 3415
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputWidth:I

    .line 3416
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputHeight:I

    .line 3417
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$ImageClassifyThread;->mInputFormat:Ljava/lang/String;

    .line 3418
    return-void
.end method
