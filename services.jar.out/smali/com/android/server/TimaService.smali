.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TuiReceiver;,
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final DEBUG:Z = true

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v2, 0x493e0

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    .line 168
    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1733
    new-instance v0, Lcom/android/server/TimaService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$2;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    .line 240
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerTuiReceiver()V

    .line 242
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    .line 243
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "TimaService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 244
    .local v7, "timaThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 245
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 246
    .local v6, "timaLooper":Landroid/os/Looper;
    if-eqz v6, :cond_1

    .line 247
    new-instance v0, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    .line 253
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimer:Ljava/util/Timer;

    .line 254
    new-instance v0, Lcom/android/server/TimaService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimerTask:Ljava/util/TimerTask;

    .line 262
    iget-object v0, p0, Lcom/android/server/TimaService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/TimaService;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/TimaService;->ccmLoadServer()I

    .line 265
    invoke-virtual {p0}, Lcom/android/server/TimaService;->tuiLoadServer()I

    .line 267
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 269
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiver()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/TimaService;->isLicenseActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 274
    invoke-direct {p0}, Lcom/android/server/TimaService;->handleBuildUpdate()V

    .line 277
    :cond_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: Start TimaService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v0, "TimaService"

    const-string v1, "Failed getting looper for TimaServiceHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TimaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TimaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/TimaService;->notifyKapEnabled()V

    return-void
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 1010
    if-eqz p0, :cond_0

    .line 1011
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1013
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private enforcePermission()Z
    .locals 2

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 779
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 780
    const/4 v1, 0x1

    .line 783
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getKapState()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1519
    const/4 v5, 0x0

    .line 1521
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "kapstate"

    aput-object v9, v0, v8

    .line 1525
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1526
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string v8, "knox_active_protection"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1529
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1530
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1531
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1532
    const-string v8, "kapstate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_1

    move v5, v6

    .line 1542
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getKapState ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    move v5, v7

    .line 1532
    goto :goto_0

    .line 1536
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1538
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getKapState failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1662
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.kap.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, "oldBuild":Ljava/lang/String;
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldBuild: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", license: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v6, :cond_0

    .line 1673
    const-string v3, "TimaService"

    const-string v4, "handleBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 1675
    const-string/jumbo v3, "persist.sys.kap.date"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v3, :cond_0

    .line 1679
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1680
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1681
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1684
    :catch_0
    move-exception v1

    .line 1685
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initCCMDatabase()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 806
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, "dbDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 813
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 814
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 817
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, "csrProfileDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 819
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 821
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 822
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 826
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/tz_ccm/key_db"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .local v2, "dbFile":Ljava/io/File;
    const-string v4, "TimaService"

    const-string v5, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 830
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v0    # "csrProfileDir":Ljava/io/File;
    .end local v1    # "dbDir":Ljava/io/File;
    .end local v2    # "dbFile":Ljava/io/File;
    :goto_0
    return v6

    .line 831
    :catch_0
    move-exception v3

    .line 832
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "TimaService"

    const-string v5, "Exception in initCCMDatabase"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isKapSupported()Z
    .locals 4

    .prologue
    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, "isKapSupported":Z
    const-string/jumbo v2, "ro.boot.security_mode"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1727
    .local v1, "kapSupported":Ljava/lang/String;
    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1728
    const/4 v0, 0x1

    .line 1730
    :cond_0
    return v0
.end method

.method private isLicenseActive()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1419
    const/4 v5, 0x0

    .line 1421
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "licensestate"

    aput-object v9, v0, v8

    .line 1425
    .local v0, "columns":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1426
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string v8, "knox_active_protection"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1429
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1430
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1431
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1432
    const-string v8, "licensestate"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_1

    move v5, v6

    .line 1442
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLicenseActive ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    move v5, v7

    .line 1432
    goto :goto_0

    .line 1436
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1438
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "TimaService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLicenseActive failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .locals 6

    .prologue
    .line 1693
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1694
    .local v2, "kapStatus":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1695
    .local v1, "kapIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    const-string v3, "com.samsung.klmsagent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1702
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z

    move-result v0

    .line 1704
    .local v0, "isKapOn":Z
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    if-eqz v0, :cond_0

    .line 1707
    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1708
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1710
    :cond_0
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    .end local v0    # "isKapOn":Z
    :cond_1
    :goto_0
    return-void

    .line 1711
    :cond_2
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1712
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z

    move-result v0

    .line 1714
    .restart local v0    # "isKapOn":Z
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyKapEnabled - isKapOn:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    if-nez v0, :cond_3

    .line 1717
    const-string v3, "KAP_RP_MODE_STATUS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1718
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1720
    :cond_3
    const-string/jumbo v3, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    return-void
.end method

.method private registerTuiReceiver()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 284
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 285
    new-instance v1, Lcom/android/server/TimaService$TuiReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/TimaService$TuiReceiver;-><init>(Lcom/android/server/TimaService;)V

    .line 286
    .local v1, "tuiReceiver":Lcom/android/server/TimaService$TuiReceiver;
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    return-void
.end method

.method static native timaAttestation([B)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init()I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method private updateKapState(ZZ)V
    .locals 12
    .param p1, "isEnabled"    # Z
    .param p2, "isUserSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v5, 0x0

    .line 1452
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 1455
    .local v0, "buffReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v4, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v7, 0x0

    .line 1465
    .local v7, "isKapOn":Z
    if-eqz p2, :cond_2

    .line 1466
    move v7, p1

    .line 1487
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1490
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState - isKapOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isUserSet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    if-eqz v7, :cond_7

    .line 1493
    const-string v9, "kapstate"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1497
    :goto_1
    const-string v9, "knox_active_protection"

    invoke-virtual {v4, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    if-eqz v0, :cond_0

    .line 1506
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1509
    :cond_0
    if-eqz v5, :cond_1

    .line 1510
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1513
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v7    # "isKapOn":Z
    :cond_1
    :goto_2
    return-void

    .line 1468
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v7    # "isKapOn":Z
    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/dev/knox_kap"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v6, "fileReader":Ljava/io/FileReader;
    if-eqz v6, :cond_b

    .line 1471
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1473
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .local v1, "buffReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_5

    .line 1474
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, "outPut":Ljava/lang/String;
    const-string v9, "11"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "01"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1476
    :cond_3
    const/4 v7, 0x1

    :cond_4
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 1478
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 1479
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v8    # "outPut":Ljava/lang/String;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_5
    if-eqz v6, :cond_6

    .line 1480
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_0

    .line 1495
    .restart local v2    # "cv":Landroid/content/ContentValues;
    :cond_7
    :try_start_4
    const-string v9, "kapstate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1499
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v7    # "isKapOn":Z
    :catch_0
    move-exception v3

    .line 1501
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v9, "TimaService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateKapState failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1505
    if-eqz v0, :cond_8

    .line 1506
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1509
    :cond_8
    if-eqz v5, :cond_1

    .line 1510
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 1505
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v0, :cond_9

    .line 1506
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1509
    :cond_9
    if-eqz v5, :cond_a

    .line 1510
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_a
    throw v9

    .line 1505
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v7    # "isKapOn":Z
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 1499
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v5    # "fileReader":Ljava/io/FileReader;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :cond_b
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0
.end method

.method private updateLicenseState(Z)V
    .locals 6
    .param p1, "isLicenseActive"    # Z

    .prologue
    .line 1391
    :try_start_0
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1398
    .local v2, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1400
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 1401
    const-string v3, "licensestate"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    :goto_0
    const-string v3, "knox_active_protection"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 1413
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :goto_1
    return-void

    .line 1403
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :cond_0
    const-string v3, "licensestate"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1407
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :catch_0
    move-exception v1

    .line 1409
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLicenseState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validateRequest(II)Z
    .locals 2
    .param p1, "opCode"    # I
    .param p2, "subCode"    # I

    .prologue
    .line 314
    const/4 v0, 0x1

    .line 315
    .local v0, "ret":Z
    const v1, 0xc350

    if-eq p1, v1, :cond_0

    const v1, 0xc351

    if-ne p1, v1, :cond_1

    :cond_0
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_2

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_2

    .line 319
    :cond_1
    const/4 v0, 0x0

    .line 321
    :cond_2
    return v0
.end method


# virtual methods
.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 609
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-nez p1, :cond_1

    .line 612
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 616
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 563
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-nez p1, :cond_1

    .line 567
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 571
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 579
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 582
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 586
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 594
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-nez p1, :cond_1

    .line 597
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 601
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_init()I
    .locals 2

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_init()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 545
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v0, -0x1

    .line 549
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    .line 552
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 556
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 624
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-nez p1, :cond_1

    .line 627
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 631
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 633
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 634
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    .end local v0    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 506
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-nez p1, :cond_1

    .line 509
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 513
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 460
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez p1, :cond_1

    .line 464
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 468
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 476
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 479
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 483
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 491
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-nez p1, :cond_1

    .line 494
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 498
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_init()I
    .locals 2

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 442
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v0, -0x1

    .line 446
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    .line 449
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 453
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 521
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_saw"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    if-nez p1, :cond_1

    .line 524
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 528
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, "tmp":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 531
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    .end local v0    # "tmp":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized attestation([B)[B
    .locals 2
    .param p1, "nonce"    # [B

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: attestation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p1}, Lcom/android/server/TimaService;->timaAttestation([B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ccmLoadServer()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 875
    monitor-enter p0

    const/4 v0, 0x0

    .line 876
    .local v0, "START_IN_HERE":Z
    :try_start_0
    const-string v5, "TimaService"

    const-string v6, "TIMA3: in ccmLoadServer"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 880
    const-string v5, "CCM"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 881
    .local v1, "ccmBinder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 882
    const-string v5, "TimaService"

    const-string v6, "TIMA3: tlc_server already loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    .end local v1    # "ccmBinder":Landroid/os/IBinder;
    :goto_0
    monitor-exit p0

    return v4

    .line 887
    .restart local v1    # "ccmBinder":Landroid/os/IBinder;
    :cond_0
    if-eqz v0, :cond_1

    .line 890
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "/system/bin/tlc_server"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 891
    .local v2, "ccmProcess":Ljava/lang/Process;
    const-string v5, "TimaService"

    const-string v6, "Start tlc_server for CCM done"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 892
    .end local v2    # "ccmProcess":Ljava/lang/Process;
    :catch_0
    move-exception v3

    .line 893
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 875
    .end local v1    # "ccmBinder":Landroid/os/IBinder;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 896
    .restart local v1    # "ccmBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_3
    const-string/jumbo v5, "persist.security.tlc.ccm"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v5, "TimaService"

    const-string v6, "Start tlc_server for CCM done : setprop"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 902
    .end local v1    # "ccmBinder":Landroid/os/IBinder;
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "regPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "isTrustedBootRequired"    # Z

    .prologue
    .line 844
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 849
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "tima"

    const-string v5, "ccmRegisterForDefaultCertificate"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Exception Occurred while pid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ccmRegisterForDefaultCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tima"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 866
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 867
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/TimaService;->ccm_register_for_default_cert(II)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    long-to-int v1, v2

    .line 871
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .locals 4
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkEvent, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mPowerManager:Landroid/os/PowerManager;

    .line 329
    iget-object v1, p0, Lcom/android/server/TimaService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "TimaService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->validateRequest(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 339
    :goto_0
    monitor-exit p0

    return-object v0

    .line 333
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 334
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaCheckEvent(II)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "timaResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/server/TimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .locals 4
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkHistory, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->validateRequest(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 352
    :goto_0
    monitor-exit p0

    return-object v0

    .line 350
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaCheckHistory(II)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "timaResult":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/TimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public displayEvent(Ljava/lang/String;)V
    .locals 21
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 647
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-nez p1, :cond_0

    .line 771
    :goto_0
    return-void

    .line 651
    :cond_0
    sget-object v18, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    sget v19, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 652
    sget-object v18, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 656
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    .line 658
    const-string v18, "TimaService"

    const-string v19, "Reporting violation to ISL"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_2
    :goto_1
    const-string v17, " "

    .line 667
    .local v17, "time":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 671
    :goto_2
    sget-object v18, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v18, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 675
    .local v14, "statusIdx":I
    const/16 v18, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 676
    .local v13, "sepIdx":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v14, v0, :cond_3

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 677
    :cond_3
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 660
    .end local v13    # "sepIdx":I
    .end local v14    # "statusIdx":I
    .end local v17    # "time":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 661
    .local v7, "e":Landroid/os/RemoteException;
    const-string v18, "TimaService"

    const-string v19, "Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 668
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v17    # "time":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 669
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "TimaService"

    const-string/jumbo v19, "toLocalString() exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 682
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v13    # "sepIdx":I
    .restart local v14    # "statusIdx":I
    :cond_4
    const-string v18, "0"

    const-string v19, "TIMA_STATUS="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 683
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 685
    :cond_5
    const-string v18, "1"

    const-string v19, "TIMA_STATUS="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 686
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TIMA Internal Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :cond_6
    const-string v18, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 692
    .local v12, "msgIdx":I
    const/16 v18, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 693
    const-string v11, ""

    .line 694
    .local v11, "msg":Ljava/lang/String;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_7

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_8

    .line 695
    :cond_7
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 699
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v18, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v2, "TimaEventIntent":Landroid/content/Intent;
    const-string v18, "MSG="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v12

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 704
    const-string v18, "lkm_modified"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 705
    const-string v18, "TIMA_STATUS="

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 717
    :goto_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyyMMddHHmmss"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 718
    .local v5, "dateFormat":Ljava/text/DateFormat;
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, "date":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    const-string v19, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 727
    :goto_4
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    const-string v19, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 733
    :goto_5
    :try_start_4
    new-instance v6, Ljava/io/File;

    const-string v18, "/data/misc/tima"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    .local v6, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 736
    .local v8, "files":[Ljava/io/File;
    move-object v3, v8

    .local v3, "arr$":[Ljava/io/File;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_6
    if-ge v9, v10, :cond_d

    aget-object v16, v3, v9

    .line 737
    .local v16, "timafile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 736
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 706
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "date":Ljava/lang/String;
    .end local v5    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "delAllTimaLogFile":Ljava/io/File;
    .end local v8    # "files":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "timafile":Ljava/io/File;
    :cond_9
    const-string/jumbo v18, "seandroid_off"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 707
    const-string v18, "TIMA_STATUS="

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 708
    :cond_a
    const-string v18, "kern_modified"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 709
    const-string v18, "TIMA_STATUS="

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 710
    :cond_b
    const-string v18, "kern_metadata_modified"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 711
    const-string v18, "TIMA_STATUS="

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 713
    :cond_c
    const-string v18, "TimaService"

    const-string v19, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 722
    .restart local v4    # "date":Ljava/lang/String;
    .restart local v5    # "dateFormat":Ljava/text/DateFormat;
    :catch_2
    move-exception v7

    .line 723
    .local v7, "e":Ljava/io/IOException;
    const-string v18, "TimaService"

    const-string v19, "Failed to create /data/misc/tima"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 728
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 729
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v18, "TimaService"

    const-string v19, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 740
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 741
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/misc/tima/tima.log."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 747
    .local v15, "tima_log_file":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 753
    :goto_7
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "chmod 640 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 758
    :goto_8
    sget-boolean v18, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v18, :cond_e

    .line 759
    const-string v18, "TimaService"

    const-string v19, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :catch_5
    move-exception v7

    .line 749
    .local v7, "e":Ljava/io/IOException;
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 754
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 755
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v18, "TimaService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to change permissions of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 762
    .end local v7    # "e":Ljava/io/IOException;
    :cond_e
    const-string v18, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string v18, "TIMA_LOG_FILE"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized dumpLog()[B
    .locals 7

    .prologue
    .line 940
    monitor-enter p0

    :try_start_0
    const-string v4, "TimaService"

    const-string v5, "TIMA: timaDumpLog"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 943
    .local v1, "uid":I
    if-eqz v1, :cond_0

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_0

    const/16 v4, 0x7d0

    if-eq v1, v4, :cond_0

    .line 946
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not ROOT_UID/SYSTEM_UID/SHELL_UID, return null, uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    const/4 v0, 0x0

    .line 953
    :goto_0
    monitor-exit p0

    return-object v0

    .line 950
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 951
    .local v2, "token":J
    invoke-static {}, Lcom/android/server/TimaService;->timaDumpLog()[B

    move-result-object v0

    .line 952
    .local v0, "result":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 940
    .end local v0    # "result":[B
    .end local v1    # "uid":I
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getDeviceID()[B
    .locals 2

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .locals 1
    .param p1, "subject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: in getTimaVersion"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTuiVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1280
    const-string v1, "TimaService"

    const-string v2, "TIMA3: get TUI version"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v0, 0x0

    .line 1283
    .local v0, "ver":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/TimaService;->loadTui()I

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    const-string v0, "3.0"

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/TimaService;->unloadTui()I

    .line 1289
    :cond_0
    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .locals 7
    .param p1, "notiTrigger"    # I
    .param p2, "licenseStatus"    # Z

    .prologue
    .line 1552
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", licenseStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1556
    .local v2, "token":J
    const/4 v1, 0x0

    .line 1557
    .local v1, "kapState":Z
    packed-switch p1, :pswitch_data_0

    .line 1595
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1600
    .end local v1    # "kapState":Z
    .end local v2    # "token":J
    :goto_1
    return-void

    .line 1559
    .restart local v1    # "kapState":Z
    .restart local v2    # "token":J
    :pswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1560
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1562
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1563
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1596
    .end local v1    # "kapState":Z
    .end local v2    # "token":J
    :catch_0
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleLicenseStatus exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1566
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "kapState":Z
    .restart local v2    # "token":J
    :pswitch_1
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1567
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1570
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v1

    .line 1571
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_0

    .line 1575
    :pswitch_2
    if-eqz p2, :cond_1

    .line 1576
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1577
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1580
    iget-boolean v4, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v4, :cond_0

    .line 1582
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1583
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_0

    .line 1586
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1587
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1588
    iget-boolean v4, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v4, :cond_0

    .line 1589
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v1

    .line 1590
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/TimaService;->setKapMode(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isKapEnforced()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1607
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iBootCompleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TimaService;->iBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsBuildUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v1, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return v0

    .line 1613
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-eqz v1, :cond_0

    .line 1617
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized keystoreInit()I
    .locals 2

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreInit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 365
    :goto_0
    monitor-exit p0

    return v0

    .line 362
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 365
    :cond_2
    const/16 v0, 0x64

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .locals 5
    .param p1, "ID"    # I
    .param p2, "key"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v1, -0x1

    .line 369
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA: keystoreInstallKey"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_2

    .line 373
    :cond_0
    const-string v2, "TimaService"

    const-string v3, "TIMA: Invalid key data"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 377
    :cond_2
    :try_start_1
    array-length v2, p2

    if-ge v4, v2, :cond_3

    .line 378
    const-string v2, "TimaService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMA: Key length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exceeds max key length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 384
    :cond_3
    const/16 v1, 0x20

    :try_start_2
    new-array v0, v1, [B

    .line 387
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 389
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 390
    invoke-static {p1, v0}, Lcom/android/server/TimaService;->timaKeystoreInstallKey(I[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_0

    .line 395
    .end local v0    # "keyBytes":[B
    :cond_4
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .locals 3
    .param p1, "ID"    # I

    .prologue
    const/4 v0, 0x0

    .line 399
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA: keystoreRetrieveKey"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    invoke-static {p1}, Lcom/android/server/TimaService;->timaKeystoreRetrieveKey(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 408
    :cond_1
    monitor-exit p0

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .locals 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreShutdown()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 420
    :goto_0
    monitor-exit p0

    return v0

    .line 417
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 420
    :cond_2
    const/16 v0, 0x64

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .locals 3
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .param p3, "verify"    # Z
    .param p4, "min_pin_length"    # I

    .prologue
    const/4 v0, 0x0

    .line 979
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: launch TUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 983
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 986
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/server/TimaService;->timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 3
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "secret_id"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "verify"    # Z
    .param p5, "min_pin_length"    # I

    .prologue
    const/4 v0, 0x0

    .line 993
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: launch TUI"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 997
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1000
    :cond_2
    :try_start_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/TimaService;->timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTui()I
    .locals 2

    .prologue
    .line 957
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: load TUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    const-string v0, "TimaService"

    const-string v1, "Really start to load"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {}, Lcom/android/server/TimaService;->timaLoadTui()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 963
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .locals 2
    .param p1, "timaISLClbk"    # Landroid/service/tima/ITimaISLCallback;

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    monitor-exit p0

    return-void

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKapMode(ZZ)V
    .locals 6
    .param p1, "isEnabled"    # Z
    .param p2, "notifyKapState"    # Z

    .prologue
    .line 1623
    :try_start_0
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode - isEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notifyKapState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1628
    .local v2, "token":J
    if-eqz p1, :cond_2

    .line 1629
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string/jumbo v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :goto_0
    if-nez p2, :cond_0

    .line 1642
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_0
    if-eqz p2, :cond_1

    .line 1647
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1650
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1655
    .end local v2    # "token":J
    :goto_1
    return-void

    .line 1632
    .restart local v2    # "token":J
    :cond_2
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1633
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    :goto_2
    const-string/jumbo v1, "security.knox_kap_mode"

    const-string v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1651
    .end local v2    # "token":J
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKapMode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1636
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "token":J
    :cond_3
    :try_start_1
    const-string/jumbo v1, "persist.sys.kap.status"

    const-string v4, "NONE"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1373
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: TUI decrypt PIN hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    invoke-virtual {p0, p2}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v0

    .line 1377
    .local v0, "verified":[B
    if-nez v0, :cond_1

    .line 1378
    const-string v2, "TimaService"

    const-string v3, "Certificate chain verification failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    .end local v0    # "verified":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1381
    .restart local v0    # "verified":[B
    :cond_1
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/server/TimaService;->timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1373
    .end local v0    # "verified":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tuiGetCerts()[B
    .locals 2

    .prologue
    .line 1343
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: TUI Get Certs"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    invoke-static {}, Lcom/android/server/TimaService;->timaTuiGetCerts()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1347
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .locals 2

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: TUI get secret dimension"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-static {}, Lcom/android/server/TimaService;->timaTuiGetSecretDimension()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1369
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1019
    monitor-enter p0

    :try_start_0
    const-string v2, "TimaService"

    const-string v3, "TIMA3: TUI init secret"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v0

    .line 1023
    .local v0, "verified":[B
    if-nez v0, :cond_1

    .line 1024
    const-string v2, "TimaService"

    const-string v3, "Certificate chain verification failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    .end local v0    # "verified":[B
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1027
    .restart local v0    # "verified":[B
    :cond_1
    :try_start_1
    invoke-static {v0, p2, p3, p4}, Lcom/android/server/TimaService;->timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1019
    .end local v0    # "verified":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .locals 18
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    .prologue
    .line 1033
    monitor-enter p0

    :try_start_0
    const-string v13, "TimaService"

    const-string v14, "TIMA3: TUI init secret file"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v11, -0x1

    .line 1036
    .local v11, "ret":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v13

    const-string v14, "3.0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 1037
    const/4 v9, 0x0

    .line 1038
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1040
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    .line 1042
    const-string v13, "TimaService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot open secret file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1059
    :goto_0
    :try_start_2
    invoke-static {v9}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1060
    invoke-static {v4}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1064
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    monitor-exit p0

    return v11

    .line 1044
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v8, v13, [B

    .line 1045
    .local v8, "fileData":[B
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1046
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1047
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .local v5, "dis":Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v5, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1049
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v12

    .line 1050
    .local v12, "verified":[B
    if-nez v12, :cond_2

    .line 1051
    const-string v13, "TimaService"

    const-string v14, "Certificate chain verification failed!"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1053
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v12, v0, v1, v2}, Lcom/android/server/TimaService;->timaTuiInitSecret([BIILjava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v11

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1056
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileData":[B
    .end local v12    # "verified":[B
    :catch_0
    move-exception v6

    .line 1057
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v13, "TimaService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1059
    :try_start_7
    invoke-static {v9}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1060
    invoke-static {v4}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1033
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "ret":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1059
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "ret":I
    :catchall_1
    move-exception v13

    :goto_3
    :try_start_8
    invoke-static {v9}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1060
    invoke-static {v4}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1059
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileData":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v13

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1056
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .locals 15
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secret_id"    # Ljava/lang/String;

    .prologue
    .line 1068
    monitor-enter p0

    :try_start_0
    const-string v12, "TimaService"

    const-string v13, "TIMA3: TUI init secret via memory file"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v10, -0x1

    .line 1072
    .local v10, "ret":I
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v12

    const-string v13, "3.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1073
    if-nez p1, :cond_0

    .line 1074
    const-string v12, "TimaService"

    const-string v13, "PFD is null!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    const/4 v12, -0x1

    .line 1110
    :goto_0
    monitor-exit p0

    return v12

    .line 1077
    :cond_0
    if-gtz p2, :cond_1

    .line 1078
    :try_start_1
    const-string v12, "TimaService"

    const-string v13, "Memory file size is invalid"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    const/4 v12, -0x1

    goto :goto_0

    .line 1081
    :cond_1
    const/4 v7, 0x0

    .line 1082
    .local v7, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1084
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1085
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1086
    .end local v7    # "in":Ljava/io/InputStream;
    .local v8, "in":Ljava/io/InputStream;
    if-eqz v8, :cond_5

    .line 1087
    :try_start_4
    move/from16 v0, p2

    new-array v9, v0, [B

    .line 1088
    .local v9, "result":[B
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {v8, v9, v12, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1089
    .local v3, "bytes":I
    move/from16 v0, p2

    if-eq v3, v0, :cond_3

    .line 1090
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read error from Secret image memory file! read "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1091
    const/4 v10, -0x1

    .line 1106
    .end local v3    # "bytes":I
    .end local v9    # "result":[B
    :goto_1
    :try_start_5
    invoke-static {v6}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1107
    invoke-static {v8}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_2
    move v12, v10

    .line 1110
    goto :goto_0

    .line 1093
    .restart local v3    # "bytes":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "result":[B
    :cond_3
    :try_start_6
    invoke-virtual {p0, v9}, Lcom/android/server/TimaService;->verifyCertChain([B)[B

    move-result-object v11

    .line 1094
    .local v11, "verified":[B
    if-nez v11, :cond_4

    .line 1095
    const-string v12, "TimaService"

    const-string v13, "Certificate chain verification failed!"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1103
    .end local v3    # "bytes":I
    .end local v9    # "result":[B
    .end local v11    # "verified":[B
    :catch_0
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 1104
    .end local v8    # "in":Ljava/io/InputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_7
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception occurred: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1106
    :try_start_8
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1107
    invoke-static {v7}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1068
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v10    # "ret":I
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1097
    .restart local v3    # "bytes":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "result":[B
    .restart local v10    # "ret":I
    .restart local v11    # "verified":[B
    :cond_4
    :try_start_9
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {v11, v0, v1, v2}, Lcom/android/server/TimaService;->timaTuiInitSecret([BIILjava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 1101
    .end local v3    # "bytes":I
    .end local v9    # "result":[B
    .end local v11    # "verified":[B
    :cond_5
    const-string v12, "TimaService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot open "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 1106
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :goto_4
    :try_start_a
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1107
    invoke-static {v7}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1106
    :catchall_2
    move-exception v12

    goto :goto_4

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1103
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public declared-synchronized tuiLoadServer()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 906
    monitor-enter p0

    const/4 v0, 0x0

    .line 907
    .local v0, "START_IN_HERE":Z
    :try_start_0
    const-string v5, "TimaService"

    const-string v6, "TIMA3: in tuiLoadServer"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 911
    const-string v5, "TUI"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 912
    .local v2, "tuiBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 913
    const-string v5, "TimaService"

    const-string v6, "TIMA3: tlc_server for TUI already loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    .end local v2    # "tuiBinder":Landroid/os/IBinder;
    :goto_0
    monitor-exit p0

    return v4

    .line 916
    .restart local v2    # "tuiBinder":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v5, "TimaService"

    const-string v6, "Start tlc_server for TUI"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    if-eqz v0, :cond_1

    .line 922
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "/system/bin/tlc_server TUI"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 923
    .local v3, "tuiProcess":Ljava/lang/Process;
    const-string v5, "TimaService"

    const-string v6, "Start tlc_server for TUI done"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 925
    .end local v3    # "tuiProcess":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 926
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "TimaService"

    const-string v5, "Start tlc_server for TUI failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 906
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "tuiBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 930
    .restart local v2    # "tuiBinder":Landroid/os/IBinder;
    :cond_1
    :try_start_4
    const-string/jumbo v5, "persist.security.tlc.tui"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v5, "TimaService"

    const-string v6, "Start tlc_server for TUI done : setprop"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 936
    .end local v2    # "tuiBinder":Landroid/os/IBinder;
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .locals 3
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1293
    monitor-enter p0

    :try_start_0
    const-string v1, "TimaService"

    const-string v2, "TIMA3: TUI Register App Image"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1295
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1296
    :cond_0
    const-string v1, "TimaService"

    const-string v2, "Null pointer received!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1299
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaTuiRegAppImage(Ljava/lang/String;[B)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 12
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_file"    # Ljava/lang/String;

    .prologue
    .line 1306
    monitor-enter p0

    :try_start_0
    const-string v8, "TimaService"

    const-string v9, "TIMA3: TUI Register App Image File"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v7, 0x0

    .line 1310
    .local v7, "ret":[I
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v8

    const-string v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1311
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1312
    :cond_0
    const-string v8, "TimaService"

    const-string v9, "Null string received in tuiRegAppImageFile!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    const/4 v8, 0x0

    .line 1338
    :goto_0
    monitor-exit p0

    return-object v8

    .line 1316
    :cond_1
    const/4 v5, 0x0

    .line 1317
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1319
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 1321
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open App image file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1333
    :goto_1
    :try_start_2
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1334
    invoke-static {v0}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    move-object v8, v7

    .line 1338
    goto :goto_0

    .line 1323
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v4, v8, [B

    .line 1324
    .local v4, "fileData":[B
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1325
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1326
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1328
    invoke-static {p1, v4}, Lcom/android/server/TimaService;->timaTuiRegAppImage(Ljava/lang/String;[B)[I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v7

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1330
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileData":[B
    :catch_0
    move-exception v2

    .line 1331
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "TimaService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1333
    :try_start_7
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1334
    invoke-static {v0}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1306
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ret":[I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1333
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ret":[I
    :catchall_1
    move-exception v8

    :goto_4
    :try_start_8
    invoke-static {v5}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    .line 1334
    invoke-static {v0}, Lcom/android/server/TimaService;->closeQuietly(Ljava/io/InputStream;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1333
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileData":[B
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v8

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1330
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public declared-synchronized unloadTui()I
    .locals 2

    .prologue
    .line 968
    monitor-enter p0

    :try_start_0
    const-string v0, "TimaService"

    const-string v1, "TIMA3: unload TUI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-static {}, Lcom/android/server/TimaService;->timaUnloadTui()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 973
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .locals 23
    .param p1, "buffer"    # [B

    .prologue
    .line 1115
    monitor-enter p0

    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v2, 0x0

    .local v2, "aes_len":I
    const/4 v10, 0x0

    .local v10, "img_len":I
    const/16 v16, 0x0

    .local v16, "sig_len":I
    const/4 v6, 0x0

    .local v6, "cert_len":I
    const/4 v11, 0x0

    .line 1117
    .local v11, "len_without_cert":I
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    .local v4, "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 1120
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Secret image buffer is too small: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    const/16 p1, 0x0

    .line 1235
    .end local p1    # "buffer":[B
    :goto_0
    monitor-exit p0

    return-object p1

    .line 1124
    .restart local p1    # "buffer":[B
    :cond_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    :try_start_1
    aget-byte v20, p1, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v2, v20, 0x8

    .line 1125
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_2
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v2, v2, v20

    .line 1127
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted AES key length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    add-int/lit8 v8, v2, 0x2

    .line 1131
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_1

    .line 1132
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted AES key is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/16 p1, 0x0

    goto :goto_0

    .line 1136
    :cond_1
    add-int/lit8 v8, v8, 0x10

    .line 1137
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_2

    .line 1138
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IV is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1139
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 1142
    :cond_2
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_3
    aget-byte v20, p1, v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v10, v20, 0x18

    .line 1143
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_4
    aget-byte v20, p1, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    add-int v10, v10, v20

    .line 1144
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_5
    aget-byte v20, p1, v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    add-int v10, v10, v20

    .line 1145
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_6
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v10, v10, v20

    .line 1147
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted image length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    add-int/2addr v8, v10

    .line 1151
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v8, v0, :cond_3

    .line 1152
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Encrypted image is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 1156
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    .line 1157
    const-string v20, "TimaService"

    const-string v21, "No signature is included in secret image buffer, skip signature verification"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1115
    .end local v4    # "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v20

    :goto_1
    monitor-exit p0

    throw v20

    .line 1161
    .restart local v4    # "cert_array":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_7
    aget-byte v20, p1, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v16, v20, 0x8

    .line 1162
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_8
    aget-byte v20, p1, v9

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 1164
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Signature length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    add-int v8, v8, v16

    .line 1167
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v8, v0, :cond_5

    .line 1168
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Signature is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1169
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 1172
    :cond_5
    move v11, v8

    move v9, v8

    .line 1175
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :goto_2
    :try_start_9
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v0, v20

    if-ge v9, v0, :cond_7

    .line 1176
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    :try_start_a
    aget-byte v20, p1, v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v6, v20, 0x8

    .line 1177
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    :try_start_b
    aget-byte v20, p1, v8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v6, v6, v20

    .line 1178
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Certificate length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    add-int v20, v9, v6

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 1180
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Certificate is over buffer length: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1181
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1186
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_6
    :try_start_c
    const-string v20, "X509"

    invoke-static/range {v20 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v20

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual/range {v20 .. v21}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1189
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1196
    add-int v8, v9, v6

    .end local v9    # "i":I
    .restart local v8    # "i":I
    move v9, v8

    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2

    .line 1191
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v7

    .line 1192
    .local v7, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v20, "TimaService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1193
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1201
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :cond_7
    :try_start_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    .line 1202
    .local v5, "cert_chain":[Ljava/security/cert/X509Certificate;
    const-string v20, "X509"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v17

    .line 1203
    .local v17, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/16 v20, 0x0

    check-cast v20, Ljava/security/KeyStore;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1204
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v18

    .line 1205
    .local v18, "tms":[Ljavax/net/ssl/TrustManager;
    const/16 v20, 0x0

    aget-object v19, v18, v20

    check-cast v19, Ljavax/net/ssl/X509TrustManager;

    .line 1206
    .local v19, "xtm":Ljavax/net/ssl/X509TrustManager;
    const-string v20, "RSA"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v1}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 1207
    const-string v20, "TimaService"

    const-string v21, "Certificate chain is verified successfully"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v5, v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    check-cast v12, Ljava/security/interfaces/RSAPublicKey;

    .line 1211
    .local v12, "pubkey":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v13

    .line 1212
    .local v13, "pubkey_encoded":[B
    new-instance v15, Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v20, v11, 0x2

    array-length v0, v13

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 1213
    .local v15, "rb":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1, v11}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1214
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v14, v0, [B

    .line 1215
    .local v14, "pubkey_len":[B
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v20

    .line 1216
    const/16 v20, 0x1

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v14, v20

    .line 1218
    const-string v20, "TimaService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pubkey: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-byte v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v14, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1221
    const/16 v20, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v13, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 1223
    invoke-virtual {v15}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object p1

    .end local p1    # "buffer":[B
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1226
    .end local v5    # "cert_chain":[Ljava/security/cert/X509Certificate;
    .end local v8    # "i":I
    .end local v12    # "pubkey":Ljava/security/interfaces/RSAPublicKey;
    .end local v13    # "pubkey_encoded":[B
    .end local v14    # "pubkey_len":[B
    .end local v15    # "rb":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v17    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v18    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v19    # "xtm":Ljavax/net/ssl/X509TrustManager;
    .restart local v9    # "i":I
    .restart local p1    # "buffer":[B
    :catch_1
    move-exception v7

    .line 1227
    .local v7, "e":Ljava/security/cert/CertificateException;
    :try_start_f
    const-string v20, "TimaService"

    const-string v21, "Certificate chain cannot be verify!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1229
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catch_2
    move-exception v7

    .line 1230
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v20, "TimaService"

    const-string v21, "Certificate chain error!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1232
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catch_3
    move-exception v7

    .line 1233
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "TimaService"

    const-string v21, "Some other error happened"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v20, "TimaService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1235
    const/16 p1, 0x0

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1115
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .restart local v9    # "i":I
    :catchall_1
    move-exception v20

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_1
.end method
