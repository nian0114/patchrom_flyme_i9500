.class public Lcom/sec/android/app/camera/imageviewer/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field private static final IMAGE_ORIENTATION:I = 0x5

.field private static final MEDIA_DATA_TAKEN:I = 0x4

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final MEDIA_MIME_TYPE_INDEX:I = 0x3

.field private static final MEDIA_PATH_INDEX:I = 0x1

.field private static final MEDIA_TITLE_INDEX:I = 0x2

.field public static final MEDIA_TYPE_GOLF:I = 0x1

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final PROJECTION_IMAGES:[Ljava/lang/String;

.field private static final PROJECTION_VIDEOS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaList"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    .line 77
    return-void
.end method

.method public static getVideoThumbnail(Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "autoRotation"    # Z

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "autoRotation"    # Z

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "autoRotation"    # Z

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 404
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_1

    .line 405
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 409
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 410
    const/4 v3, 0x0

    .line 412
    .local v3, "rotation":I
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    if-nez p4, :cond_0

    if-eqz v3, :cond_0

    .line 414
    const/16 v4, 0x168

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 422
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 427
    .end local v3    # "rotation":I
    :goto_1
    return-object v0

    .line 407
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 422
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 423
    :catch_1
    move-exception v1

    .line 424
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 423
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "rotation":I
    :catch_2
    move-exception v1

    .line 424
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 418
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "rotation":I
    :catch_3
    move-exception v1

    .line 419
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 422
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 423
    :catch_4
    move-exception v1

    .line 424
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 421
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 422
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 425
    :goto_2
    throw v4

    .line 423
    :catch_5
    move-exception v1

    .line 424
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "autoRotation"    # Z

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 434
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 436
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_1

    .line 437
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 441
    :goto_0
    const/4 v3, 0x0

    .line 443
    .local v3, "rotation":I
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 444
    if-nez p2, :cond_0

    if-eqz v3, :cond_0

    .line 445
    const/16 v4, 0x168

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 453
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 458
    .end local v3    # "rotation":I
    :goto_1
    return-object v0

    .line 439
    :cond_1
    :try_start_2
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 454
    :catch_1
    move-exception v1

    .line 455
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "rotation":I
    :catch_2
    move-exception v1

    .line 455
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v3    # "rotation":I
    :catch_3
    move-exception v1

    .line 450
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 454
    :catch_4
    move-exception v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 452
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 453
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 456
    :goto_2
    throw v4

    .line 454
    :catch_5
    move-exception v1

    .line 455
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 278
    :cond_0
    return-void
.end method

.method public deleteFile(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 347
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 474
    const-string v1, "MediaList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getTitle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    # getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v0

    .line 306
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 285
    const-string v0, "MediaList"

    const-string v1, "getImagePath"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 294
    const-string v0, "MediaList"

    const-string v1, "getMimeType"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->orientation:I

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v1, "image/golf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 317
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->getUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 332
    :goto_1
    return-object v0

    .line 330
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getVideoThumbnail(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "filePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 380
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 382
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 383
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 390
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    :goto_0
    return-object v0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 385
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 391
    :catch_2
    move-exception v1

    .line 392
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 387
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 391
    :catch_4
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 390
    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 393
    :goto_1
    throw v4

    .line 391
    :catch_5
    move-exception v1

    .line 392
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public getVideoThumbnail(III)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "filePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 357
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 359
    .local v3, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 360
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 361
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 368
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 363
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 369
    :catch_2
    move-exception v1

    .line 370
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 365
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 369
    :catch_4
    move-exception v1

    .line 370
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    .line 368
    :try_start_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 371
    :goto_1
    throw v4

    .line 369
    :catch_5
    move-exception v1

    .line 370
    .restart local v1    # "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public initialize(Z)V
    .locals 14
    .param p1, "bIsSNS"    # Z

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 82
    .local v3, "where":Ljava/lang/String;
    const/4 v11, 0x0

    .line 84
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .local v13, "listAdded":I
    :goto_0
    const/4 v0, 0x2

    if-ge v13, v0, :cond_9

    .line 85
    if-nez v13, :cond_3

    .line 86
    if-eqz p1, :cond_2

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%ShareShot/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%ShareShot/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 103
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (mime_type in (?, ?))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "video/mp4"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "video/3gpp"

    aput-object v1, v4, v0

    .line 105
    .local v4, "acceptableVidFormat":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v5, "datetaken DESC, _id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 135
    .end local v4    # "acceptableVidFormat":[Ljava/lang/String;
    :cond_1
    :goto_2
    if-nez v11, :cond_6

    .line 84
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 96
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_1

    .line 108
    :cond_3
    const/4 v0, 0x1

    if-ne v13, v0, :cond_1

    .line 109
    if-eqz p1, :cond_5

    .line 111
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%ShareShot/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%ShareShot/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 126
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (mime_type=\'image/jpeg\' OR mime_type=\'image/jpg\' OR mime_type=\'image/golf\' OR mime_type=\'image/gif\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    iget-object v5, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "datetaken DESC, _id DESC"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_2

    .line 119
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_4

    .line 137
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 138
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 142
    :cond_7
    const/4 v0, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->move(I)Z

    .line 144
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    :try_start_4
    new-instance v12, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-direct {v12, p0, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;Landroid/database/Cursor;)V

    .line 147
    .local v12, "item":Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 148
    .end local v12    # "item":Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 153
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 157
    const-string v0, "MediaList"

    const-string v1, "mList is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_6
    return-void

    .line 160
    :cond_a
    if-eqz p1, :cond_b

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$1;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$2;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 122
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 114
    :catch_2
    move-exception v0

    goto/16 :goto_4

    .line 99
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 91
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public initializeCover()V
    .locals 15

    .prologue
    .line 197
    const/4 v3, 0x0

    .line 199
    .local v3, "where":Ljava/lang/String;
    const/4 v11, 0x0

    .line 201
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .local v14, "listAdded":I
    :goto_0
    const/4 v0, 0x2

    if-ge v14, v0, :cond_6

    .line 202
    if-nez v14, :cond_2

    .line 204
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/CoverCamera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/CoverCamera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 210
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (mime_type in (?, ?))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "video/mp4"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "video/3gpp"

    aput-object v1, v4, v0

    .line 212
    .local v4, "acceptableVidFormat":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v5, "1"

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v5, "datetaken DESC, _id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 230
    .end local v4    # "acceptableVidFormat":[Ljava/lang/String;
    :cond_1
    :goto_2
    if-nez v11, :cond_4

    .line 201
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x1

    if-ne v14, v0, :cond_1

    .line 217
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/CoverCamera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR _data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/CoverCamera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 223
    :cond_3
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (mime_type in (?, ?, ?, ?))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "image/jpeg"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "image/jpg"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "image/golf"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "image/gif"

    aput-object v1, v9, v0

    .line 225
    .local v9, "acceptableImgFormat":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const-string v10, "datetaken DESC, _id DESC"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_2

    .line 232
    .end local v9    # "acceptableImgFormat":[Ljava/lang/String;
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 233
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 237
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    :try_start_2
    new-instance v13, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-direct {v13, p0, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;Landroid/database/Cursor;)V

    .line 240
    .local v13, "item":Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 247
    .end local v13    # "item":Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 241
    :catch_0
    move-exception v12

    .line 243
    .local v12, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "MediaList"

    const-string v1, "Error occured."

    invoke-static {v0, v1, v12}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 250
    .end local v12    # "ex":Ljava/lang/IllegalStateException;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    const-string v0, "MediaList"

    const-string v1, "mList is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_6
    return-void

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$3;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 244
    :catch_1
    move-exception v0

    goto :goto_5

    .line 220
    :catch_2
    move-exception v0

    goto/16 :goto_4

    .line 207
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
