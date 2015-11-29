.class public Lcom/android/server/SdpManagerService;
.super Landroid/service/sdp/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# static fields
.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_PREV_STATUS:Ljava/lang/String; = "prevStatus"

.field private static final ATTR_STATUS:Ljava/lang/String; = "status"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field public static final SDP_CURRENT_VERSION:I = 0x2

.field public static final SDP_FLAG_FULL:I = 0x2

.field public static final SDP_FLAG_MIGRATION_DEFAULT:I = 0x3

.field public static final SDP_FLAG_MINOR:I = 0x3

.field public static final SDP_FLAG_MODE_MINOR:I = 0x1

.field public static final SDP_FLAG_VAULT_ON:I = 0x2

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_STATUS_INVALID:I = -0x1

.field public static final SDP_STATUS_READY:I = 0x1

.field public static final SDP_STATUS_UPGRADING:I = 0x2

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_BOOTED:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final USER_INFO_DIR:Ljava/lang/String; = "/data/system/users"

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;

.field mPolicyManager:Lcom/android/server/SdpPolicyManager;

.field private final mSdpInfoLock:Ljava/lang/Object;

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/SdpUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitForPassword:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/service/sdp/ISdpManagerService$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUsers:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpInfoLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const-string v1, "SdpManagerService"

    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private getPersonaService()Lcom/android/server/pm/PersonaManagerService;
    .locals 3

    .prologue
    const-string v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .local v1, "personaService":Lcom/android/server/pm/PersonaManagerService;
    return-object v1
.end method

.method private getSdpInfoFilePath(I)Ljava/io/File;
    .locals 4
    .param p1, "id"    # I

    .prologue
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/users"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdpUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(I)I
.end method

.method static native nativeOnChangePassword(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method static native nativeOnDeviceLocked(I)I
.end method

.method static native nativeOnDeviceUnlocked(ILjava/lang/String;)I
.end method

.method static native nativeOnUserAdded(ILjava/lang/String;)I
.end method

.method static native nativeOnUserRemoved(I)I
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private readSdpInfo(I)Landroid/content/pm/SdpUserInfo;
    .locals 16
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .local v5, "si":Landroid/content/pm/SdpUserInfo;
    const/4 v2, 0x0

    .local v2, "flags":I
    const/4 v11, 0x0

    .local v11, "version":I
    const/4 v4, -0x1

    .local v4, "prevStatus":I
    const/4 v7, -0x1

    .local v7, "status":I
    const/4 v1, 0x0

    .local v1, "fis":Ljava/io/FileInputStream;
    const-string v12, "SdpManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readUser :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/SdpManagerService;->mSdpInfoLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    new-instance v10, Landroid/util/AtomicFile;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpManagerService;->getSdpInfoFilePath(I)Ljava/io/File;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .local v10, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v3, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v12, 0x2

    if-eq v9, v12, :cond_1

    const/4 v12, 0x1

    if-ne v9, v12, :cond_0

    :cond_1
    const/4 v12, 0x2

    if-eq v9, v12, :cond_3

    const-string v12, "SdpManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to read user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    .end local v10    # "userFile":Landroid/util/AtomicFile;
    :goto_1
    return-object v12

    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    .restart local v10    # "userFile":Landroid/util/AtomicFile;
    :cond_3
    const/4 v12, 0x2

    if-ne v9, v12, :cond_7

    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "user"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "id"

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v14}, Lcom/android/server/SdpManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .local v8, "storedId":I
    move/from16 v0, p1

    if-eq v8, v0, :cond_5

    const-string v12, "SdpManagerService"

    const-string v14, "User id does not match the file name"

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v12, 0x0

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v13

    goto :goto_1

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "storedId":I
    .end local v9    # "type":I
    .end local v10    # "userFile":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v12

    :goto_3
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v12

    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "storedId":I
    .restart local v9    # "type":I
    .restart local v10    # "userFile":Landroid/util/AtomicFile;
    :cond_5
    :try_start_6
    const-string v12, "version"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v14}, Lcom/android/server/SdpManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const-string v12, "flags"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v14}, Lcom/android/server/SdpManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const-string v12, "prevStatus"

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v14}, Lcom/android/server/SdpManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v12, "status"

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12, v14}, Lcom/android/server/SdpManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v12, 0x2

    if-eq v9, v12, :cond_7

    const/4 v12, 0x1

    if-ne v9, v12, :cond_6

    .end local v8    # "storedId":I
    :cond_7
    new-instance v6, Landroid/content/pm/SdpUserInfo;

    move/from16 v0, p1

    invoke-direct {v6, v0, v2}, Landroid/content/pm/SdpUserInfo;-><init>(II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .local v6, "si":Landroid/content/pm/SdpUserInfo;
    :try_start_7
    iput v11, v6, Landroid/content/pm/SdpUserInfo;->version:I

    iput v4, v6, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    iput v7, v6, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-virtual {v6}, Landroid/content/pm/SdpUserInfo;->dump()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v5, v6

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .end local v9    # "type":I
    .end local v10    # "userFile":Landroid/util/AtomicFile;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    :cond_8
    :goto_4
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v12, v5

    goto :goto_1

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v9    # "type":I
    .restart local v10    # "userFile":Landroid/util/AtomicFile;
    :catch_0
    move-exception v12

    move-object v5, v6

    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    goto :goto_4

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    .end local v10    # "userFile":Landroid/util/AtomicFile;
    :catch_1
    move-exception v12

    :goto_5
    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v12

    goto :goto_4

    :catch_3
    move-exception v12

    :goto_6
    if-eqz v1, :cond_8

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_4
    move-exception v12

    goto :goto_4

    :catchall_1
    move-exception v12

    :goto_7
    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_9
    :goto_8
    :try_start_d
    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    .restart local v10    # "userFile":Landroid/util/AtomicFile;
    :catch_5
    move-exception v14

    goto/16 :goto_0

    .restart local v8    # "storedId":I
    :catch_6
    move-exception v14

    goto :goto_2

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "storedId":I
    .end local v9    # "type":I
    .end local v10    # "userFile":Landroid/util/AtomicFile;
    :catch_7
    move-exception v14

    goto :goto_8

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v9    # "type":I
    .restart local v10    # "userFile":Landroid/util/AtomicFile;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    goto :goto_3

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v6    # "si":Landroid/content/pm/SdpUserInfo;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    goto :goto_7

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v6    # "si":Landroid/content/pm/SdpUserInfo;
    :catch_8
    move-exception v12

    move-object v5, v6

    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    goto :goto_6

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v6    # "si":Landroid/content/pm/SdpUserInfo;
    :catch_9
    move-exception v12

    move-object v5, v6

    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    goto :goto_5

    .end local v5    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v6    # "si":Landroid/content/pm/SdpUserInfo;
    :cond_a
    move-object v5, v6

    .end local v6    # "si":Landroid/content/pm/SdpUserInfo;
    .restart local v5    # "si":Landroid/content/pm/SdpUserInfo;
    goto :goto_4
.end method

.method private removeSdpInfo(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getSdpInfoFilePath(I)Ljava/io/File;

    move-result-object v0

    .local v0, "f":Ljava/io/File;
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeUserLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .local v1, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .end local v1    # "userFile":Landroid/util/AtomicFile;
    :cond_0
    return-void
.end method

.method private sendBroadcastForStateChange(II)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "state"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setStatus(Landroid/content/pm/SdpUserInfo;I)V
    .locals 3
    .param p1, "si"    # Landroid/content/pm/SdpUserInfo;
    .param p2, "status"    # I

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from preStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/content/pm/SdpUserInfo;->status:I

    iput v0, p1, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    iput p2, p1, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->writeSdpInfo(Landroid/content/pm/SdpUserInfo;)V

    :cond_0
    return-void
.end method

.method private writeSdpInfo(Landroid/content/pm/SdpUserInfo;)V
    .locals 9
    .param p1, "si"    # Landroid/content/pm/SdpUserInfo;

    .prologue
    if-nez p1, :cond_0

    const-string v5, "SdpManagerService"

    const-string v6, "writeUserLocked :: si is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeUserLocked :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/SdpUserInfo;->dump()V

    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    iget v5, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getSdpInfoFilePath(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .local v4, "userFile":Landroid/util/AtomicFile;
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpInfoLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const-string v7, "user"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "id"

    iget v8, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "flags"

    iget v8, p1, Landroid/content/pm/SdpUserInfo;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "version"

    iget v8, p1, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "prevStatus"

    iget v8, p1, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "status"

    iget v8, p1, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "user"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mUsers:Landroid/util/SparseArray;

    iget v7, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-virtual {v5, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing user info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getSdpUserInfo(I)Landroid/content/pm/SdpUserInfo;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "si":Landroid/content/pm/SdpUserInfo;
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpInfoLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/SdpUserInfo;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->readSdpInfo(I)Landroid/content/pm/SdpUserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSdpUserInfo :: Unable to read user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSensitiveDBInfo(II)Ljava/util/List;
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "SdpManagerService"

    const-string v4, "getSensitiveDBInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getSensitiveDBInfo"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/SdpPolicyManager;->getSensitiveDBs(II)Ljava/util/List;

    move-result-object v2

    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public getSensitiveFileInfo(II)Ljava/util/List;
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "SdpManagerService"

    const-string v4, "getSensitiveFileInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getSensitiveFileInfo"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/SdpPolicyManager;->getSensitiveFiles(II)Ljava/util/List;

    move-result-object v2

    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public getState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    const-string v0, "getState"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getStatus(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getSdpUserInfo(I)Landroid/content/pm/SdpUserInfo;

    move-result-object v0

    .local v0, "si":Landroid/content/pm/SdpUserInfo;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/content/pm/SdpUserInfo;->status:I

    goto :goto_0
.end method

.method protected init()V
    .locals 0

    .prologue
    return-void
.end method

.method public isSDPEnabled(I)Z
    .locals 7
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "isSDPEnabled"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->getPersonaService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    .local v2, "pi":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_1

    const-string v4, "SdpManagerService"

    const-string v5, "pi is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pi id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    if-nez v4, :cond_2

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onBoot(I)Z
    .locals 6
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBoot :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "onBoot"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/SdpManagerService;->nativeOnBoot(I)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error to handle onBoot [persona : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/SdpManagerService;->getSdpUserInfo(I)Landroid/content/pm/SdpUserInfo;

    move-result-object v0

    .local v0, "si":Landroid/content/pm/SdpUserInfo;
    if-nez v0, :cond_2

    const-string v2, "SdpManagerService"

    const-string v3, "onBoot :: SDP user is there but no SdpUserInfo. This must be SDP v1 -> v1.1 migration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/pm/SdpUserInfo;

    .end local v0    # "si":Landroid/content/pm/SdpUserInfo;
    const/4 v2, 0x3

    invoke-direct {v0, p1, v2}, Landroid/content/pm/SdpUserInfo;-><init>(II)V

    .restart local v0    # "si":Landroid/content/pm/SdpUserInfo;
    iput v1, v0, Landroid/content/pm/SdpUserInfo;->version:I

    iput v5, v0, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->writeSdpInfo(Landroid/content/pm/SdpUserInfo;)V

    :cond_2
    iget v2, v0, Landroid/content/pm/SdpUserInfo;->version:I

    if-eq v2, v5, :cond_0

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBoot :: upgrade detected. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->onUpgrade(Landroid/content/pm/SdpUserInfo;)I

    goto :goto_0
.end method

.method public onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "oldPw"    # Ljava/lang/String;
    .param p3, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "onChangePassword"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onDeviceLocked(I)Z
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onDeviceLocked"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle onDeviceLocked [persona : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(II)V

    goto :goto_0
.end method

.method public onDeviceUnlocked(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "pw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceUnLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onDeviceUnlocked"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle onDeviceUnlocked [persona : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/content/pm/SdpUserInfo;)I
    .locals 9
    .param p1, "si"    # Landroid/content/pm/SdpUserInfo;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpgrade :: id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/content/pm/SdpUserInfo;->version:I

    if-ne v4, v8, :cond_0

    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpgrade :: already up to date. version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    iget v4, p1, Landroid/content/pm/SdpUserInfo;->version:I

    if-nez v4, :cond_1

    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpgrade :: SDP previously disabled. version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/server/SdpManagerService;->setStatus(Landroid/content/pm/SdpUserInfo;I)V

    iget v4, p1, Landroid/content/pm/SdpUserInfo;->version:I

    if-ne v4, v7, :cond_2

    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpgrade :: MIGRATE from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    .local v1, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "/data/user/$/com.android.email/databases/EmailProviderBody.db"

    aput-object v4, v0, v3

    const-string v4, "Body"

    aput-object v4, v0, v7

    const-string v4, "htmlContent,textContent"

    aput-object v4, v0, v8

    .local v0, "args":[Ljava/lang/String;
    aget-object v4, v0, v3

    const-string v5, "$"

    iget v6, p1, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpgrade :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/content/pm/SdpUserInfo;->id:I

    const-string v5, "sdp_db"

    const-string v6, "set_sensitive_from_db1"

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .local v2, "ret":I
    if-nez v2, :cond_3

    const-string v4, "SdpManagerService"

    const-string v5, "onUpgrade :: SUCCESS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/content/pm/SdpUserInfo;->version:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->writeSdpInfo(Landroid/content/pm/SdpUserInfo;)V

    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v2    # "ret":I
    :cond_2
    const-string v4, "SdpManagerService"

    const-string v5, "onUpgrade :: DONE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v7}, Lcom/android/server/SdpManagerService;->setStatus(Landroid/content/pm/SdpUserInfo;I)V

    goto/16 :goto_0

    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v2    # "ret":I
    :cond_3
    const-string v3, "SdpManagerService"

    const-string v4, "onUpgrade :: FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public onUserAdded(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUserAdded :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "onUserAdded"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Landroid/content/pm/SdpUserInfo;

    invoke-direct {v0, p1, p3}, Landroid/content/pm/SdpUserInfo;-><init>(II)V

    .local v0, "si":Landroid/content/pm/SdpUserInfo;
    const/4 v2, 0x2

    iput v2, v0, Landroid/content/pm/SdpUserInfo;->version:I

    iput v1, v0, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->writeSdpInfo(Landroid/content/pm/SdpUserInfo;)V

    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error to handle onUserAdded [persona : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "onUserRemoved"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle onUserRemoved [persona : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->removeSdpInfo(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSDPMigrating(Z)V
    .locals 1
    .param p1, "isSdpMigrating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "setSDPMigrating"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    return-void
.end method

.method public setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "DBPath"    # Ljava/lang/String;
    .param p4, "TableName"    # Ljava/lang/String;
    .param p5, "ColumnName"    # Ljava/lang/String;

    .prologue
    const-string v0, "SdpManagerService"

    const-string v1, "setSensitiveDBInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "setSensitiveDBInfo"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->nativeMemSetProcessSensitive(I)I

    const-string v0, "SdpManagerService"

    const-string v1, "after set sensitive process info to native"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "ident":J
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpPolicyManager;->addDBPolicy(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0
.end method

.method public setSensitiveFileInfo(IILjava/lang/String;)I
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    const-string v2, "SdpManagerService"

    const-string v3, "setSensitiveFileInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "setSensitiveFileInfo"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->nativeMemSetProcessSensitive(I)I

    const-string v2, "SdpManagerService"

    const-string v3, "after set sensitive process info to native"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "ident":J
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/SdpPolicyManager;->addFilePolicy(IILjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    return v2
.end method

.method public systemReady()V
    .locals 2

    .prologue
    const-string v0, "SdpManagerService"

    const-string v1, "SdpManagerService ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "systemReady"

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/SdpManagerService;->init()V

    new-instance v0, Lcom/android/server/SdpPolicyManager;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SdpPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    return-void
.end method
