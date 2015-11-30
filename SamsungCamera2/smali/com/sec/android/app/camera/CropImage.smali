.class public Lcom/sec/android/app/camera/CropImage;
.super Lcom/sec/android/app/camera/MonitoredActivity;
.source "CropImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field final MAX_DELAY_FOR_ROTATION:I

.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field public mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field public mBlinkRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/sec/android/app/camera/HighlightView;

.field private mDateTaken:J

.field private mDiscard:Landroid/widget/Button;

.field public mFromApp:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mImageView:Lcom/sec/android/app/camera/CropImageView;

.field private mLatitude:D

.field private mLongitude:D

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field public mRectCrop:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSave:Landroid/widget/Button;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mSetWallpaper:Z

.field public mSkipSaveDiscard:Z

.field mWaitingToPick:Z

.field private mWeather:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity;-><init>()V

    .line 67
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 69
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSkipSaveDiscard:Z

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 108
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/camera/CropImage;->MAX_DELAY_FOR_ROTATION:I

    .line 639
    new-instance v0, Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CropImage$7;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/CropImage;

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    return v0
.end method

.method private onSaveClicked()V
    .locals 21

    .prologue
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 236
    .local v16, "myExtras":Landroid/os/Bundle;
    if-eqz v16, :cond_2

    const-string v1, "attach-video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const-string v1, "CropImage"

    const-string v3, "Attach = Video"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 276
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_6

    .line 370
    :cond_1
    :goto_1
    return-void

    .line 242
    :cond_2
    if-eqz v16, :cond_3

    const-string v1, "return-uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_3

    .line 243
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = uri"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v13, "extras":Landroid/os/Bundle;
    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_0

    .line 250
    .end local v13    # "extras":Landroid/os/Bundle;
    :cond_3
    if-eqz v16, :cond_4

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_4

    .line 251
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 253
    .restart local v13    # "extras":Landroid/os/Bundle;
    const-string v1, "bitmap-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 258
    .end local v13    # "extras":Landroid/os/Bundle;
    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_5

    .line 259
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 261
    .restart local v13    # "extras":Landroid/os/Bundle;
    const-string v1, "specify-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 267
    .end local v13    # "extras":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 268
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 280
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    if-nez v1, :cond_1

    .line 282
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    .line 288
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-nez v1, :cond_9

    .line 291
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 293
    .local v2, "croppedImage":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 295
    .local v9, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 296
    .local v19, "srcRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    invoke-direct {v10, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    .local v10, "dstRect":Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v11, v1, 0x2

    .line 299
    .local v11, "dx":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v12, v1, 0x2

    .line 302
    .local v12, "dy":I
    const/4 v1, 0x0

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 305
    const/4 v1, 0x0

    neg-int v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    neg-int v4, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 348
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v19    # "srcRect":Landroid/graphics/Rect;
    :cond_7
    :goto_2
    if-eqz v16, :cond_c

    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 349
    :cond_8
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 351
    .restart local v13    # "extras":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 352
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_1

    .line 310
    .end local v2    # "croppedImage":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "dstRect":Landroid/graphics/Rect;
    .end local v13    # "extras":Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 312
    .local v18, "r":Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 313
    .local v20, "width":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 317
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    move/from16 v0, v20

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    .restart local v2    # "croppedImage":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v1, v3, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 324
    .restart local v10    # "dstRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 326
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_a

    .line 332
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 334
    .local v17, "p":Landroid/graphics/Path;
    move/from16 v0, v20

    int-to-float v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    int-to-float v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 336
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 337
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 341
    .end local v8    # "c":Landroid/graphics/Canvas;
    .end local v17    # "p":Landroid/graphics/Path;
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-eqz v1, :cond_7

    .line 342
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/camera/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_2

    .line 317
    .end local v2    # "croppedImage":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "dstRect":Landroid/graphics/Rect;
    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 357
    .end local v14    # "height":I
    .end local v18    # "r":Landroid/graphics/Rect;
    .end local v20    # "width":I
    .restart local v2    # "croppedImage":Landroid/graphics/Bitmap;
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "dstRect":Landroid/graphics/Rect;
    :cond_c
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object v7, v2

    .line 359
    .local v7, "b":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v1, :cond_d

    const v15, 0x7f0c0182

    .line 362
    .local v15, "msdId":I
    :goto_4
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/CropImage$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/sec/android/app/camera/CropImage$2;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 359
    .end local v15    # "msdId":I
    :cond_d
    const v15, 0x7f0c0015

    goto :goto_4
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 25
    .param p1, "croppedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 374
    const/16 v23, 0x0

    .line 376
    .local v23, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v23

    .line 377
    if-eqz v23, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_0
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 386
    :goto_0
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v19, "extras":Landroid/os/Bundle;
    const-string v2, "takenTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 388
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 389
    :cond_1
    const-string v2, "latitude"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 390
    const-string v2, "longitude"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 392
    :cond_2
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 459
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v23    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :goto_1
    move-object/from16 v13, p1

    .line 460
    .local v13, "b":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/camera/CropImage$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/sec/android/app/camera/CropImage$3;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 469
    return-void

    .line 380
    .end local v13    # "b":Landroid/graphics/Bitmap;
    .restart local v23    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v17

    .line 382
    .local v17, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v2, "CropImage"

    const-string v3, "Cannot open file"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v17    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 394
    .end local v23    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v2, :cond_5

    .line 396
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 398
    :catch_1
    move-exception v16

    .line 399
    .local v16, "e":Ljava/io/IOException;
    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    goto :goto_1

    .line 404
    .end local v16    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_3
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 405
    .restart local v19    # "extras":Landroid/os/Bundle;
    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v22, "oldPath":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v15, "directory":Ljava/io/File;
    const/16 v24, 0x0

    .line 411
    .local v24, "x":I
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    .line 412
    .local v20, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 414
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v14, "candidate":Ljava/lang/StringBuilder;
    :cond_6
    add-int/lit8 v24, v24, 0x1

    .line 419
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v2, "-"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const-string v2, ".jpg"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    new-instance v2, Ljava/io/File;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v18

    .line 426
    .local v18, "exists":Z
    if-nez v18, :cond_6

    .line 432
    const/4 v2, 0x1

    :try_start_4
    new-array v11, v2, [I

    .line 433
    .local v11, "degree":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/CropImage;->mWeather:I

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[II)Landroid/net/Uri;

    move-result-object v21

    .line 443
    .local v21, "newUri":Landroid/net/Uri;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 444
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 448
    .end local v11    # "degree":[I
    .end local v21    # "newUri":Landroid/net/Uri;
    :catch_2
    move-exception v17

    .line 451
    .local v17, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CropImage"

    const-string v3, "store image fail, continue anyway"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 453
    .end local v14    # "candidate":Ljava/lang/StringBuilder;
    .end local v15    # "directory":Ljava/io/File;
    .end local v17    # "ex":Ljava/lang/Exception;
    .end local v18    # "exists":Z
    .end local v19    # "extras":Landroid/os/Bundle;
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v22    # "oldPath":Ljava/io/File;
    .end local v24    # "x":I
    :catch_3
    move-exception v17

    .line 455
    .restart local v17    # "ex":Ljava/lang/Exception;
    const-string v2, "CropImage"

    const-string v3, "file operator fail, maybe"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CropImage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CropImage$1;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public getBlinkRectCnt()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CropImage;->requestWindowFeature(I)Z

    .line 115
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CropImage;->setContentView(I)V

    .line 117
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CropImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 119
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 622
    const-string v0, "CropImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->clear()V

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 636
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onDestroy()V

    .line 637
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 163
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MonitoredActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v0, "result":Landroid/content/Intent;
    const-string v2, "delete-image"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 615
    const-string v0, "CropImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onPause()V

    .line 618
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const v13, 0x7f0e0012

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 473
    const-string v8, "CropImage"

    const-string v9, "onResume"

    invoke-static {v8, v9}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onResume()V

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 479
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 481
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 482
    const-string v8, "circleCrop"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 483
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 484
    iput v10, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 485
    iput v10, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 490
    :cond_0
    :goto_0
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 491
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_8

    .line 492
    const-string v8, "outputFormat"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "outputFormatString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 494
    invoke-static {v5}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 500
    .end local v5    # "outputFormatString":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "data"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 501
    const-string v8, "aspectX"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 502
    const-string v8, "aspectY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 503
    const-string v8, "outputX"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    .line 504
    const-string v8, "outputY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    .line 505
    const-string v8, "scale"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    .line 506
    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 511
    const-string v8, "video-thumbnail"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 512
    const-string v8, "fromApp"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 513
    const-string v8, "blink-rect"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 514
    const-string v8, "skip-savediscard"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSkipSaveDiscard:Z

    .line 516
    const-string v8, "latitude"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    .line 517
    const-string v8, "longitude"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    .line 518
    const-string v8, "takenTime"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    .line 519
    const-string v8, "weather"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mWeather:I

    .line 522
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_4

    .line 523
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 524
    .local v6, "target":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v8, :cond_3

    .line 525
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v8}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 527
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v6, v10}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 528
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v8, v6}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 529
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-eqz v8, :cond_4

    .line 536
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v9, -0x1

    const/high16 v10, 0x100000

    invoke-interface {v8, v9, v10}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v6    # "target":Landroid/net/Uri;
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_6

    .line 545
    const/4 v7, 0x0

    .line 547
    .local v7, "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 548
    if-eqz v7, :cond_5

    .line 549
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/16 v9, 0x500

    const/16 v10, 0x3c0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :cond_5
    if-eqz v7, :cond_6

    :try_start_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 563
    .end local v7    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_a

    .line 564
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 611
    :goto_4
    return-void

    .line 486
    :cond_7
    const-string v8, "rectCrop"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 487
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    goto/16 :goto_0

    .line 498
    :cond_8
    const-string v8, "setWallpaper"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    goto/16 :goto_1

    .line 537
    .restart local v6    # "target":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 538
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, "CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open Thumbnail : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_2

    .line 551
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v6    # "target":Landroid/net/Uri;
    .restart local v7    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    .line 553
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v8, "CropImage"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    if-eqz v7, :cond_6

    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 559
    :catch_2
    move-exception v8

    goto :goto_3

    .line 554
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v8, "CropImage"

    const-string v9, "Fail to close fd"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 558
    if-eqz v7, :cond_6

    :try_start_6
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 559
    :catch_4
    move-exception v8

    goto :goto_3

    .line 557
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 558
    if-eqz v7, :cond_9

    :try_start_7
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 559
    :cond_9
    :goto_5
    throw v8

    .line 568
    .end local v7    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_a
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSkipSaveDiscard:Z

    if-eqz v8, :cond_b

    .line 569
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    goto :goto_4

    .line 574
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 576
    const v8, 0x7f0e0015

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    .line 577
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    new-instance v9, Lcom/sec/android/app/camera/CropImage$4;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$4;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    const v8, 0x7f0e0017

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    .line 587
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    new-instance v9, Lcom/sec/android/app/camera/CropImage$5;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$5;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V

    .line 595
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    if-eqz v8, :cond_c

    .line 596
    invoke-virtual {p0, v13}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 597
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    new-instance v8, Lcom/sec/android/app/camera/CropImage$6;

    invoke-direct {v8, p0, v4}, Lcom/sec/android/app/camera/CropImage$6;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 608
    .end local v0    # "button":Landroid/widget/Button;
    :cond_c
    invoke-virtual {p0, v13}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 609
    .restart local v0    # "button":Landroid/widget/Button;
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 559
    .end local v0    # "button":Landroid/widget/Button;
    .restart local v7    # "videoFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_5
    move-exception v8

    goto/16 :goto_3

    :catch_6
    move-exception v9

    goto :goto_5
.end method
