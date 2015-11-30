.class public Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLThumbnailButton"

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_HEIGHT:I

.field private static final THUMBNAIL_IMAGE_POS_X:I

.field private static final THUMBNAIL_IMAGE_POS_Y:I

.field private static final THUMBNAIL_IMAGE_WIDTH:I

.field private static final THUMBNAIL_POS_X:I

.field private static final THUMBNAIL_POS_Y:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButtonLocked:Z

.field private mFrameButton:Lcom/sec/android/glview/TwGLButton;

.field private mIdxNewThumbnail:I

.field private mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

.field private mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

.field private mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

.field private mUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0a0195

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    .line 51
    const v0, 0x7f0a0196

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    .line 52
    const v0, 0x7f0a0197

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    .line 53
    const v0, 0x7f0a0198

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    .line 54
    const v0, 0x7f0a0199

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    .line 55
    const v0, 0x7f0a019a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    .line 56
    const v0, 0x7f0a019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 57
    const v0, 0x7f0a019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFZZ)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "camera"    # Z
    .param p5, "attachMode"    # Z

    .prologue
    const/4 v6, 0x0

    .line 76
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    .line 66
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 67
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    .line 69
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 81
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_0
    return-void
.end method

.method private getSecureUriList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v8, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 290
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 292
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 300
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    return-object v8
.end method

.method private update(Landroid/graphics/Bitmap;IZZ)V
    .locals 10
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bSetOrientation"    # Z
    .param p4, "bAnimation"    # Z

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 416
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 417
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 418
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v8, v9

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 449
    :goto_0
    return-void

    .line 423
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 428
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 431
    const/4 v0, 0x1

    if-ne p4, v0, :cond_6

    .line 432
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 433
    .local v7, "transNewAnimation":Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 434
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 436
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 441
    .end local v7    # "transNewAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 444
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020094

    const/4 v2, 0x0

    const v3, 0x7f020093

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->lockButton(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 90
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 98
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 101
    :cond_2
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 102
    return-void
.end method

.method public lockButton(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 107
    return-void
.end method

.method public noImage()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 476
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-eqz v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUptateMessage()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 464
    :cond_0
    return-void
.end method

.method public setRotatableForCoverMode(Z)V
    .locals 1
    .param p1, "rotatable"    # Z

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 473
    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Z)V

    .line 156
    return-void
.end method

.method public update(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bAnimation"    # Z

    .prologue
    .line 400
    div-int/lit8 v1, p2, 0xa

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x5a

    .line 401
    .local v0, "defaultOrientation":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 402
    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 405
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    .local v0, "data":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v3, v3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 407
    return-void
.end method

.method public declared-synchronized update(Z)V
    .locals 14
    .param p1, "bIsSNS"    # Z

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_1
    const/4 v11, 0x1

    .line 164
    .local v11, "noThumbnail":Z
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 176
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 180
    const/4 v8, 0x0

    .line 182
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initializeCover()V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 196
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 202
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 203
    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v12, v13

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 207
    .local v9, "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 249
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "defaultOrientation":I
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 255
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 256
    .local v7, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 257
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 258
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 262
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 265
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 268
    :cond_9
    const/4 v11, 0x0

    .line 269
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 272
    .end local v7    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_a
    if-eqz v11, :cond_13

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideThumbnailButton()V

    .line 283
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 159
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "noThumbnail":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "noThumbnail":Z
    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    goto/16 :goto_1

    .line 198
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 199
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 215
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_f

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 218
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 226
    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz p1, :cond_e

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    if-eqz v0, :cond_e

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "video/mp4"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 235
    :goto_6
    const-string v0, "TwGLThumbnailButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " share shot path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    .line 237
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 241
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_e
    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v12, v13

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 244
    .restart local v9    # "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    goto/16 :goto_3

    .line 219
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "defaultOrientation":I
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 220
    new-instance v0, Lcom/sec/android/app/camera/GolfImageManager;

    invoke-direct {v0}, Lcom/sec/android/app/camera/GolfImageManager;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/GolfImageManager;->createThumbnails(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 221
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 223
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 224
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 233
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_6

    .line 276
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020096

    const/4 v2, 0x0

    const v3, 0x7f020093

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto/16 :goto_4

    .line 279
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020094

    const/4 v2, 0x0

    const v3, 0x7f020093

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method public declared-synchronized update(ZI)V
    .locals 14
    .param p1, "bIsSNS"    # Z
    .param p2, "orientation"    # I

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_1
    const/4 v11, 0x1

    .line 310
    .local v11, "noThumbnail":Z
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 322
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 326
    const/4 v8, 0x0

    .line 328
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initializeCover()V

    .line 332
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 337
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 345
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz p1, :cond_4

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 349
    .local v10, "mimeType":Ljava/lang/String;
    const-string v0, "video/mp4"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 354
    :goto_3
    const-string v0, "TwGLThumbnailButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " share shot path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    .line 356
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 360
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v13, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v12, v13

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 362
    div-int/lit8 v0, p2, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 364
    .local v9, "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 368
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "defaultOrientation":I
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 371
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 374
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 375
    .local v7, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 376
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 385
    :cond_8
    const/4 v11, 0x0

    .line 386
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 389
    .end local v7    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_9
    if-eqz v11, :cond_e

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020096

    const/4 v2, 0x0

    const v3, 0x7f020093

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 395
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 305
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "noThumbnail":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "noThumbnail":Z
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    goto/16 :goto_1

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 339
    new-instance v0, Lcom/sec/android/app/camera/GolfImageManager;

    invoke-direct {v0}, Lcom/sec/android/app/camera/GolfImageManager;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/GolfImageManager;->createThumbnails(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 340
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 342
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 343
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 352
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShareShot()Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_3

    .line 392
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020094

    const/4 v2, 0x0

    const v3, 0x7f020093

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public updateEmpty()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 117
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mIdxNewThumbnail:I

    .line 119
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020096

    const v6, 0x7f020093

    move v2, v7

    move v3, v7

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c02c8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 124
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c01b7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateEmptyButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v2

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v3

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailButton;->updateEmpty()V

    .line 152
    return-void
.end method
