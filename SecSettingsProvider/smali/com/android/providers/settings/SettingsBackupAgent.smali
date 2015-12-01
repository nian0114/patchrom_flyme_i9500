.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;,
        Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;,
        Lcom/android/providers/settings/SettingsBackupAgent$Network;
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:[B

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final STATE_SIZES:[I

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;

.field mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsBackupAgent;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant([BI)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/settings/SettingsBackupAgent;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v0

    return v0
.end method

.method private enableWifi(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .local v0, "state":I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .end local v0    # "state":I
    :goto_0
    return v0

    :cond_1
    const-string v1, "SettingsBackupAgent"

    const-string v2, "Failed to fetch WifiManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "settings"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p2

    array-length v12, v0

    .local v12, "settingsCount":I
    mul-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .local v16, "values":[[B
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "SettingsBackupAgent"

    const-string v18, "Couldn\'t read from the cursor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [B

    :cond_0
    return-object v11

    :cond_1
    const/4 v13, 0x0

    .local v13, "totalSize":I
    const/4 v2, 0x0

    .local v2, "backedUpSettingIndex":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .local v3, "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_5

    aget-object v7, p2, v6

    .local v7, "key":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "value":Ljava/lang/String;
    if-nez v14, :cond_2

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "cursorKey":Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "cursorValue":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object v14, v5

    .end local v4    # "cursorKey":Ljava/lang/String;
    .end local v5    # "cursorValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Lcom/android/providers/settings/SettingsHelper;->onBackupValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .restart local v4    # "cursorKey":Ljava/lang/String;
    .restart local v5    # "cursorValue":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "cursorKey":Ljava/lang/String;
    .end local v5    # "cursorValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .local v8, "keyBytes":[B
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    mul-int/lit8 v17, v2, 0x2

    aput-object v8, v16, v17

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .local v15, "valueBytes":[B
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v17, v17, 0x1

    aput-object v15, v16, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyBytes":[B
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "valueBytes":[B
    :cond_5
    new-array v11, v13, [B

    .local v11, "result":[B
    const/4 v10, 0x0

    .local v10, "pos":I
    mul-int/lit8 v9, v2, 0x2

    .local v9, "keyValuePairCount":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_0

    aget-object v17, v16, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v10

    aget-object v17, v16, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .local v0, "bytes":[B
    const/4 v7, 0x0

    .local v7, "offset":I
    const/4 v6, 0x0

    .local v6, "numRead":I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    array-length v8, v0

    sub-int/2addr v8, v7

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_0

    add-int/2addr v7, v6

    goto :goto_0

    :cond_0
    array-length v8, v0

    if-ge v7, v8, :cond_3

    const-string v8, "SettingsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t backup "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "bytes":[B
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v4, v5

    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "numRead":I
    .end local v7    # "offset":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v0

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "numRead":I
    .restart local v7    # "offset":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "getFileData : is.close() error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bytes":[B
    :cond_3
    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "getFileData : is.close() error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "numRead":I
    .end local v7    # "offset":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v8, "SettingsBackupAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t backup "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "SettingsBackupAgent"

    const-string v9, "getFileData : is.close() error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_6
    throw v8

    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "SettingsBackupAgent"

    const-string v10, "getFileData : is.close() error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getGlobalSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSecureSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSystemSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 17
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .local v5, "file":Ljava/io/File;
    move-object/from16 v10, p1

    .local v10, "name":Ljava/lang/String;
    :try_start_0
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .local v9, "msg":Landroid/os/Message;
    const/16 v13, 0x3d

    iput v13, v9, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "args":Landroid/os/Bundle;
    const-string v13, "OPTION"

    const/4 v14, 0x2

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "PATH"

    const-string v14, "/data/misc/wifi/network_backup_temp.conf"

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v13, :cond_0

    const-string v13, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13, v9}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "SettingsBackupAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getWifiSupplicant : create backup file - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "/data/misc/wifi/network_backup_temp.conf"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .local v11, "relevantLines":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .local v12, "started":Z
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_7

    if-nez v12, :cond_2

    const-string v13, "network"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x1

    :cond_2
    if-eqz v12, :cond_1

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "relevantLines":Ljava/lang/StringBuffer;
    .end local v12    # "started":Z
    :catch_0
    move-exception v7

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v13, "SettingsBackupAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t backup "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-object v13

    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v9    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_6
    const-string v13, "SettingsBackupAgent"

    const-string v14, "getWifiSupplicant : failed to create backup file"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiSupplicant : file.delete() error - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v14, "SettingsBackupAgent"

    const-string v15, "getWifiSupplicant : br.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v11    # "relevantLines":Ljava/lang/StringBuffer;
    .restart local v12    # "started":Z
    :cond_7
    :try_start_9
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_a

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v13

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_9
    :goto_6
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "SettingsBackupAgent"

    const-string v15, "getWifiSupplicant : br.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiSupplicant : file.delete() error - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_c
    sget-object v13, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v3, :cond_b

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_b
    :goto_7
    if-eqz v6, :cond_c

    :try_start_e
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_c
    :goto_8
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catch_5
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v14, "SettingsBackupAgent"

    const-string v15, "getWifiSupplicant : br.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiSupplicant : file.delete() error - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "relevantLines":Ljava/lang/StringBuffer;
    .end local v12    # "started":Z
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_d
    :try_start_f
    sget-object v13, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v2, :cond_e

    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    :cond_e
    :goto_9
    if-eqz v6, :cond_f

    :try_start_11
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :cond_f
    :goto_a
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_3

    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_7
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v14, "SettingsBackupAgent"

    const-string v15, "getWifiSupplicant : br.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiSupplicant : file.delete() error - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v14, "SettingsBackupAgent"

    const-string v15, "getWifiSupplicant : br.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiSupplicant : file.delete() error - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_b
    if-eqz v2, :cond_10

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_10
    :goto_c
    if-eqz v5, :cond_11

    :try_start_13
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    :cond_11
    :goto_d
    throw v13

    :catch_b
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v14, "SettingsBackupAgent"

    const-string v15, "getWifiSupplicant : br.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v14, "SettingsBackupAgent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getWifiSupplicant : file.delete() error - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_b

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_b

    .end local v1    # "args":Landroid/os/Bundle;
    .end local v9    # "msg":Landroid/os/Message;
    :catch_d
    move-exception v7

    goto/16 :goto_1

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "msg":Landroid/os/Message;
    :catch_e
    move-exception v7

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private isSupportLightSensor()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "isSupport":Z
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .local v3, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .local v4, "sensorType":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v4    # "sensorType":I
    :cond_1
    return v1
.end method

.method private readInt([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "pos"    # I

    .prologue
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .local v0, "result":I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    new-array v2, v4, [J

    .local v2, "stateChecksums":[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "dataInput":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .local v3, "stateVersion":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    aget v4, v4, v3

    if-ge v1, v4, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "stateVersion":I
    :catch_0
    move-exception v4

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;[BI)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, p2, v5, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SettingsBackupAgent"

    const-string v6, "restoreFileData : os.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "SettingsBackupAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "SettingsBackupAgent"

    const-string v6, "restoreFileData : os.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SettingsBackupAgent"

    const-string v7, "restoreFileData : os.close() error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .local v1, "settings":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, v1

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V
    .locals 18
    .param p1, "settings"    # [B
    .param p2, "bytes"    # I
    .param p3, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "whitelist":[Ljava/lang/String;
    sget-object v15, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v14, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    :goto_0
    const/4 v10, 0x0

    .local v10, "pos":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    const/4 v15, 0x2

    invoke-direct {v3, v15}, Landroid/content/ContentValues;-><init>(I)V

    .local v3, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .local v11, "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    array-length v13, v14

    .local v13, "whiteListSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v13, :cond_a

    aget-object v8, v14, v7

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "value":Ljava/lang/String;
    const-string v15, "screen_brightness_mode"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->isSupportLightSensor()Z

    move-result v15

    if-nez v15, :cond_4

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v2    # "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "i":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "pos":I
    .end local v11    # "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "whiteListSize":I
    :cond_1
    sget-object v15, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    sget-object v14, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v15, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    sget-object v14, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .restart local v2    # "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "contentValues":Landroid/content/ContentValues;
    .restart local v7    # "i":I
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v10    # "pos":I
    .restart local v11    # "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "whiteListSize":I
    :cond_4
    if-nez v12, :cond_5

    :goto_3
    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v9

    .local v9, "length":I
    add-int/lit8 v10, v10, 0x4

    if-lez v9, :cond_6

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .local v4, "dataKey":Ljava/lang/String;
    :goto_4
    add-int/2addr v10, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v9

    add-int/lit8 v10, v10, 0x4

    if-lez v9, :cond_7

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .local v5, "dataValue":Ljava/lang/String;
    :goto_5
    add-int/2addr v10, v9

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v12, v5

    .end local v4    # "dataKey":Ljava/lang/String;
    .end local v5    # "dataValue":Ljava/lang/String;
    .end local v9    # "length":I
    :cond_5
    if-eqz v12, :cond_0

    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget-object v6, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .local v6, "destination":Landroid/net/Uri;
    :goto_6
    invoke-virtual {v11, v8, v12}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v15, "name"

    invoke-virtual {v3, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "value"

    invoke-virtual {v3, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .end local v6    # "destination":Landroid/net/Uri;
    .restart local v9    # "length":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .restart local v4    # "dataKey":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .restart local v5    # "dataValue":Ljava/lang/String;
    :cond_8
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v4    # "dataKey":Ljava/lang/String;
    .end local v5    # "dataValue":Ljava/lang/String;
    .end local v9    # "length":I
    :cond_9
    move-object/from16 v6, p3

    goto :goto_6

    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private restoreWifiSupplicant([BI)V
    .locals 16
    .param p1, "bytes"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v11, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    .local v11, "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    if-lez p2, :cond_1

    move/from16 v0, p2

    new-array v10, v0, [C

    .local v10, "restoredAsBytes":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    aget-byte v12, p1, v5

    int-to-char v12, v12

    aput-char v12, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/CharArrayReader;

    invoke-direct {v12, v10}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v6, "in":Ljava/io/BufferedReader;
    invoke-virtual {v11, v6}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;)V

    .end local v5    # "i":I
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v10    # "restoredAsBytes":[C
    :cond_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/FileWriter;

    const-string v13, "/data/misc/wifi/network_restore_temp.conf"

    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v11, v3}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->write(Ljava/io/Writer;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    const-string v12, "/data/misc/wifi/network_restore_temp.conf"

    const/16 v13, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    const/16 v15, 0x3f2

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .local v8, "msg":Landroid/os/Message;
    const/16 v12, 0x3d

    iput v12, v8, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "args":Landroid/os/Bundle;
    const-string v12, "OPTION"

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "PATH"

    const-string v13, "/data/misc/wifi/network_restore_temp.conf"

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v12, :cond_2

    const-string v12, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "SettingsBackupAgent"

    const-string v13, "getWifiSupplicant : restore file - /data/misc/wifi/network_restore_temp.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v9, Ljava/io/File;

    const-string v12, "/data/misc/wifi/network_restore_temp.conf"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "restoreTemp":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-object v2, v3

    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "restoreTemp":Ljava/io/File;
    .end local v11    # "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    :goto_2
    return-void

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v11    # "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    :cond_3
    const-string v12, "SettingsBackupAgent"

    const-string v13, "getWifiSupplicant : failed to restore file - /data/misc/wifi/network_restore_temp.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v11    # "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_4
    const-string v12, "SettingsBackupAgent"

    const-string v13, "Couldn\'t restore - /data/misc/wifi/network_restore_temp.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v12, "SettingsBackupAgent"

    const-string v13, "getWifiSupplicant : bw.close() error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # [B

    .prologue
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 5
    .param p1, "oldChecksum"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "output"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .local v0, "checkSummer":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .local v2, "newChecksum":J
    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .end local p1    # "oldChecksum":J
    :goto_0
    return-wide p1

    .restart local p1    # "oldChecksum":J
    :cond_0
    :try_start_0
    array-length v1, p4

    invoke-virtual {p5, p3, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v1, p4

    invoke-virtual {p5, p4, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # I

    .prologue
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "checksums"    # [J
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method


# virtual methods
.method initWifiRestoreIfNecessary()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    :cond_0
    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 39
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .local v7, "systemSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v13

    .local v13, "secureSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v19

    .local v19, "globalSettingsData":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v25

    .local v25, "locale":[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v31

    .local v31, "wifiSupplicantData":[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v37

    .local v37, "wifiConfigData":[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v2

    .local v2, "stateChecksums":[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v9

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v10, v2, v4

    const-string v12, "secure"

    move-object/from16 v9, p0

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v16, v2, v4

    const-string v18, "global"

    move-object/from16 v15, p0

    move-object/from16 v20, p2

    invoke-direct/range {v15 .. v20}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v22, v2, v4

    const-string v24, "locale"

    move-object/from16 v21, p0

    move-object/from16 v26, p2

    invoke-direct/range {v21 .. v26}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v28, v2, v4

    const-string v30, "\uffedWIFI"

    move-object/from16 v27, p0

    move-object/from16 v32, p2

    invoke-direct/range {v27 .. v32}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v34, v2, v4

    const-string v36, "\uffedCONFIG_WIFI"

    move-object/from16 v33, p0

    move-object/from16 v38, p2

    invoke-direct/range {v33 .. v38}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .local v0, "mWfm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 18
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v12

    .local v12, "systemSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v10

    .local v10, "secureSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v5

    .local v5, "globalSettingsData":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v15}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v6

    .local v6, "locale":[B
    const-string v15, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v14

    .local v14, "wifiSupplicantData":[B
    sget-object v15, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v13

    .local v13, "wifiConfigData":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .local v9, "root":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    const-string v15, "flattened-data"

    invoke-direct {v11, v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v11, "stage":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v4, "filestream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, "bufstream":Ljava/io/BufferedOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "out":Ljava/io/DataOutputStream;
    .local v8, "out":Ljava/io/DataOutputStream;
    const/4 v15, 0x2

    :try_start_1
    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v15, v12

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v10

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v5

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v6

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v6}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v14

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v14}, Ljava/io/DataOutputStream;->write([B)V

    array-length v15, v13

    invoke-virtual {v8, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    const-string v15, "SettingsBackupAgent"

    const-string v16, "onFullBackup : out.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "bufstream":Ljava/io/BufferedOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "filestream":Ljava/io/FileOutputStream;
    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v15

    :goto_1
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    throw v15

    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    const-string v16, "SettingsBackupAgent"

    const-string v17, "onFullBackup : out.close() error"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "bufstream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "filestream":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8    # "out":Ljava/io/DataOutputStream;
    .restart local v7    # "out":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .local v2, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/provider/Settings$System;->getMovedKeys(Ljava/util/HashSet;)V

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .local v3, "size":I
    const-string v6, "system"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_0

    :cond_0
    const-string v6, "secure"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_1
    const-string v6, "global"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_2
    const-string v6, "\uffedWIFI"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v6, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiSupplicant(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    :cond_3
    const-string v6, "locale"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v1, v3, [B

    .local v1, "localeData":[B
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v6, v1, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    goto :goto_0

    .end local v1    # "localeData":[B
    :cond_4
    const-string v6, "\uffedCONFIG_WIFI"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v6, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiConfigFile(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_6
    iget-object v6, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_bounce_delay_override_ms"

    const-wide/32 v8, 0xea60

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .local v4, "wifiBounceDelayMillis":J
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v4    # "wifiBounceDelayMillis":J
    :cond_7
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "relpath"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v3, "instream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .local v8, "version":I
    const/4 v9, 0x2

    if-gt v8, v9, :cond_b

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v4}, Landroid/provider/Settings$System;->getMovedKeys(Ljava/util/HashSet;)V

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .local v5, "nBytes":I
    new-array v0, v5, [B

    .local v0, "buffer":[B
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v5, v9, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    array-length v9, v0

    if-le v5, v9, :cond_0

    new-array v0, v5, [B

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    sget-object v9, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v5, v9, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    array-length v9, v0

    if-le v5, v9, :cond_1

    new-array v0, v5, [B

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    sget-object v9, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v5, v9, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    array-length v9, v0

    if-le v5, v9, :cond_3

    new-array v0, v5, [B

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v9, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v9, v0, v5}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    array-length v9, v0

    if-le v5, v9, :cond_4

    new-array v0, v5, [B

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant([BI)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v9, "wifi_scan_always_enabled"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .local v7, "scanAlways":I
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v6

    .local v6, "retainedWifiState":I
    if-eqz v7, :cond_6

    const-string v9, "wifi_scan_always_enabled"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    if-eqz v7, :cond_7

    const-string v9, "wifi_scan_always_enabled"

    invoke-static {v1, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    const/4 v9, 0x3

    if-eq v6, v9, :cond_8

    const/4 v9, 0x2

    if-ne v6, v9, :cond_a

    :cond_8
    const/4 v9, 0x1

    :goto_1
    invoke-direct {p0, v9}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    array-length v9, v0

    if-le v5, v9, :cond_9

    new-array v0, v5, [B

    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    sget-object v9, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v9, v0, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    return-void

    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .end local v0    # "buffer":[B
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "nBytes":I
    .end local v6    # "retainedWifiState":I
    .end local v7    # "scanAlways":I
    :cond_b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    new-instance v9, Ljava/io/IOException;

    const-string v10, "Invalid file schema"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .restart local v0    # "buffer":[B
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "nBytes":I
    .restart local v6    # "retainedWifiState":I
    .restart local v7    # "scanAlways":I
    :catch_0
    move-exception v9

    goto :goto_0
.end method
