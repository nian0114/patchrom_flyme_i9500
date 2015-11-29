.class public Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;
.super Ljava/lang/Object;
.source "BadgeNotification.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/app/BadgeNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Apps"
.end annotation


# static fields
.field public static final BADGECOUNT:Ljava/lang/String; = "badgecount"

.field public static final CLASSNAME:Ljava/lang/String; = "class"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRADATA:Ljava/lang/String; = "extraData"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final INTENT_DEFAULT_EXTRA_DATA:Ljava/lang/String; = "base_extra_badge"

.field public static final INTENT_EXTRA_BADGE:Ljava/lang/String; = "have_badge"

.field public static final PACKAGENAME:Ljava/lang/String; = "package"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.badge/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "base_extra_badge"

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 126
    .local v8, "id":J
    const/4 v0, 0x0

    .line 128
    .local v0, "client":Landroid/content/ContentProviderClient;
    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extraData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 143
    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 148
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_1
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 155
    :cond_2
    :goto_0
    return-wide v8

    .line 134
    :catch_0
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    if-eqz v6, :cond_4

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 148
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_4
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 136
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 137
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-eqz v6, :cond_6

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 148
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_6
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    .line 138
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 139
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    if-eqz v6, :cond_8

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 148
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_8
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 140
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v7

    .line 141
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "BadgeNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    if-eqz v6, :cond_a

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v8, v1

    .line 148
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_a
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_0

    .line 143
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_c

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 148
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_c
    if-eqz v0, :cond_d

    .line 152
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_d
    throw v1
.end method

.method private static final getStreamFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 266
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x4b

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 268
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static final getStreamFromDrawable(Landroid/graphics/drawable/Drawable;)[B
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    invoke-static {v0}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 276
    .local v2, "data":[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    return-object v2
.end method

.method public static final setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "badgeCount"    # I

    .prologue
    .line 167
    const-string v0, "base_extra_badge"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    return-void
.end method

.method public static final setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "badgeCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 181
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 182
    .local v0, "id":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "badgecount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 185
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 228
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 230
    .local v0, "id":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p4}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 232
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 233
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 252
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 254
    .local v0, "id":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 255
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-static {p4}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getStreamFromDrawable(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 256
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 257
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final setIcon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 204
    const-string v3, "BadgeNotification"

    const-string v4, "No supported API"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getId(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 206
    .local v0, "id":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "icon"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 208
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 209
    const-string v3, "package"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "class"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "extraData"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v3, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->getContentUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
