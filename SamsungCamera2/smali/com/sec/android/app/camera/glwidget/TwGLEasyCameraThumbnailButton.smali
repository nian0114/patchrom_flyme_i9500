.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEasyCameraThumbnailButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLEasyCameraThumbnailButton"

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
    .line 44
    const v0, 0x7f0a023f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_X:I

    .line 45
    const v0, 0x7f0a0240

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_Y:I

    .line 46
    const v0, 0x7f0a0241

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    .line 47
    const v0, 0x7f0a0242

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    .line 48
    const v0, 0x7f0a0243

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    .line 49
    const v0, 0x7f0a0244

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    .line 50
    const v0, 0x7f0a0245

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    .line 51
    const v0, 0x7f0a0246

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

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

    .line 70
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    int-to-float v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v0

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    .line 60
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 61
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mButtonLocked:Z

    .line 63
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->updateEmpty()V

    .line 75
    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isMediaScannerScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
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

    .line 315
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v8, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 317
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 319
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 327
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    return-object v8
.end method

.method private update(Landroid/graphics/Bitmap;IZZ)V
    .locals 10
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bSetOrientation"    # Z
    .param p4, "bAnimation"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 262
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 263
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 264
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v8, v9

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 294
    :goto_0
    return-void

    .line 269
    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 276
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    .line 277
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 278
    .local v7, "transNewAnimation":Landroid/view/animation/TranslateAnimation;
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 279
    const-wide/16 v0, 0x96

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 281
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 286
    .end local v7    # "transNewAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_6

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 289
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020331

    const/4 v2, 0x0

    const v3, 0x7f020330

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->lockButton(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 84
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 95
    :cond_2
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 96
    return-void
.end method

.method public lockButton(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mButtonLocked:Z

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 101
    return-void
.end method

.method public noImage()Z
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

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

    .line 297
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mButtonLocked:Z

    if-eqz v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v0, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeUptateMessage()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 309
    :cond_0
    return-void
.end method

.method public declared-synchronized update()V
    .locals 13

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    const/4 v10, 0x1

    .line 151
    .local v10, "noThumbnail":Z
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 163
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/imageviewer/MediaList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    if-eqz v0, :cond_0

    .line 167
    const/4 v8, 0x0

    .line 169
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setLastContentUri(Landroid/net/Uri;)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSecureMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getUriListInSecureMode()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 180
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 186
    .local v6, "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 187
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 191
    .local v9, "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    .line 218
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "defaultOrientation":I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setCenterPivot(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 223
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 224
    .local v7, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->initialize(IIII)V

    .line 225
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 230
    const/4 v10, 0x0

    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 234
    .end local v7    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_6
    if-eqz v10, :cond_b

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020332

    const/4 v2, 0x0

    const v3, 0x7f020330

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 241
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->clear()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 146
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "noThumbnail":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "noThumbnail":Z
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 183
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 197
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getId(I)J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 200
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 206
    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :goto_4
    iget-object v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v12, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    aput-object v0, v11, v12

    .line 208
    if-eqz v8, :cond_9

    .line 209
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    const/4 v8, 0x0

    .line 212
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getOrientation(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    div-int/lit8 v9, v0, 0x5a

    .line 214
    .restart local v9    # "defaultOrientation":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Lcom/sec/android/glview/TwGLImage;->setDefaultOrientation(I)V

    goto/16 :goto_2

    .line 202
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "defaultOrientation":I
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mMediaList:Lcom/sec/android/app/camera/imageviewer/MediaList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 203
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_HEIGHT:I

    invoke-static {v8, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 237
    .end local v6    # "croppedBitmap":Landroid/graphics/Bitmap;
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f020331

    const/4 v2, 0x0

    const v3, 0x7f020330

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public update(Landroid/graphics/Bitmap;IZ)V
    .locals 2
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "bAnimation"    # Z

    .prologue
    .line 246
    div-int/lit8 v1, p2, 0xa

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v0, v1, 0x5a

    .line 247
    .local v0, "defaultOrientation":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 248
    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    .local v0, "data":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v3, v3, p2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->update(Landroid/graphics/Bitmap;IZZ)V

    .line 253
    return-void
.end method

.method public updateEmpty()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_POS_Y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->THUMBNAIL_IMAGE_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 111
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mIdxNewThumbnail:I

    .line 113
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020332

    const v6, 0x7f020330

    move v2, v7

    move v3, v7

    move v5, v9

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isFromGroupPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c02c8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mFrameButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

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

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v2

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnail:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->mThumbnailImage:[Lcom/sec/android/glview/TwGLImage;

    aput-object v4, v0, v3

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraThumbnailButton;->updateEmpty()V

    .line 143
    return-void
.end method
