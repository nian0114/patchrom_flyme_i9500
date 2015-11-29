.class public Lcom/android/server/am/PreferredPackageManager;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;,
        Lcom/android/server/am/PreferredPackageManager$PPMLogFormatter;,
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;,
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    }
.end annotation


# static fields
.field static final ACTIVITY_PAUSED:I = 0x5

.field static final ACTIVITY_RESUME_FINISHED:I = 0x4

.field static final ACTIVITY_RESUME_STARTED:I = 0x3

.field static DEBUG:Z = false

.field static DEBUG_LOGFILE_ENABLE:Z = false

.field static DEBUG_TRACE:Z = false

.field static final FIRST_START_PACKAGE_NUMBER:I = 0x5

.field static final PREFERRED_COUNT_DEVIDE_TERM:I = 0x5265c00

.field static final PREFERRED_DATA_SAVE_TERM:I = 0x1b7740

.field static final PREFERRED_MAX_COUNT:I = 0x32

.field static final SET_PREFERRED_PACKAGE_PSS_MSG:I = 0x2

.field static final START_TOP_PREFERRED_PACKAGES:I = 0x1

.field static final TAG:Ljava/lang/String; = "PreferredPackage"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field static final WRITE_PREFERRED_DATA_MSG:I = 0x6

.field private static mInstance:Lcom/android/server/am/PreferredPackageManager;


# instance fields
.field private final BLACK_LIST:[Ljava/lang/String;

.field final DELAY_FROM_ACTVITY_RESUME_TO_PREFERRED_START:I

.field private final INSTRUMENTATION_LIST:[Ljava/lang/String;

.field private final LOG_FILE_NAME:Ljava/lang/String;

.field final MAX_CANDIDATE_LIMIT:I

.field final MAX_PREF_STARTED_EMPTY_LIMIT:I

.field final SCORE_FOR_INDIRECT_RELATION:I

.field final SCORE_FOR_PREV:I

.field final SCORE_FOR_PREV_PREV:I

.field private mBgCount:I

.field private mFlags:I

.field private mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogger:Ljava/util/logging/Logger;

.field private mLowMemState:Z

.field private mOldAvailMemSize:J

.field private mOldBgCount:I

.field mPkgNameOfPrevActivity:Ljava/lang/String;

.field mPreferredPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPreferredStartedEmptyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrevPkgName:Ljava/lang/String;

.field mPrevPrevPkgName:Ljava/lang/String;

.field private mSamePackage:Z

.field private mScanning:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field mToStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTopPreferredPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mUserId:I

.field resumeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "com.android.contacts"

    aput-object v6, v5, v8

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->BLACK_LIST:[Ljava/lang/String;

    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "com.sec.android.app.popupuireceiver"

    aput-object v6, v5, v8

    const-string v6, "com.sec.android.app.servicemodeapp"

    aput-object v6, v5, v9

    const-string v6, "com.sec.android.app.setupwizard"

    aput-object v6, v5, v11

    const/4 v6, 0x3

    const-string v7, "com.sec.keystringscreen"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "com.salab.act"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "com.sec.android.app.tinym"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "com.android.packageinstaller"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "com.sec.android.app.SysDump"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "com.google.android.gsf.login"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "com.android.phone"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "com.samsung.android.app.headlines"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "com.sec.android.app.videoplayer"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "com.sec.android.app.camera"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "com.sec.android.app.parser"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "com.loaddata.ged"

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->INSTRUMENTATION_LIST:[Ljava/lang/String;

    const-string v5, "/data/log/ppm_log.log"

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->LOG_FILE_NAME:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mSamePackage:Z

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/am/PreferredPackageManager;->mOldAvailMemSize:J

    iput v10, p0, Lcom/android/server/am/PreferredPackageManager;->mOldBgCount:I

    iput v8, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    iput v10, p0, Lcom/android/server/am/PreferredPackageManager;->mFlags:I

    iput v10, p0, Lcom/android/server/am/PreferredPackageManager;->mUserId:I

    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    iput-object v12, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v12, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->resumeLock:Ljava/lang/Object;

    iput v11, p0, Lcom/android/server/am/PreferredPackageManager;->MAX_PREF_STARTED_EMPTY_LIMIT:I

    const/16 v5, 0x1f4

    iput v5, p0, Lcom/android/server/am/PreferredPackageManager;->DELAY_FROM_ACTVITY_RESUME_TO_PREFERRED_START:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    iput v11, p0, Lcom/android/server/am/PreferredPackageManager;->SCORE_FOR_PREV:I

    iput v9, p0, Lcom/android/server/am/PreferredPackageManager;->SCORE_FOR_PREV_PREV:I

    iput v9, p0, Lcom/android/server/am/PreferredPackageManager;->SCORE_FOR_INDIRECT_RELATION:I

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/server/am/PreferredPackageManager;->MAX_CANDIDATE_LIMIT:I

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "PackageScanner"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;-><init>(Lcom/android/server/am/PreferredPackageManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "ppm"

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mLogger:Ljava/util/logging/Logger;

    :try_start_0
    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v5, "/data/log/ppm_log.log"

    invoke-direct {v1, v5}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;)V

    .local v1, "handler":Ljava/util/logging/Handler;
    new-instance v0, Lcom/android/server/am/PreferredPackageManager$PPMLogFormatter;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/am/PreferredPackageManager$PPMLogFormatter;-><init>(Lcom/android/server/am/PreferredPackageManager$1;)V

    .local v0, "formatter":Ljava/util/logging/Formatter;
    invoke-virtual {v1, v0}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "formatter":Ljava/util/logging/Formatter;
    .end local v1    # "handler":Ljava/util/logging/Handler;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "PreferredPackage"

    const-string v6, "I/O error occurs while opening /data/log/ppm_log.log"

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v5, "PreferredPackage"

    const-string v6, "IllegalArgumentException occurs while opening /data/log/ppm_log.log"

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v5, "PreferredPackage"

    const-string v6, "NullPointerException occurs while opening /data/log/ppm_log.log"

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PreferredPackageManager;->handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/PreferredPackageManager;->handleActivityPaused(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->handleStartTopPreferredPackages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PreferredPackageManager;->handleUpdatePreferredPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/PreferredPackageManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/PreferredPackageManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/am/PreferredPackageManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/am/PreferredPackageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {v0}, Lcom/android/server/am/PreferredPackageManager;-><init>()V

    sput-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    const-string v0, "."

    .local v0, "delims":Ljava/lang/String;
    if-eqz p0, :cond_0

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_0
    return-object v1
.end method

.method private handleActivityPaused(Ljava/lang/String;J)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "lastPauseTime"    # J

    .prologue
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStatus : PAUSED          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppStatus : PAUSED          "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .local v1, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const-string v2, "PreferredPackage"

    const-string v3, "Preferred : cannot find resumed info.."

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred : update lastPauseTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preferred : update lastPauseTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->updateLastPauseTime(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    goto :goto_0
.end method

.method private handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppStatus : RESUME FINISHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppStatus : RESUME FINISHED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .local v1, "diff":Z
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageHistory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", diff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageHistory : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", diff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v3, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v3, :cond_5

    :goto_0
    return-void

    :cond_5
    invoke-virtual {v3, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->increaseUsageCounting()V

    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->updateIndirectScore(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->increaseScore(Ljava/lang/String;)V

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/PreferredPackageManager;->removeEmptyList(Ljava/lang/String;Z)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "name"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7
    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/PreferredPackageManager;->reportOnePprRecord(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)V

    goto :goto_0
.end method

.method private handleStartTopPreferredPackages(Ljava/lang/String;)V
    .locals 12
    .param p1, "resumedPkgName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x40

    const/4 v8, 0x0

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    const-string v1, "PPM_startTop"

    invoke-static {v10, v11, v1, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreferredPackage"

    const-string v4, "Not enough bg procs. Don\'t start preferred procs"

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_2

    const-string v1, "Not enough bg procs. Don\'t start preferred procs"

    invoke-virtual {p0, v1}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    iget v1, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    iput v1, p0, Lcom/android/server/am/PreferredPackageManager;->mOldBgCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "startTime":J
    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->selectTopPreferredPkg(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_6

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "PreferredPackage"

    const-string v4, "Error selecting TopPP"

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_5

    const-string v1, "Error selecting TopPP"

    invoke-virtual {p0, v1}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_5
    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->startPreferredPackages()V

    const-string v1, "PreferredPackage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total bgcount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TopPP size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total bgcount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " TopPP size : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_7
    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v1, :cond_2

    const-string v1, "PPM_startTop"

    invoke-static {v10, v11, v1, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private handleUpdatePreferredPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process starts :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .local v1, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, " -> cannot find in PP info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    iput p2, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, " -> State updated as BINDED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private increaseScore(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scoring : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_1
    move-object v1, p1

    .local v1, "resumedPkgName":Ljava/lang/String;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v0, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseScore(Ljava/lang/String;I)V

    .end local v0    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .restart local v0    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseScore(Ljava/lang/String;I)V

    .end local v0    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->BLACK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isInstrumentList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->INSTRUMENTATION_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private removeEmptyList(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "update"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportOnePprRecord(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)V
    .locals 4
    .param p1, "ppr"    # Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .prologue
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreferredPackage"

    const-string v1, "***********************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "PreferredPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report one ppr **"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "** to USS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getLastPauseTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportPprChange(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private selectBestRelationPkg(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)Ljava/lang/String;
    .locals 11
    .param p1, "cur"    # Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    if-nez v9, :cond_0

    move-object v5, v8

    :goto_0
    return-object v5

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v3, "prev":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v3, :cond_1

    const-string v7, "PreferredPackage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot find package record for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .local v5, "topPkg":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v9

    const/4 v6, 0x0

    .local v6, "topScore":I
    :try_start_0
    iget-object v10, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v2

    .local v2, "limit":I
    if-nez v2, :cond_2

    monitor-exit v9

    move-object v5, v8

    goto :goto_0

    :cond_2
    if-ge v2, v7, :cond_6

    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v7, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    iget-object v0, v7, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    .local v0, "candidate":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getIndirectScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, "score":I
    sget-boolean v7, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "indirect scoring : selectBestRelationPkg candidate = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " score="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v7, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "indirect scoring : selectBestRelationPkg candidate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " score="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_4
    if-ge v6, v4, :cond_5

    move-object v5, v0

    move v6, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "candidate":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v4    # "score":I
    :cond_6
    move v2, v7

    goto :goto_1

    .restart local v1    # "i":I
    :cond_7
    if-nez v5, :cond_a

    sget-boolean v7, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "PreferredPackage"

    const-string v8, "We cannot find package that meet two conditions.. so return top score package"

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v7, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v7, :cond_9

    const-string v7, "We cannot find package that meet two conditions.. so return top score package"

    invoke-virtual {p0, v7}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_9
    iget-object v7, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    iget-object v7, v7, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    monitor-exit v9

    move-object v5, v7

    goto/16 :goto_0

    :cond_a
    monitor-exit v9

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "limit":I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private selectTopPreferredPkg(Ljava/lang/String;)I
    .locals 13
    .param p1, "resumedPkgName"    # Ljava/lang/String;

    .prologue
    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v9, :cond_0

    const-wide/16 v10, 0x40

    const-string v9, "PPM_selectTop"

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    const/4 v2, 0x0

    .local v2, "addedCount":I
    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v3, "currentPkgPpr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v3, :cond_1

    const/4 v9, -0x1

    :goto_0
    return v9

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v8, "topPackageNames":Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v3}, Lcom/android/server/am/PreferredPackageManager;->selectBestRelationPkg(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)Ljava/lang/String;

    move-result-object v7

    .local v7, "topPackage":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "selected package using relation is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selected package using relation is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_5

    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "(S), "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v6, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v6, :cond_5

    iget v9, v6, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    const/4 v11, 0x4

    if-ne v9, v11, :cond_5

    iget-object v11, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    iget-object v12, v6, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_5
    :try_start_2
    iget-object v11, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_7

    const/4 v1, 0x0

    .local v1, "addedCnt":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_7

    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0, v5}, Lcom/android/server/am/PreferredPackageManager;->isBlackList(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "(E), "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v9, 0x2

    if-lt v1, v9, :cond_b

    .end local v1    # "addedCnt":I
    .end local v4    # "i":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_7
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTopPreferredPackages : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTopPreferredPackages : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_9
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean v9, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v9, :cond_a

    const-wide/16 v10, 0x40

    const-string v9, "PPM_selectTop"

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v0    # "N":I
    .restart local v6    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v9

    .end local v6    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .end local v7    # "topPackage":Ljava/lang/String;
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .restart local v0    # "N":I
    .restart local v1    # "addedCnt":I
    .restart local v4    # "i":I
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "topPackage":Ljava/lang/String;
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .end local v0    # "N":I
    .end local v1    # "addedCnt":I
    .end local v4    # "i":I
    .end local v5    # "pkg":Ljava/lang/String;
    :catchall_2
    move-exception v9

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method private triggerScannerPackageByBGCountChecked(Ljava/lang/String;)V
    .locals 2
    .param p1, "resumedPkgName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/am/PreferredPackageManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/PreferredPackageManager$2;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    .local v0, "checkAndTrigger":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateIndirectScore(Ljava/lang/String;)V
    .locals 4
    .param p1, "curPkg"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_0
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indirect scoring : updateIndirectScore() mPrevPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indirect scoring : updateIndirectScore() mPrevPrev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indirect scoring : updateIndirectScore() mPrevPrevPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrevPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indirect scoring : updateIndirectScore() mPrevPrevPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v0, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v0, :cond_6

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package record for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A->B->A pattern. Skip indirect scoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseIndirectScore(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const-string v4, "ACTIVITY MANAGER SERVICES (dumpsys activity preferred)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dump Records : \n\n--- Counts : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "k":I
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v2, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_0
    const/4 v1, 0x0

    const-string v4, "\n\n--- Scores  \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .restart local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DirectScore     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndirectScore   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getIndirectScoreListString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->writePackagesInfoToGoogleXml()V

    return-void
.end method

.method protected init(Lcom/android/server/am/ActivityManagerService;II)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput p2, p0, Lcom/android/server/am/PreferredPackageManager;->mFlags:I

    iput p3, p0, Lcom/android/server/am/PreferredPackageManager;->mUserId:I

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->updatePreferredPackagePolicy()V

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->readPackagesFromGoogleXml()V

    return-void
.end method

.method isTopPreferredPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityStatus(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 14
    .param p1, "kind"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    move-object/from16 v9, p3

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/am/PreferredPackageManager;->isInstrumentList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    if-eqz v9, :cond_4

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/am/PreferredPackageManager;->isInstrumentList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    move-object/from16 v6, p2

    .local v6, "n":Ljava/lang/String;
    if-eqz v9, :cond_2

    iget-object v6, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_2
    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is in instrumentation list.. so skip it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "n":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object/from16 v7, p2

    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v9, :cond_5

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_5
    const/4 v10, 0x3

    if-ne p1, v10, :cond_8

    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AppStatus : RESUME STARTED  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_6
    iget-object v11, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v8, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v8, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_7

    new-instance v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .end local v8    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    invoke-direct {v8, p0, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    .restart local v8    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->uid:I

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v12, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iput-wide v12, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPss:J

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->processName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "PreferredPackage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New app started : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v11

    goto/16 :goto_0

    .end local v8    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_8
    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-static {v10, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .local v3, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "b":Landroid/os/Bundle;
    const-string v10, "name"

    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v10, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_0
    const-string v10, "reason"

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-wide/16 v4, 0x0

    .local v4, "lastPauseTime":J
    if-eqz v9, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_9
    const-string v10, "lastPauseTime"

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method notifyMemoryAndBGProcStatus(ZI)V
    .locals 3
    .param p1, "newState"    # Z
    .param p2, "bgProcessCount"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    if-eq v0, p1, :cond_2

    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "PreferredPackage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set memory state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "low mem state"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set memory state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4

    const-string v0, "low mem state"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    :cond_2
    iput p2, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    return-void

    :cond_3
    const-string v0, "normal state"

    goto :goto_0

    :cond_4
    const-string v0, "normal state"

    goto :goto_1
.end method

.method processDiedPreferred(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "killedByAMS"    # Z

    .prologue
    const/4 v5, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStatus : DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byAMS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .local v1, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, " -> cannot find in PP info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    iget v3, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    if-eq v3, v5, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, " -> State updated as DIED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/PreferredPackageManager;->recordLog(Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/PreferredPackageManager;->removeEmptyList(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method readPackagesFromGoogleXml()V
    .locals 31

    .prologue
    :try_start_0
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PreferredPackage"

    const-string v28, "readPackagesFromGoogleXml !!"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .local v3, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .local v20, "now":J
    const-wide/32 v28, 0x48190800

    sub-long v10, v20, v28

    .local v10, "beginTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v28, "usagestats"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    :cond_1
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mUsageStatsManager is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0, v1}, Landroid/app/usage/UsageStatsManager;->queryPpmInfo(JJ)Ljava/util/List;

    move-result-object v18

    .local v18, "mStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    new-instance v4, Lcom/android/server/am/PreferredPackageManager$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/PreferredPackageManager$3;-><init>(Lcom/android/server/am/PreferredPackageManager;)V

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/usage/UsageStats;

    .local v25, "tmp":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .local v5, "pkg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UsageStats list is  !!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getLaunchCount()J

    move-result-wide v12

    .local v12, "count":J
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v26

    .local v26, "usageTime":J
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    .local v6, "lastPauseTime":J
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getScoreListString()Ljava/lang/String;

    move-result-object v8

    .local v8, "scoreListString":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getIndirectScoreMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    .local v24, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .local v22, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v22, :cond_9

    :try_start_2
    new-instance v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, "pkgName":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UsageStats New indirect score"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .local v14, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/usage/PreferredScoreInfo;

    .local v23, "psi":Landroid/app/usage/PreferredScoreInfo;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    new-instance v28, Landroid/app/usage/PreferredScoreInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/usage/PreferredScoreInfo;->score:I

    move/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v14, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UsageStats New score info"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .end local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "lastPauseTime":J
    .end local v8    # "scoreListString":Ljava/lang/String;
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    .end local v10    # "beginTime":J
    .end local v12    # "count":J
    .end local v14    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "mStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "now":J
    .end local v23    # "psi":Landroid/app/usage/PreferredScoreInfo;
    .end local v24    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    .end local v25    # "tmp":Landroid/app/usage/UsageStats;
    .end local v26    # "usageTime":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    return-void

    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "lastPauseTime":J
    .restart local v8    # "scoreListString":Ljava/lang/String;
    .restart local v10    # "beginTime":J
    .restart local v12    # "count":J
    .restart local v18    # "mStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .restart local v20    # "now":J
    .restart local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v24    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    .restart local v25    # "tmp":Landroid/app/usage/UsageStats;
    .restart local v26    # "usageTime":J
    :cond_9
    :try_start_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->updateLastPauseTime(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v3, v22

    .end local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    :try_start_6
    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .end local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :catchall_1
    move-exception v4

    move-object/from16 v3, v22

    .end local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    goto :goto_2
.end method

.method recordLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/server/am/PreferredPackageManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/PreferredPackageManager$1;-><init>(Lcom/android/server/am/PreferredPackageManager;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method setPackagePid(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->isBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method startPreferredPackages()V
    .locals 10

    .prologue
    iget-object v7, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "pkg":Ljava/lang/String;
    const-string v6, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget v8, p0, Lcom/android/server/am/PreferredPackageManager;->mFlags:I

    iget v9, p0, Lcom/android/server/am/PreferredPackageManager;->mUserId:I

    invoke-interface {v6, v3, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->realStartPreferredPackages(Landroid/content/pm/ApplicationInfo;)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .local v4, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v4, :cond_1

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    :cond_1
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :goto_1
    const/4 v6, 0x1

    :try_start_5
    invoke-direct {p0, v3, v6}, Lcom/android/server/am/PreferredPackageManager;->removeEmptyList(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_1

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v6
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .local v5, "re":Ljava/lang/RuntimeException;
    :try_start_a
    const-string v6, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " some problems. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void
.end method

.method protected updatePreferredPackagePolicy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "sys.ppm.debug"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    const-string v1, "sys.ppm.debug_logfile_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    const-string v1, "sys.ppm.debug_trace"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    const-string v1, "sys.ppm.reset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "reset":Z
    if-eqz v0, :cond_0

    const-string v1, "PreferredPackage"

    const-string v2, "Reset every PPM records!"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writePackagesInfoToGoogleXml()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreferredPackage"

    const-string v1, "writePackagesInfoToGoogleXml !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->prepareShutdown()V

    :cond_1
    return-void
.end method
