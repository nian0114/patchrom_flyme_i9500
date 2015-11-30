.class Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;
.super Ljava/lang/Object;
.source "TwGLPanorama360Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaProviderUtils"
.end annotation


# static fields
.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;Landroid/net/Uri;IIJI)Landroid/net/Uri;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "storageUri"    # Landroid/net/Uri;
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "cityId"    # J
    .param p12, "weatherId"    # I

    .prologue
    .line 3460
    const-string v7, "TwGLPanorama360Menu"

    const-string v10, "MediaProviderUtils addImage "

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3462
    :cond_0
    const/4 v7, 0x0

    .line 3509
    :goto_0
    return-object v7

    .line 3465
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3466
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3468
    .local v6, "fileName":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3469
    .local v4, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3472
    .local v8, "time":J
    if-eqz p3, :cond_2

    const/16 v7, 0x5a

    if-eq p3, v7, :cond_2

    const/16 v7, 0xb4

    if-eq p3, v7, :cond_2

    const/16 v7, 0x10e

    if-eq p3, v7, :cond_2

    .line 3475
    const/4 p3, 0x0

    .line 3478
    :cond_2
    if-eqz p6, :cond_3

    .line 3479
    const-string v7, "latitude"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3480
    const-string v7, "longitude"

    invoke-virtual/range {p6 .. p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3483
    :cond_3
    const-string v7, "title"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    const-string v7, "_display_name"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    const-string v7, "datetaken"

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3487
    const-string v7, "date_modified"

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3488
    const-string v7, "mime_type"

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    const-string v7, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3490
    const-string v7, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    const-string v7, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3494
    if-eqz p6, :cond_4

    .line 3496
    const-string v7, "TwGLPanorama360Menu"

    const-string v10, "MediaProviderUtils addImage Insert contextual tag"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    const-string v3, "weather_ID"

    .line 3499
    .local v3, "WEATHER_ID":Ljava/lang/String;
    const-string v2, "city_ID"

    .line 3500
    .local v2, "CITY_ID":Ljava/lang/String;
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3501
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3505
    .end local v2    # "CITY_ID":Ljava/lang/String;
    .end local v3    # "WEATHER_ID":Ljava/lang/String;
    :cond_4
    const-string v7, "width"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3506
    const-string v7, "height"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3507
    const-string v7, "spherical_mosaic"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3509
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;IIJI)Landroid/net/Uri;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "cityId"    # J
    .param p11, "weatherId"    # I

    .prologue
    .line 3456
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    invoke-static/range {v0 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLPanorama360Menu$MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;Landroid/net/Uri;IIJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createDateStringForAppSeg(J)Ljava/lang/String;
    .locals 4
    .param p0, "dateTaken"    # J

    .prologue
    .line 3449
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3450
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3451
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3452
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
