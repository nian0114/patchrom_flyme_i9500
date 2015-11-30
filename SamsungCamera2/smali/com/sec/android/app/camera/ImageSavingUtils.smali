.class public Lcom/sec/android/app/camera/ImageSavingUtils;
.super Ljava/lang/Object;
.source "ImageSavingUtils.java"


# static fields
.field public static final BESTPHOTO_BUCKET:Ljava/lang/String; = "/.BestPic"

.field public static final CAMERA_COVERMODE_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

.field public static final CAMERA_COVERMODE_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final CAMERA_HIDDEN_BUCKET_NAME_MMC:Ljava/lang/String;

.field public static final CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static final CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

.field public static final CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

.field public static final CINEPIC_MODE_BUCKET:Ljava/lang/String;

.field public static final DB_SEF_TYPE:Ljava/lang/String; = "sef_file_type"

.field public static final DRAMA_MODE_BUCKET:Ljava/lang/String;

.field public static final DUALSHOT_MODE_BUCKET:Ljava/lang/String;

.field public static final GOLFSHOT_TEMP_FILE_NAME:Ljava/lang/String; = "golfshot_temp.golf"

.field protected static final TAG:Ljava/lang/String; = "ImageSavingUtils"

.field public static final VIRTUALTOUR_BUCKET:Ljava/lang/String; = "/.3DTour"

.field public static final VIRTUALTOUR_NAME_PREFIX:Ljava/lang/String; = "3DTour_"

.field public static final VIRTUALTOUR_SEF_TYPE:I = 0x850


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.CinemaPhoto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CINEPIC_MODE_BUCKET:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Drama"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->DRAMA_MODE_BUCKET:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.PostDual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->DUALSHOT_MODE_BUCKET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z
    .locals 11
    .param p0, "shootingMode"    # I
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "source"    # Landroid/graphics/Bitmap;
    .param p7, "jpegData"    # [B
    .param p8, "orientation"    # I
    .param p9, "whiteBalance"    # I
    .param p10, "flashMode"    # I

    .prologue
    .line 168
    const/4 v5, 0x0

    .line 171
    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 174
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v4, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .local v6, "outputStream":Ljava/io/OutputStream;
    if-eqz p6, :cond_4

    .line 177
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x4b

    move-object/from16 v0, p6

    invoke-virtual {v0, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {v4, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    if-eqz v6, :cond_2

    .line 193
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :cond_2
    :goto_1
    const/4 v7, 0x1

    move-object v5, v6

    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    :goto_2
    return v7

    .line 179
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    if-eqz v6, :cond_1

    if-eqz p7, :cond_1

    .line 180
    :try_start_3
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 185
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v3, "ex":Ljava/io/FileNotFoundException;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    const/4 v7, 0x0

    .line 192
    if-eqz v5, :cond_3

    .line 193
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 194
    :catch_1
    move-exception v2

    .line 196
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "ImageSavingUtils"

    invoke-static {v8, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 194
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 196
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 187
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    .line 188
    .local v3, "ex":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v3}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 189
    const/4 v7, 0x0

    .line 192
    if-eqz v5, :cond_3

    .line 193
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 194
    :catch_4
    move-exception v2

    .line 196
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "ImageSavingUtils"

    invoke-static {v8, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 192
    :goto_5
    if-eqz v5, :cond_5

    .line 193
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 197
    :cond_5
    :goto_6
    throw v7

    .line 194
    :catch_5
    move-exception v2

    .line 196
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "ImageSavingUtils"

    invoke-static {v8, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_5

    .line 187
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 184
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    :catch_7
    move-exception v3

    goto :goto_3
.end method

.method public static convertGpsToExif(D)Ljava/lang/String;
    .locals 12
    .param p0, "location"    # D

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 290
    invoke-static {p0, p1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "sec":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "value":[Ljava/lang/String;
    array-length v6, v5

    if-eq v6, v7, :cond_0

    .line 293
    const/4 v6, 0x0

    .line 299
    :goto_0
    return-object v6

    .line 295
    :cond_0
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 296
    .local v1, "m":I
    aget-object v6, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, "d":I
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 299
    .local v2, "s":D
    const-string v6, "%d/1,%d/1,%d/10000"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v8, v2

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J

    .prologue
    .line 81
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "sequenceNumber"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "addStr"    # Ljava/lang/String;

    .prologue
    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createName(JLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # I

    .prologue
    .line 89
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "addStr"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCoverModeImageSavingDir(I)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I

    .prologue
    .line 142
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 143
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 147
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 145
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_COVERMODE_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHiddenSavingDir(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 157
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_HIDDEN_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getImageSavingDir(I)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I

    .prologue
    .line 114
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 119
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 117
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getImageSavingDir(II)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # I
    .param p1, "shareMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 124
    if-ne p1, v1, :cond_1

    .line 125
    if-ne p0, v1, :cond_0

    .line 126
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    .line 137
    .local v0, "savingDir":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 128
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_1
    if-ne p0, v1, :cond_2

    .line 132
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0    # "savingDir":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v0    # "savingDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setExif(Ljava/lang/String;JLandroid/location/Location;III)V
    .locals 27
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "dateTaken"    # J
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "orientation"    # I
    .param p5, "whiteBalance"    # I
    .param p6, "flashMode"    # I

    .prologue
    .line 213
    const/4 v10, 0x0

    .line 215
    .local v10, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .local v11, "exif":Landroid/media/ExifInterface;
    if-nez v11, :cond_0

    move-object v10, v11

    .line 286
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v9

    .line 217
    .local v9, "ex":Ljava/io/IOException;
    const-string v22, "ImageSavingUtils"

    const-string v23, "cannot read exif"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v9    # "ex":Ljava/io/IOException;
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    :cond_0
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v22, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    .local v18, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v22, Ljava/util/Date;

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "sTaken":Ljava/lang/String;
    const-string v22, "DateTime"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-eqz p3, :cond_2

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 231
    .local v14, "lat":D
    invoke-static {v14, v15}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, "slat":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 233
    const-string v22, "GPSLatitude"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v23, "GPSLatitudeRef"

    const-wide/16 v24, 0x0

    cmpl-double v22, v14, v24

    if-lez v22, :cond_3

    const-string v22, "N"

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    .line 238
    .local v16, "lon":D
    invoke-static/range {v16 .. v17}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v20

    .line 239
    .local v20, "slon":Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 240
    const-string v22, "GPSLongitude"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v23, "GPSLongitudeRef"

    const-wide/16 v24, 0x0

    cmpl-double v22, v16, v24

    if-lez v22, :cond_4

    const-string v22, "E"

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v14    # "lat":D
    .end local v16    # "lon":D
    .end local v19    # "slat":Ljava/lang/String;
    .end local v20    # "slon":Ljava/lang/String;
    :cond_2
    const-string v22, "Orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-nez p5, :cond_5

    const/16 v21, 0x0

    .line 252
    .local v21, "wb":I
    :goto_3
    const-string v22, "WhiteBalance"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v7, 0x0

    .line 255
    .local v7, "EXIF_FLASH_UNKNOWN":I
    const/16 v6, 0x8

    .line 256
    .local v6, "EXIF_FLASH_ON":I
    const/16 v5, 0x10

    .line 257
    .local v5, "EXIF_FLASH_OFF":I
    const/16 v4, 0x18

    .line 258
    .local v4, "EXIF_FLASH_AUTO":I
    const/16 v8, 0x20

    .line 262
    .local v8, "EXIF_FLASH_UNSUPPORTED":I
    packed-switch p6, :pswitch_data_0

    .line 274
    const/4 v12, 0x0

    .line 279
    .local v12, "exifFlash":I
    :goto_4
    const-string v22, "Flash"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_1
    invoke-virtual {v11}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v10, v11

    .line 286
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    goto/16 :goto_0

    .line 234
    .end local v4    # "EXIF_FLASH_AUTO":I
    .end local v5    # "EXIF_FLASH_OFF":I
    .end local v6    # "EXIF_FLASH_ON":I
    .end local v7    # "EXIF_FLASH_UNKNOWN":I
    .end local v8    # "EXIF_FLASH_UNSUPPORTED":I
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "exifFlash":I
    .end local v21    # "wb":I
    .restart local v11    # "exif":Landroid/media/ExifInterface;
    .restart local v14    # "lat":D
    .restart local v19    # "slat":Ljava/lang/String;
    :cond_3
    const-string v22, "S"

    goto :goto_1

    .line 241
    .restart local v16    # "lon":D
    .restart local v20    # "slon":Ljava/lang/String;
    :cond_4
    const-string v22, "W"

    goto :goto_2

    .line 250
    .end local v14    # "lat":D
    .end local v16    # "lon":D
    .end local v19    # "slat":Ljava/lang/String;
    .end local v20    # "slon":Ljava/lang/String;
    :cond_5
    const/16 v21, 0x1

    goto :goto_3

    .line 265
    .restart local v4    # "EXIF_FLASH_AUTO":I
    .restart local v5    # "EXIF_FLASH_OFF":I
    .restart local v6    # "EXIF_FLASH_ON":I
    .restart local v7    # "EXIF_FLASH_UNKNOWN":I
    .restart local v8    # "EXIF_FLASH_UNSUPPORTED":I
    .restart local v21    # "wb":I
    :pswitch_0
    const/16 v12, 0x8

    .line 266
    .restart local v12    # "exifFlash":I
    goto :goto_4

    .line 268
    .end local v12    # "exifFlash":I
    :pswitch_1
    const/16 v12, 0x18

    .line 269
    .restart local v12    # "exifFlash":I
    goto :goto_4

    .line 271
    .end local v12    # "exifFlash":I
    :pswitch_2
    const/16 v12, 0x10

    .line 272
    .restart local v12    # "exifFlash":I
    goto :goto_4

    .line 283
    :catch_1
    move-exception v9

    .line 284
    .restart local v9    # "ex":Ljava/io/IOException;
    const-string v22, "ImageSavingUtils"

    const-string v23, "saveAttributes is failed"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # J

    .prologue
    const/4 v3, 0x0

    .line 204
    const-string v1, "ImageSavingUtils"

    const-string v2, "setImageSize E"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    :cond_0
    const-string v1, "ImageSavingUtils"

    const-string v2, "setImageSize X"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method
