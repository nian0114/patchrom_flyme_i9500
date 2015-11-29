.class public Lcom/android/server/LpnetManagerService;
.super Landroid/os/ILpnetManager$Stub;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$IniFile;,
        Lcom/android/server/LpnetManagerService$DBManager;,
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
    }
.end annotation


# static fields
.field private static final ACTION_TRIGGER_IDLE:Ljava/lang/String; = "ACTION_TRIGGER_IDLE"

.field private static final ACTION_TRIGGER_UNUSED_APP_LRU:Ljava/lang/String; = "ACTION_TRIGGER_UNUSED_APP_LRU "

.field private static final APP_FREEZER_LOG:Z

.field private static final AUTO_FREEZE_ENABLED:Ljava/lang/String; = "autoFreezeEnabled"

.field private static final AUTO_FREEZE_UNUSED_APPS_TIME_LIMIT:Ljava/lang/String; = "autoFreezeUnusedAppTime"

.field private static final AUTO_FREEZE_WITH_OWN_LRU:Ljava/lang/String; = "autoFreezeWithOwnLRU"

.field public static AppStartRestrictionInScreenOn:Z = false

.field private static final BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final COLUMN_NAME_EXTRAS_0:Ljava/lang/String; = "extras_0"

.field private static final COLUMN_NAME_EXTRAS_1:Ljava/lang/String; = "extras_1"

.field private static final COLUMN_NAME_EXTRAS_2:Ljava/lang/String; = "extras_2"

.field private static final COLUMN_NAME_EXTRAS_3:Ljava/lang/String; = "extras_3"

.field private static final COLUMN_NAME_EXTRAS_4:Ljava/lang/String; = "extras_4"

.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/misc/lpnet/lpnetConfig"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "APPFREEZER_INIT"

.field private static final DISABLE_LRU:Ljava/lang/String; = "disableLRU"

.field private static final ENABLE_APPSTART_RESTRICT_IN_SCREEN_ON:Ljava/lang/String; = "enableAppStartRestrictScreenOn"

.field private static final ENABLE_FREEZE_BOOT_COMPLETED:Ljava/lang/String; = "enableFreezeBootCompleted"

.field private static final ENABLE_IMPORTANCE_CHECK:Ljava/lang/String; = "enableImportanceCheck"

.field private static final ENABLE_IMPORTANCE_FGONLY:Ljava/lang/String; = "enableImportanceFGOnly"

.field private static final ENABLE_SOLUTION:Ljava/lang/String; = "enableSolution"

.field private static final ENABLE_TIME_SHIFT:Ljava/lang/String; = "enableTimeShift"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final FEATURE_ENABLE_APPFREEZER:Z = true

.field public static FEATURE_ENABLE_LPC:Z = false

.field private static final FREEZE_IMMEDIATE:Ljava/lang/String; = "freezeImmediate"

.field private static final INACTIVITY_REPEAT_TIME:Ljava/lang/String; = "inActivityRepeatTime"

.field private static final INCLUDE_INSTALLED_TIME_FOR_LRU:Ljava/lang/String; = "includeInstalledTimeForLRU"

.field private static final INCLUDE_SYS_APP_FOR_LRU:Ljava/lang/String; = "includeSysAppForLru"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final LAST_USED:Ljava/lang/String; = "LAST_USED"

.field private static final LAST_USED_COLLECTION_INTERVAL:Ljava/lang/String; = "usageCollectionInterval"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final LRU_BOOT_ACTION:J = 0x1b7740L

.field private static final LRU_CHECK_INTERVAL:Ljava/lang/String; = "lruCheckInterval"

.field private static final NETWORK_STAT:Ljava/lang/String; = "NETWORK_STAT"

.field private static final NETWORK_STAT_LRU:Ljava/lang/String; = "NETWORK_STAT_LRU"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final SCREEN_OFF_ACTION_TIME:Ljava/lang/String; = "screenOffActionTime"

.field private static final TAG:Ljava/lang/String; = "LpnetManagerService"

.field private static final TOUCHWIZHOME_INTERACTION_ENABLED:Z = false

.field private static final TRAFFIC_STAT_COLLECTOR:I = 0x7d0

.field private static final UNUSED_APPS_PERIOD_FOR_LRU_DB_DUMP:Ljava/lang/String; = "unusedPeriod"

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"

.field private static final WHITELIST:Z = true

.field private static final WHITELIST_ALL:Ljava/lang/String; = "whitelistAll"

.field private static final WHITELIST_ALL_GCM:Ljava/lang/String; = "whitelistAllGCM"

.field private static globalCurr:J

.field private static final isChinaNal:Ljava/lang/String;

.field private static timeShift:J


# instance fields
.field private final SMART_MGR_URI:Landroid/net/Uri;

.field private final SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

.field private allowedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Landroid/content/IntentFilter;

.field private lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAlarm:Landroid/app/AlarmManager;

.field private mAutoFreezeEnabled:Z

.field private mAutoRunBasedFreeze:Z

.field private mBlackListedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

.field public volatile mDataConnectionIsConnected:Z

.field public volatile mDataConnectivityAtScreenOff:Z

.field private mDefaultPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableLRU:Z

.field private mEnableAppStartRestrictionInScreenOn:Z

.field private mEnableImportanceCheck:Z

.field private mEnableImportanceFGOnly:Z

.field private mEnableTimeShift:Z

.field private mFirstLRUFreezeAfterScreenOff:Z

.field private mFreezeImmediate:Z

.field private mFreezeWithOwnLRU:Z

.field private volatile mGCMMessageReceivedTime:J

.field private final mIdleTrafficMapLock:Ljava/lang/Object;

.field private mIdleTriggerIntent:Landroid/app/PendingIntent;

.field private mInactivityRepeatTime:J

.field private mIncludeInstalledTimeForLRU:Z

.field private mIncludeSystemAppsForLRU:Z

.field private mIntLruCheckInterval:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentRecvForPM:Landroid/content/BroadcastReceiver;

.field private mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

.field private mLRUIntent:Landroid/app/PendingIntent;

.field private final mLRUTrafficMapLock:Ljava/lang/Object;

.field private mLastUsedTimeCollectionInterval:J

.field private mLastUsedTriggerIntent:Landroid/app/PendingIntent;

.field private mLruMissedImmediateFreezeTime:J

.field private volatile mMissedLRUFiring:Z

.field private mNetworkStatIntent:Landroid/app/PendingIntent;

.field private mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

.field private mNotForceStoppedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLRUfreezedTime:J

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mSMPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffActionTime:J

.field private volatile mScreenOn:Z

.field private mSmartManagerObserver:Landroid/database/ContentObserver;

.field private mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

.field private mSolnEnabled:Z

.field private mTargetPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPkgLock:Ljava/lang/Object;

.field private mTrafficStatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_RX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatMap_LRU_TX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUnusedAutoFreezeTime:J

.field private mUnusedPeriod:I

.field private mUserFSPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListAll:Z

.field private mWhiteListGCM:Z

.field private final nHandler:Landroid/os/Handler;

.field private networkFilter:Landroid/content/IntentFilter;

.field private pkgFilter:Landroid/content/IntentFilter;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LpnetManagerService;->AppStartRestrictionInScreenOn:Z

    sput-wide v2, Lcom/android/server/LpnetManagerService;->globalCurr:J

    sput-wide v2, Lcom/android/server/LpnetManagerService;->timeShift:J

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.samsung.android.sm/force_enable_lpc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LpnetManagerService;->isChinaNal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v8, 0x36ee80

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/ILpnetManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    iput-boolean v3, p0, Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z

    iput-wide v6, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    iput-wide v8, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    iput-wide v8, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J

    iput v2, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    iput-wide v6, p0, Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    iput-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mFirstLRUFreezeAfterScreenOff:Z

    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm/AppFreezerWhiteList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    new-instance v0, Lcom/android/server/LpnetManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$1;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LpnetManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$2;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/LpnetManagerService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$3;-><init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/LpnetManagerService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$4;-><init>(Lcom/android/server/LpnetManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/LpnetManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$5;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "NETWORK_STAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "NETWORK_STAT_LRU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->networkFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->networkFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.sm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.sec.spp.push"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.freezer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->initializeFromConfigFile()V

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "LAST_USED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->intentReceiverInitialization()V

    :cond_2
    const-string v0, "LpnetManagerService"

    const-string v1, "LpnetManagerService created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/LpnetManagerService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/LpnetManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/LpnetManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/LpnetManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LpnetManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LpnetManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/LpnetManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mFirstLRUFreezeAfterScreenOff:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/LpnetManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/LpnetManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LpnetManagerService;->screenOffAction(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/LpnetManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mMissedLRUFiring:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/LpnetManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/LpnetManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/android/server/LpnetManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/server/LpnetManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/LpnetManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/LpnetManagerService;Lcom/android/server/LpnetManagerService$DBManager;)Lcom/android/server/LpnetManagerService$DBManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Lcom/android/server/LpnetManagerService$DBManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/LpnetManagerService;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/LpnetManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->idleAction()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/LpnetManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    return v0
.end method

.method static synthetic access$5200()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/LpnetManagerService;->globalCurr:J

    return-wide v0
.end method

.method static synthetic access$5202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    sput-wide p0, Lcom/android/server/LpnetManagerService;->globalCurr:J

    return-wide p0
.end method

.method static synthetic access$5300(Lcom/android/server/LpnetManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->freezeBasedOnLRU(Z)V

    return-void
.end method

.method static synthetic access$5400()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/LpnetManagerService;->timeShift:J

    return-wide v0
.end method

.method static synthetic access$5402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    sput-wide p0, Lcom/android/server/LpnetManagerService;->timeShift:J

    return-wide p0
.end method

.method static synthetic access$5500(Lcom/android/server/LpnetManagerService;I)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/LpnetManagerService;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->updateDBForLRU(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LpnetManagerService;->freezerActionNotificationBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LpnetManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/LpnetManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->unFreeze(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/LpnetManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->enableDisableSoln(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LpnetManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private enableDisableSoln(Z)V
    .locals 10
    .param p1, "pEnableSolution"    # Z

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDisableSoln called pEnableSolution:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSolnEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    if-ne v0, p1, :cond_3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->initializeFromConfigFile()V

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    const-string v1, "NETWORK_STAT_LRU"

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    sub-long/2addr v2, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->initializeFromConfigFile()V

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->getDBValues(Z)V

    iput-boolean p1, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V

    invoke-direct {p0}, Lcom/android/server/LpnetManagerService;->intentReceiverInitialization()V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    const-string v1, "NETWORK_STAT_LRU"

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    sub-long/2addr v2, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    :cond_5
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_6
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    iget-wide v2, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private freezeBasedOnLRU(Z)V
    .locals 66
    .param p1, "alarmBasedFreeze"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/telephony/TelephonyManager;

    .local v45, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :cond_0
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freezeBasedOnLRU() return! call state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v45 .. v45}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freezeBasedOnLRU(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-nez v5, :cond_7

    :try_start_0
    const-string v5, "android.os.SmartManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v54

    .local v54, "smartManagerClass":Ljava/lang/Class;
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .local v14, "allmethods":[Ljava/lang/reflect/Method;
    move-object/from16 v16, v14

    .local v16, "arr$":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    .local v39, "len$":I
    const/16 v31, 0x0

    .local v31, "i$":I
    move/from16 v32, v31

    .end local v16    # "arr$":[Ljava/lang/reflect/Method;
    .end local v31    # "i$":I
    .end local v39    # "len$":I
    .local v32, "i$":I
    :goto_1
    move/from16 v0, v32

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    aget-object v47, v16, v32

    .local v47, "method":Ljava/lang/reflect/Method;
    if-eqz v47, :cond_3

    invoke-virtual/range {v47 .. v47}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getLeastRecentlyUsedAppList"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    .local v49, "obj":Ljava/lang/Object;
    if-eqz v49, :cond_3

    check-cast v49, [Ljava/lang/String;

    .end local v49    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v49

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    .local v58, "theLRUList":[Ljava/lang/String;
    move-object/from16 v17, v58

    .local v17, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    .local v40, "len$":I
    const/16 v31, 0x0

    .end local v32    # "i$":I
    .restart local v31    # "i$":I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, v40

    if-ge v0, v1, :cond_3

    aget-object v59, v17, v31

    .local v59, "thePackage":Ljava/lang/String;
    if-eqz v59, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v31    # "i$":I
    .end local v40    # "len$":I
    .end local v58    # "theLRUList":[Ljava/lang/String;
    .end local v59    # "thePackage":Ljava/lang/String;
    :cond_3
    add-int/lit8 v31, v32, 0x1

    .restart local v31    # "i$":I
    move/from16 v32, v31

    .end local v31    # "i$":I
    .restart local v32    # "i$":I
    goto :goto_1

    .end local v14    # "allmethods":[Ljava/lang/reflect/Method;
    .end local v32    # "i$":I
    .end local v47    # "method":Ljava/lang/reflect/Method;
    .end local v54    # "smartManagerClass":Ljava/lang/Class;
    :catch_0
    move-exception v29

    .local v29, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v29    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_4
    :goto_3
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    .local v8, "interval":J
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mFirstLRUFreezeAfterScreenOff:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mFirstLRUFreezeAfterScreenOff:Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    if-eqz v5, :cond_2f

    const-wide/16 v6, 0x7d0

    cmp-long v5, v8, v6

    if-lez v5, :cond_2f

    const-string v7, "NETWORK_STAT_LRU"

    const-wide/16 v10, 0x7d0

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    .end local v8    # "interval":J
    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/LpnetManagerService;->mPreviousLRUfreezedTime:J

    goto/16 :goto_0

    :catch_1
    move-exception v29

    .local v29, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .end local v29    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v29

    .local v29, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    .end local v29    # "e":Ljava/lang/ClassNotFoundException;
    :cond_7
    const-string v50, "android"

    .local v50, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v6, "usagestats"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    .local v4, "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/AppOpsManager;

    .local v41, "mAppOpsManager":Landroid/app/AppOpsManager;
    if-eqz v41, :cond_2e

    if-eqz v4, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .local v24, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    .local v30, "endTime":Ljava/util/Calendar;
    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .local v18, "beginTime":Ljava/util/Calendar;
    const/4 v5, 0x5

    const/4 v6, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_8

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode calling with params packagename uid mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v5, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const/4 v5, 0x4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v55

    .local v55, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const/16 v5, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/4 v7, 0x3

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_9

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode calling with params packagename uid mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_a

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stats length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Begin Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " End Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual/range {v30 .. v30}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Curr Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v24

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v61, Ljava/util/HashMap;

    invoke-direct/range {v61 .. v61}, Ljava/util/HashMap;-><init>()V

    .local v61, "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/app/usage/UsageStats;

    .local v60, "u":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v60 .. v60}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Long;

    invoke-virtual/range {v60 .. v60}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v61

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .end local v60    # "u":Landroid/app/usage/UsageStats;
    :cond_b
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .local v12, "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/16 v27, 0x0

    .local v27, "defaultLastUsedTime":I
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .local v48, "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v53

    .local v53, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v53, :cond_4

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v31

    move/from16 v28, v27

    .end local v27    # "defaultLastUsedTime":I
    .end local v31    # "i$":Ljava/util/Iterator;
    .local v28, "defaultLastUsedTime":I
    :cond_c
    :goto_6
    :try_start_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v57, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/16 v19, 0x0

    .local v19, "chnFreezerPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-eqz v5, :cond_15

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v32, 0x0

    .restart local v32    # "i$":I
    :goto_7
    move/from16 v0, v32

    move/from16 v1, v39

    if-ge v0, v1, :cond_d

    aget-object v51, v16, v32

    .local v51, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v19, v51

    .end local v51    # "pkg":Ljava/lang/String;
    :cond_d
    if-eqz v19, :cond_c

    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v39    # "len$":I
    :cond_e
    const/16 v56, 0x0

    .local v56, "targetPkg":Ljava/lang/String;
    if-eqz v19, :cond_16

    move-object/from16 v56, v19

    :goto_8
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ImpValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ImpValueReason :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", LRU is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v43, 0x0

    .local v43, "mFreezeCondition":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-eqz v5, :cond_17

    move-object/from16 v0, v57

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_f

    const/16 v43, 0x1

    :cond_f
    :goto_9
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFreezeCondition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v43, :cond_1c

    move-object/from16 v0, v61

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Long;

    .local v38, "lastUseTimeLong":Ljava/lang/Long;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v1, v5}, Lcom/android/server/LpnetManagerService;->isActiveTrafficExisting(Ljava/lang/String;Z)Z

    move-result v13

    .local v13, "activeTraffic":Z
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_10

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "targetPkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastUseTimeLong: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v38, :cond_1b

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .local v36, "lastUseTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    sub-long v6, v24, v6

    cmp-long v5, v6, v36

    if-lez v5, :cond_19

    const/16 v34, 0x1

    .local v34, "isUnusedAppTimeExpired":Z
    :goto_a
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_11

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProcessName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ImpValue :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", LRU is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lastUseTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-nez p1, :cond_12

    const/16 v34, 0x1

    const/4 v13, 0x0

    :cond_12
    const-string v6, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canFreeze:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v13, :cond_1a

    const/4 v5, 0x1

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v34, :cond_13

    if-nez v13, :cond_13

    move-object/from16 v0, v56

    invoke-interface {v12, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUBasedMap put targetPkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v38

    move-object/from16 v1, v56

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_13
    move/from16 v27, v28

    .end local v13    # "activeTraffic":Z
    .end local v28    # "defaultLastUsedTime":I
    .end local v34    # "isUnusedAppTimeExpired":Z
    .end local v36    # "lastUseTime":J
    .end local v38    # "lastUseTimeLong":Ljava/lang/Long;
    .restart local v27    # "defaultLastUsedTime":I
    :goto_c
    move/from16 v28, v27

    .end local v27    # "defaultLastUsedTime":I
    .restart local v28    # "defaultLastUsedTime":I
    goto/16 :goto_6

    .end local v43    # "mFreezeCondition":Z
    .end local v56    # "targetPkg":Ljava/lang/String;
    .restart local v16    # "arr$":[Ljava/lang/String;
    .restart local v32    # "i$":I
    .restart local v39    # "len$":I
    .restart local v51    # "pkg":Ljava/lang/String;
    :cond_14
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_7

    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v32    # "i$":I
    .end local v39    # "len$":I
    .end local v51    # "pkg":Ljava/lang/String;
    :cond_15
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v57

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .local v15, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v15, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    goto/16 :goto_6

    .end local v15    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v29

    .local v29, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_6

    .end local v29    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v56    # "targetPkg":Ljava/lang/String;
    :cond_16
    :try_start_4
    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v56, v0

    goto/16 :goto_8

    .restart local v43    # "mFreezeCondition":Z
    :cond_17
    move-object/from16 v0, v57

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-le v5, v6, :cond_f

    move-object/from16 v0, v57

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-ne v5, v6, :cond_18

    move-object/from16 v0, v57

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v6, 0x4

    if-le v5, v6, :cond_f

    move-object/from16 v0, v57

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_f

    :cond_18
    const/16 v43, 0x1

    goto/16 :goto_9

    .restart local v13    # "activeTraffic":Z
    .restart local v36    # "lastUseTime":J
    .restart local v38    # "lastUseTimeLong":Ljava/lang/Long;
    :cond_19
    const/16 v34, 0x0

    goto/16 :goto_a

    .restart local v34    # "isUnusedAppTimeExpired":Z
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_b

    .end local v34    # "isUnusedAppTimeExpired":Z
    .end local v36    # "lastUseTime":J
    :cond_1b
    if-nez v13, :cond_1d

    move-object/from16 v0, v56

    invoke-interface {v12, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUBasedMap put targetPkg :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultLastUsedTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Long;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "defaultLastUsedTime":I
    .restart local v27    # "defaultLastUsedTime":I
    move/from16 v0, v28

    int-to-long v6, v0

    :try_start_5
    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v56

    invoke-interface {v12, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_c

    .end local v13    # "activeTraffic":Z
    .end local v19    # "chnFreezerPackage":Ljava/lang/String;
    .end local v38    # "lastUseTimeLong":Ljava/lang/Long;
    .end local v43    # "mFreezeCondition":Z
    .end local v53    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v56    # "targetPkg":Ljava/lang/String;
    .end local v57    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_4
    move-exception v29

    .local v29, "e":Landroid/os/RemoteException;
    :goto_d
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in freezeBasedOnLRU Local Msg is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v29 .. v29}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .end local v27    # "defaultLastUsedTime":I
    .end local v29    # "e":Landroid/os/RemoteException;
    .restart local v19    # "chnFreezerPackage":Ljava/lang/String;
    .restart local v28    # "defaultLastUsedTime":I
    .restart local v43    # "mFreezeCondition":Z
    .restart local v53    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v56    # "targetPkg":Ljava/lang/String;
    .restart local v57    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1c
    :try_start_6
    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notAllowedPackages add :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v57

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    move/from16 v27, v28

    .end local v28    # "defaultLastUsedTime":I
    .restart local v27    # "defaultLastUsedTime":I
    goto/16 :goto_c

    .end local v19    # "chnFreezerPackage":Ljava/lang/String;
    .end local v27    # "defaultLastUsedTime":I
    .end local v43    # "mFreezeCondition":Z
    .end local v56    # "targetPkg":Ljava/lang/String;
    .end local v57    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v28    # "defaultLastUsedTime":I
    :cond_1e
    const/16 v20, 0x0

    .local v20, "count":I
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v46

    .local v46, "mapSize":I
    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUBasedMap size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Landroid/media/SamsungAudioManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .local v44, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/media/AudioManager;

    .local v42, "mAudioManager":Landroid/media/AudioManager;
    new-instance v33, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v33, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    move-object/from16 v0, v33

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v52

    .local v52, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, "currentHomePackage":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_1f

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentHomePackage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v23, 0x0

    .local v23, "currentIMEpkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .local v22, "currentIME":Ljava/lang/String;
    if-eqz v22, :cond_20

    const-string v5, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x0

    const-string v6, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    :cond_20
    :goto_e
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_21

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentIME, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentIMEpkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_21
    const/16 v26, 0x0

    .local v26, "currentWallpaperPkg":Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v63

    .local v63, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz v63, :cond_22

    invoke-virtual/range {v63 .. v63}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v62

    .local v62, "wallpaperInfo":Landroid/app/WallpaperInfo;
    if-eqz v62, :cond_22

    invoke-virtual/range {v62 .. v62}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v26

    .end local v62    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .end local v63    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_22
    :goto_f
    :try_start_8
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_23

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : currentWallpaperPkg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31    # "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/lang/String;

    .restart local v59    # "thePackage":Ljava/lang/String;
    move-object/from16 v0, v48

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .end local v20    # "count":I
    .end local v21    # "currentHomePackage":Ljava/lang/String;
    .end local v22    # "currentIME":Ljava/lang/String;
    .end local v23    # "currentIMEpkg":Ljava/lang/String;
    .end local v26    # "currentWallpaperPkg":Ljava/lang/String;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v42    # "mAudioManager":Landroid/media/AudioManager;
    .end local v44    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .end local v46    # "mapSize":I
    .end local v52    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v59    # "thePackage":Ljava/lang/String;
    :catch_5
    move-exception v29

    move/from16 v27, v28

    .end local v28    # "defaultLastUsedTime":I
    .restart local v27    # "defaultLastUsedTime":I
    goto/16 :goto_d

    .end local v27    # "defaultLastUsedTime":I
    .restart local v20    # "count":I
    .restart local v21    # "currentHomePackage":Ljava/lang/String;
    .restart local v22    # "currentIME":Ljava/lang/String;
    .restart local v23    # "currentIMEpkg":Ljava/lang/String;
    .restart local v28    # "defaultLastUsedTime":I
    .restart local v33    # "intent":Landroid/content/Intent;
    .restart local v42    # "mAudioManager":Landroid/media/AudioManager;
    .restart local v44    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .restart local v46    # "mapSize":I
    .restart local v52    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_24
    move-object/from16 v23, v22

    goto/16 :goto_e

    .restart local v26    # "currentWallpaperPkg":Ljava/lang/String;
    :catch_6
    move-exception v29

    .local v29, "e":Ljava/lang/Exception;
    const-string v5, "LpnetManagerService"

    const-string v6, "wallpaperinfo exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .end local v29    # "e":Ljava/lang/Exception;
    .restart local v31    # "i$":Ljava/util/Iterator;
    .restart local v59    # "thePackage":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v44

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual/range {v42 .. v42}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_26
    if-eqz v21, :cond_27

    move-object/from16 v0, v21

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_27
    if-eqz v23, :cond_28

    move-object/from16 v0, v23

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_28
    if-eqz v26, :cond_29

    move-object/from16 v0, v26

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : skip 5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    if-nez v5, :cond_2d

    add-int/lit8 v20, v20, 0x1

    const/4 v5, 0x1

    move/from16 v0, v46

    if-ne v0, v5, :cond_2c

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Long;

    .restart local v38    # "lastUseTimeLong":Ljava/lang/Long;
    if-eqz v38, :cond_2d

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .restart local v36    # "lastUseTime":J
    const-wide/16 v6, 0x2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    mul-long/2addr v6, v10

    sub-long v6, v24, v6

    cmp-long v5, v6, v36

    if-lez v5, :cond_2b

    const/16 v35, 0x1

    .local v35, "isUnusedAppTimeExpired2":Z
    :goto_11
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_2a

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LastApp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lastUseTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",currentTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isUnusedAppTimeExpired2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-nez v35, :cond_2d

    move/from16 v27, v28

    .end local v28    # "defaultLastUsedTime":I
    .restart local v27    # "defaultLastUsedTime":I
    goto/16 :goto_3

    .end local v27    # "defaultLastUsedTime":I
    .end local v35    # "isUnusedAppTimeExpired2":Z
    .restart local v28    # "defaultLastUsedTime":I
    :cond_2b
    const/16 v35, 0x0

    goto :goto_11

    .end local v36    # "lastUseTime":J
    .end local v38    # "lastUseTimeLong":Ljava/lang/Long;
    :cond_2c
    move/from16 v0, v20

    int-to-double v6, v0

    move/from16 v0, v46

    int-to-double v10, v0

    const-wide/high16 v64, 0x3fe8000000000000L    # 0.75

    mul-double v10, v10, v64

    cmpl-double v5, v6, v10

    if-lez v5, :cond_2d

    move/from16 v27, v28

    .end local v28    # "defaultLastUsedTime":I
    .restart local v27    # "defaultLastUsedTime":I
    goto/16 :goto_3

    .end local v27    # "defaultLastUsedTime":I
    .restart local v28    # "defaultLastUsedTime":I
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_10

    .end local v12    # "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v18    # "beginTime":Ljava/util/Calendar;
    .end local v20    # "count":I
    .end local v21    # "currentHomePackage":Ljava/lang/String;
    .end local v22    # "currentIME":Ljava/lang/String;
    .end local v23    # "currentIMEpkg":Ljava/lang/String;
    .end local v24    # "currentTime":J
    .end local v26    # "currentWallpaperPkg":Ljava/lang/String;
    .end local v28    # "defaultLastUsedTime":I
    .end local v30    # "endTime":Ljava/util/Calendar;
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v42    # "mAudioManager":Landroid/media/AudioManager;
    .end local v44    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .end local v46    # "mapSize":I
    .end local v48    # "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v52    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v53    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v55    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v59    # "thePackage":Ljava/lang/String;
    .end local v61    # "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2e
    const-string v5, "LpnetManagerService"

    const-string v6, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v4    # "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    .end local v41    # "mAppOpsManager":Landroid/app/AppOpsManager;
    .end local v50    # "packageName":Ljava/lang/String;
    .restart local v8    # "interval":J
    :cond_2f
    const-string v7, "ACTION_TRIGGER_UNUSED_APP_LRU "

    const-wide/16 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto/16 :goto_4

    .end local v8    # "interval":J
    .restart local v4    # "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    .restart local v12    # "LRUBasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v18    # "beginTime":Ljava/util/Calendar;
    .restart local v20    # "count":I
    .restart local v21    # "currentHomePackage":Ljava/lang/String;
    .restart local v22    # "currentIME":Ljava/lang/String;
    .restart local v23    # "currentIMEpkg":Ljava/lang/String;
    .restart local v24    # "currentTime":J
    .restart local v26    # "currentWallpaperPkg":Ljava/lang/String;
    .restart local v28    # "defaultLastUsedTime":I
    .restart local v30    # "endTime":Ljava/util/Calendar;
    .restart local v31    # "i$":Ljava/util/Iterator;
    .restart local v33    # "intent":Landroid/content/Intent;
    .restart local v41    # "mAppOpsManager":Landroid/app/AppOpsManager;
    .restart local v42    # "mAudioManager":Landroid/media/AudioManager;
    .restart local v44    # "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    .restart local v46    # "mapSize":I
    .restart local v48    # "notAllowedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v50    # "packageName":Ljava/lang/String;
    .restart local v52    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v53    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v55    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .restart local v61    # "usageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_30
    move/from16 v27, v28

    .end local v28    # "defaultLastUsedTime":I
    .restart local v27    # "defaultLastUsedTime":I
    goto/16 :goto_3
.end method

.method private freezerActionNotificationBroadcast(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intentFrAction":Landroid/content/Intent;
    const-string v1, "ACTION_APPFREEZER_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FreezeType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_0

    const-string v2, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPFREEZER_NOTIFICATION, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string v1, "freezed"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const-string v1, "unfreezed"

    goto :goto_0
.end method

.method private getDBValues(Z)V
    .locals 13
    .param p1, "freezeImmediate"    # Z

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBValues called freezeImmediate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz v6, :cond_7

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v0, "0"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .local v8, "managedSMpkgs":[Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_6

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM Freezed Apps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, v8}, Landroid/app/IActivityManager;->getSMpkgsList([Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_7

    const-string v0, "LpnetManagerService"

    const-string v1, "SM Freezed Apps are updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8    # "managedSMpkgs":[Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .restart local v8    # "managedSMpkgs":[Ljava/lang/String;
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to getSMpkgsList, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getLRU(I)Ljava/util/Map;
    .locals 36
    .param p1, "unusedPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .local v21, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v25, "android"

    .local v25, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v4, "usagestats"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .local v2, "mUsageStatsService":Landroid/app/usage/UsageStatsManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/AppOpsManager;

    .local v23, "mAppOpsManager":Landroid/app/AppOpsManager;
    if-eqz v23, :cond_12

    if-eqz v2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .local v11, "endTime":Ljava/util/Calendar;
    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .local v10, "beginTime":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v10, v3, v4}, Ljava/util/Calendar;->set(II)V

    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMode calling with params packagename uid mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const/4 v3, 0x4

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v28

    .local v28, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const/16 v3, 0x2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMode calling with params packagename uid mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_2

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,Begin Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,End Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,Curr Time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v26

    .local v26, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_6

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageInfo;

    .local v24, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .local v27, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .local v20, "launchIntent":Landroid/content/Intent;
    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    if-eqz v3, :cond_5

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .local v17, "installTime":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    mul-int/lit8 v3, p1, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v0, v3

    move-wide/from16 v34, v0

    sub-long v6, v6, v34

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v17    # "installTime":Ljava/lang/Long;
    :cond_3
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .restart local v17    # "installTime":Ljava/lang/Long;
    :cond_4
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_3

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installTime is null for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v17    # "installTime":Ljava/lang/Long;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    new-instance v17, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .restart local v17    # "installTime":Ljava/lang/Long;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    mul-int/lit8 v3, p1, 0x18

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v0, v3

    move-wide/from16 v34, v0

    sub-long v6, v6, v34

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    new-instance v19, Ljava/util/Date;

    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .local v19, "last":Ljava/util/Date;
    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "installTime":Ljava/lang/Long;
    .end local v19    # "last":Ljava/util/Date;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .end local v15    # "i":I
    .end local v20    # "launchIntent":Landroid/content/Intent;
    .end local v24    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v26    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v27    # "pkgName":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "LpnetManagerService"

    const-string v4, "stats.size() is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/usage/UsageStats;

    .local v29, "u":Landroid/app/usage/UsageStats;
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_9

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stats: Pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " usedTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .restart local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    new-instance v3, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .end local v27    # "pkgName":Ljava/lang/String;
    .end local v29    # "u":Landroid/app/usage/UsageStats;
    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_c
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .local v22, "lruPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v22    # "lruPackageName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    if-eqz v3, :cond_e

    sget-wide v4, Lcom/android/server/LpnetManagerService;->timeShift:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_f

    .end local v10    # "beginTime":Ljava/util/Calendar;
    .end local v11    # "endTime":Ljava/util/Calendar;
    .end local v12    # "currentTime":J
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v28    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_e
    :goto_4
    return-object v21

    .restart local v10    # "beginTime":Ljava/util/Calendar;
    .restart local v11    # "endTime":Ljava/util/Calendar;
    .restart local v12    # "currentTime":J
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v28    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "PackageName":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .local v30, "valueFromUsageStat":J
    sget-wide v4, Lcom/android/server/LpnetManagerService;->timeShift:J

    sub-long v32, v30, v4

    .local v32, "valueFromUsageStatAfterTimeShift":J
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_10

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", valueFromUsageStat :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeShift : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/android/server/LpnetManagerService;->timeShift:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", valueFromUsageStatAfterTimeShift "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .end local v8    # "PackageName":Ljava/lang/String;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v30    # "valueFromUsageStat":J
    .end local v32    # "valueFromUsageStatAfterTimeShift":J
    :cond_11
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/LpnetManagerService;->timeShift:J

    goto/16 :goto_4

    .end local v10    # "beginTime":Ljava/util/Calendar;
    .end local v11    # "endTime":Ljava/util/Calendar;
    .end local v12    # "currentTime":J
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v28    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_12
    const-string v3, "LpnetManagerService"

    const-string v4, "mAppOpsManager is null or mUsageStatsService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private getWhiteListDBValues()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LpnetManagerService"

    const-string v1, "getWhiteListDBValues called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "extras_0"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "extras_1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "extras_2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "extras_3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "extras_4"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private idleAction()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .local v6, "scheduleStat":Z
    const/4 v3, 0x0

    .local v3, "gcmMessageJustReceived":Z
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_0

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "idleAction: mDataConnectivityAtScreenOff="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v10, :cond_12

    :cond_1
    const/4 v5, 0x0

    .local v5, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v10}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_2
    :goto_0
    if-eqz v5, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "targetPackageCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v8, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_4

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lru="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iRCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iRPid= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    iget-object v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_5

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is forcestopped immediately without checking importance and active traffic"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "targetPackageCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_2

    const-string v10, "LpnetManagerService"

    const-string v11, "Exception occurred on getting Running Apps"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v7    # "targetPackageCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    iget-object v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0xc8

    if-le v10, v11, :cond_8

    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_7

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is forcestopped immediately because it is NOT in foreground"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0xc8

    if-le v10, v11, :cond_10

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0x190

    if-ne v10, v11, :cond_9

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v11, 0x4

    if-le v10, v11, :cond_10

    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_10

    :cond_9
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_a

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is NOT in foreground or visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v0, 0x0

    .local v0, "activeTraffic":Z
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-lez v10, :cond_b

    iget-boolean v10, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v10, :cond_b

    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/LpnetManagerService;->isActiveTrafficExisting(Ljava/lang/String;Z)Z

    move-result v0

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-gez v10, :cond_f

    const/4 v3, 0x1

    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_c

    const-string v10, "LpnetManagerService"

    const-string v11, "GCM Message arrived in the last 1 min, skipping action"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activeTraffic":Z
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_c
    if-nez v3, :cond_12

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "thePackage":Ljava/lang/String;
    :try_start_3
    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_d

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x200000

    and-int/2addr v10, v11

    const/high16 v11, 0x200000

    if-eq v10, v11, :cond_d

    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_e

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NotRunningApp, Need to Forcestop : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p0, v9}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_d

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NameNotFoundException occurred for package :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "thePackage":Ljava/lang/String;
    .restart local v0    # "activeTraffic":Z
    .restart local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_f
    if-eqz v0, :cond_3

    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v0    # "activeTraffic":Z
    :cond_10
    sget-boolean v10, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v10, :cond_11

    const-string v10, "LpnetManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is in foreground or visible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "targetPackageCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_12
    if-nez v6, :cond_13

    if-eqz v3, :cond_14

    :cond_13
    iget-wide v10, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/server/LpnetManagerService;->screenOffAction(J)V

    :goto_3
    return-void

    :cond_14
    iget-wide v10, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/server/LpnetManagerService;->screenOffAction(J)V

    goto :goto_3
.end method

.method private initFreezerActionNotification()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/LpnetManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/LpnetManagerService$6;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    return-void
.end method

.method private initializeFromConfigFile()V
    .locals 14

    .prologue
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_0

    const-string v7, "LpnetManagerService"

    const-string v10, "initializeFromConfigFile "

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    .local v4, "stringBlackList":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    :try_start_0
    new-instance v2, Lcom/android/server/LpnetManagerService$IniFile;

    const-string v7, "/data/misc/lpnet/lpnetConfig"

    invoke-direct {v2, v7}, Lcom/android/server/LpnetManagerService$IniFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .local v2, "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    const-string v7, "ChinaNalSecurity"

    sget-object v10, Lcom/android/server/LpnetManagerService;->isChinaNal:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    :cond_1
    if-eqz v2, :cond_11

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableSolution"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeEnabled"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeWithOwnLRU"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "whitelistAll"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "whitelistAllGCM"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "freezeImmediate"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "includeSysAppForLru"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mIncludeSystemAppsForLRU:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "disableLRU"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableTimeShift"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableImportanceCheck"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableImportanceFGOnly"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "enableAppStartRestrictScreenOn"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    iget-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    sput-boolean v7, Lcom/android/server/LpnetManagerService;->AppStartRestrictionInScreenOn:Z

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "includeInstalledTimeForLRU"

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    const-wide/16 v8, 0x0

    .local v8, "tempValFromConfigFile":J
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "screenOffActionTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0xa

    cmp-long v7, v8, v10

    if-ltz v7, :cond_a

    const-wide/16 v10, 0xe10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_a

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    :cond_2
    :goto_0
    const-wide/16 v8, 0x0

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "inActivityRepeatTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_b

    const-wide/32 v10, 0x15180

    cmp-long v7, v8, v10

    if-gtz v7, :cond_b

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    :cond_3
    :goto_1
    const-wide/16 v8, 0x0

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "lruCheckInterval"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_c

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_c

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    :cond_4
    :goto_2
    const-wide/16 v8, 0x0

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "autoFreezeUnusedAppTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_d

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_d

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    :cond_5
    :goto_3
    const/4 v6, 0x0

    .local v6, "tempIntVal":I
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "unusedPeriod"

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/server/LpnetManagerService$IniFile;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_e

    const/16 v7, 0x2da

    if-gt v6, v7, :cond_e

    iput v6, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    :cond_6
    :goto_4
    const-wide/16 v8, 0x0

    const-string v7, "APPFREEZER_INIT"

    const-string v10, "usageCollectionInterval"

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v7, v10, v12, v13}, Lcom/android/server/LpnetManagerService$IniFile;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3c

    cmp-long v7, v8, v10

    if-ltz v7, :cond_f

    const-wide/32 v10, 0x278d00

    cmp-long v7, v8, v10

    if-gtz v7, :cond_f

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    :cond_7
    :goto_5
    const-string v7, "APPFREEZER_INIT"

    const-string v10, "BlackList"

    invoke-virtual {v2, v7, v10, v4}, Lcom/android/server/LpnetManagerService$IniFile;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_8
    :goto_6
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .end local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "stringTokenizer":Ljava/util/StringTokenizer;
    .end local v6    # "tempIntVal":I
    .end local v8    # "tempValFromConfigFile":J
    .restart local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_9

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException on Parsing Config FILE :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_7
    return-void

    .end local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v8    # "tempValFromConfigFile":J
    :cond_a
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_2

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 10s - 3600s, Setting Default mScreenOffActionTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_3

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 86400s, Setting Default mInactivityRepeatTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_4

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mIntLruCheckInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_5

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mUnusedAutoFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .restart local v6    # "tempIntVal":I
    :cond_e
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_6

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 0 - 730 days, Setting Default mUnusedPeriod : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_7

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Out of bounds, Allowed Values 60s - 2592000s, Setting Default mLastUsedTimeCollectionInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    sget-boolean v7, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v7, :cond_11

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSolnEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mSolnEnabled:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWhiteListAll : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWhiteListGCM : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFreezeWithOwnLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mFreezeImmediate : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mFreezeImmediate:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mScreenOffActionTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mScreenOffActionTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mInactivityRepeatTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIntLruCheckInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mIntLruCheckInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUnusedAutoFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mUnusedAutoFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUnusedPeriod : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/LpnetManagerService;->mUnusedPeriod:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDisableLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mDisableLRU:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableTimeShift : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableImportanceCheck : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceCheck:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableImportanceFGOnly : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableImportanceFGOnly:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mEnableAppStartRestrictionInScreenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mEnableAppStartRestrictionInScreenOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAutoRunBasedFreeze : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLastUsedTimeCollectionInterval : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIncludeInstalledTimeForLRU : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/LpnetManagerService;->mIncludeInstalledTimeForLRU:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLruMissedImmediateFreezeTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/LpnetManagerService;->mLruMissedImmediateFreezeTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "tempIntVal":I
    .end local v8    # "tempValFromConfigFile":J
    :cond_11
    move-object v1, v2

    .end local v2    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    .restart local v1    # "mConfig":Lcom/android/server/LpnetManagerService$IniFile;
    goto/16 :goto_7
.end method

.method private intentReceiverInitialization()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvForPM:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->pkgFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIntentRecvNetwork:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->networkFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isAPICallAllowedForPackages(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v4, 0x0

    .local v4, "isAllowed":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appUid":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-ne v8, v7, :cond_0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .local v6, "uid":I
    if-ne v6, v1, :cond_0

    move v4, v7

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appUid":I
    .end local v4    # "isAllowed":Z
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2
    return v4

    .restart local v1    # "appUid":I
    .restart local v4    # "isAllowed":Z
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isActiveTrafficExisting(Ljava/lang/String;Z)Z
    .locals 24
    .param p1, "aPackageName"    # Ljava/lang/String;
    .param p2, "isForLRU"    # Z

    .prologue
    const/16 v18, 0x1

    .local v18, "retCode":Z
    const/4 v15, 0x0

    .local v15, "prevTraffic":Ljava/lang/Long;
    const/4 v7, 0x0

    .local v7, "currTrafficTX":Ljava/lang/Long;
    const/16 v17, 0x0

    .local v17, "prevTrafficTX":Ljava/lang/Long;
    const/4 v6, 0x0

    .local v6, "currTrafficRX":Ljava/lang/Long;
    const/16 v16, 0x0

    .local v16, "prevTrafficRX":Ljava/lang/Long;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .local v5, "currTraffic":Ljava/lang/Long;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v16, v0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_7

    if-eqz v17, :cond_0

    if-eqz v7, :cond_0

    if-eqz v16, :cond_0

    if-nez v6, :cond_4

    :cond_0
    sget-boolean v19, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v19, :cond_1

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TrafficForPkg["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v19, 0x0

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "currTraffic":Ljava/lang/Long;
    :goto_1
    return v19

    :catch_0
    move-exception v14

    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v19, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v19, :cond_2

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NameNotFoundException occurred for package :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "currTraffic":Ljava/lang/Long;
    :catchall_0
    move-exception v19

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    monitor-exit v20

    goto/16 :goto_0

    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v19

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v12, v20, v22

    .local v12, "diffTX":J
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v10, v20, v22

    .local v10, "diffRX":J
    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ActiveTraffic[LRU:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " (tx:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", rx:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-eqz v19, :cond_5

    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-eqz v19, :cond_5

    const-wide/16 v20, 0x400

    cmp-long v19, v12, v20

    if-gez v19, :cond_6

    const-wide/16 v20, 0x400

    cmp-long v19, v10, v20

    if-gez v19, :cond_6

    :cond_5
    const/16 v18, 0x0

    .end local v10    # "diffRX":J
    .end local v12    # "diffTX":J
    :cond_6
    :goto_2
    move/from16 v19, v18

    goto/16 :goto_1

    :cond_7
    if-eqz v15, :cond_8

    if-nez v5, :cond_a

    :cond_8
    sget-boolean v19, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v19, :cond_9

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TrafficForPkg["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v8, v20, v22

    .local v8, "diff":J
    sget-boolean v19, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v19, :cond_b

    const-string v19, "LpnetManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ActiveTraffic[LRU:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_6

    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method private isAutoRunBlockedPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "isAutoRunBlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->isAutoRunBlockedApp(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoRunBlockedPackage isAutoRunBlocked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",processName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v2, :cond_0

    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoRunBlockedPackage exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isC2DMPermAvl(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "c2dmPermissionFound":Z
    const/4 v2, 0x0

    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .local v3, "perms":[Landroid/content/pm/PermissionInfo;
    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string v5, ".permission.C2D_MESSAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_0
    :goto_1
    sget-boolean v4, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v4, :cond_1

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C2DM Permission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    .restart local v1    # "j":I
    .restart local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "j":I
    .end local v3    # "perms":[Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private isPackageInstalledAndEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v3, "LpnetManagerService"

    const-string v4, "isPackageInstalledAndEnabled called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPackageVersionMatching(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "retCode":Z
    const/4 v2, 0x0

    .local v2, "version":I
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "versionMatchString":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v4, :cond_0

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "versionMatchString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mVersionDB:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/server/LpnetManagerService;->versionCheckAgainstDB(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "versionMatchString":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v4, :cond_2

    const-string v4, "LpnetManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " VersionMatch?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "versionMatchString":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .end local v3    # "versionMatchString":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private parseEntry(Ljava/lang/String;)[I
    .locals 12
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    new-array v1, v8, [I

    .local v1, "limits":[I
    aput v10, v1, v9

    if-eqz p1, :cond_0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x6d

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v1, v8

    :goto_0
    new-instance v6, Ljava/util/StringTokenizer;

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "-"

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    if-ne v8, v11, :cond_0

    const-string v8, "[0-9]+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .local v2, "lower":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .local v7, "upper":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "mlower":Ljava/util/regex/Matcher;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .local v4, "mupper":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v8

    const/4 v8, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v8

    .end local v2    # "lower":Ljava/lang/String;
    .end local v3    # "mlower":Ljava/util/regex/Matcher;
    .end local v4    # "mupper":Ljava/util/regex/Matcher;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "upper":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x75

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v8, :cond_0

    const-string v8, "LpnetManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " parseEntry Error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x0

    const/4 v9, -0x1

    :try_start_1
    aput v9, v1, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private screenOffAction(J)V
    .locals 13
    .param p1, "timeToAct"    # J

    .prologue
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenOffAction-timeToAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LpnetManagerService;->mDataConnectivityAtScreenOff:Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    .local v9, "nNotForceStoppedAppsSize":I
    const/4 v10, 0x0

    .local v10, "nTargetAppsSize":I
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v11, "theApp":Ljava/lang/String;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    const/high16 v2, 0x200000

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException occurred for package :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "theApp":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .end local v9    # "nNotForceStoppedAppsSize":I
    .end local v10    # "nTargetAppsSize":I
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "nNotForceStoppedAppsSize":I
    .restart local v10    # "nTargetAppsSize":I
    :cond_3
    :try_start_5
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_4

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target Packages for ForceStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Candidates for ForceStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v9

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v10

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez v10, :cond_5

    const-wide/16 v0, 0x7d0

    cmp-long v0, p1, v0

    if-lez v0, :cond_6

    if-lez v9, :cond_6

    const-string v1, "NETWORK_STAT"

    const-wide/16 v2, 0x7d0

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string v1, "ACTION_TRIGGER_IDLE"

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V

    goto :goto_1
.end method

.method private setAlarm(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "theIntentString"    # Ljava/lang/String;
    .param p2, "alarmTime"    # J
    .param p4, "delayTolerance"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intentB":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now+:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "NETWORK_STAT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    :cond_1
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    const-string v1, "LAST_USED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    :cond_3
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mLastUsedTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_4
    const-string v1, "NETWORK_STAT_LRU"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    :cond_5
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mNetworkStatIntent_LRU:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_6
    const-string v1, "ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    :cond_7
    cmp-long v1, p4, v8

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_8
    :goto_0
    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    :cond_9
    cmp-long v1, p4, v8

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mIdleTriggerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mLRUIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private targetPkgInitialization(Z)V
    .locals 12
    .param p1, "loadDefaults"    # Z

    .prologue
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    if-eqz v8, :cond_3

    :cond_0
    sget-boolean v8, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v8, :cond_1

    const-string v8, "LpnetManagerService"

    const-string v10, "mWhiteListAll enabled"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "i":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListGCM:Z

    if-nez v8, :cond_7

    if-eqz p1, :cond_4

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    const-string v9, "com.twitter.android"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    const-string v9, "com.kakao.talk"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    const-string v9, "com.skype.raider"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    const-string v9, "com.viber.voip"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    const-string v9, "jp.naver.line.android"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "theApp":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v6}, Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "theApp":Ljava/lang/String;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-boolean v8, p0, Lcom/android/server/LpnetManagerService;->mWhiteListAll:Z

    if-nez v8, :cond_d

    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "theWhiteListPackage":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z

    move-result v0

    .local v0, "c2dmPermExists":Z
    if-nez v0, :cond_8

    sget-boolean v8, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v8, :cond_9

    const-string v8, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " App doesnt have C2DM Permission"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .end local v0    # "c2dmPermExists":Z
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "theWhiteListPackage":Ljava/lang/String;
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    :try_start_5
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "theApp":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/LpnetManagerService;->isPackageInstalledAndEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v6    # "theApp":Ljava/lang/String;
    :cond_c
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_e

    iget-object v9, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    iget-object v8, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    iget-object v10, p0, Lcom/android/server/LpnetManagerService;->mBlackListedPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v9

    :cond_e
    return-void

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v8
.end method

.method private unFreeze(Ljava/lang/String;)V
    .locals 4
    .param p1, "thePackageName"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->unFreezeApp(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unFreezed App :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unFreeze failed for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "LpnetManagerService"

    const-string v2, "unFreeze called with null param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceStopped"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDB called for packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",forceStopped : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    :cond_1
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    const/4 v9, 0x0

    .local v9, "retRows":I
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    const-string v2, "0"

    .local v2, "dFreeze":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "1"

    :goto_0
    const-string v3, "0"

    .local v3, "sFreeze":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "1"

    :goto_1
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V

    .end local v9    # "retRows":I
    :cond_3
    :goto_2
    return-void

    .restart local v2    # "dFreeze":Ljava/lang/String;
    .restart local v9    # "retRows":I
    :cond_4
    const-string v2, "0"

    goto :goto_0

    .restart local v3    # "sFreeze":Ljava/lang/String;
    :cond_5
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v9    # "retRows":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handling DB : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private updateDBForLRU(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v0, "LpnetManagerService"

    const-string v4, "updateDBForLRU called"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v4, p0, Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .local v12, "usedTime":Ljava/lang/Long;
    const/4 v11, 0x0

    .local v11, "retRows":I
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    const-string v2, "0"

    .local v2, "dFreeze":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "1"

    :goto_1
    const-string v3, "0"

    .local v3, "sFreeze":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "1"

    :goto_2
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    const-string v4, "0"

    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/LpnetManagerService$DBManager;->dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "retRows":I
    .end local v12    # "usedTime":Ljava/lang/Long;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "dFreeze":Ljava/lang/String;
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "retRows":I
    .restart local v12    # "usedTime":Ljava/lang/Long;
    :cond_2
    :try_start_1
    const-string v2, "0"

    goto :goto_1

    .restart local v3    # "sFreeze":Ljava/lang/String;
    :cond_3
    const-string v3, "0"

    goto :goto_2

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "dFreeze":Ljava/lang/String;
    .end local v3    # "sFreeze":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "retRows":I
    .end local v12    # "usedTime":Ljava/lang/Long;
    :cond_4
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V

    goto :goto_3

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v0, "LpnetManagerService"

    const-string v4, "lruMap null/size 0 (or) mDBMgr : is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private versionCheckAgainstDB(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "vEntry"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_0

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "versionCheckAgainstDB:: vEntry-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .local v1, "inRange":Z
    if-eqz p1, :cond_2

    const-string v5, "\\s"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v2, p1, v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "element":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/LpnetManagerService;->parseEntry(Ljava/lang/String;)[I

    move-result-object v3

    .local v3, "versionInfo":[I
    aget v5, v3, v4

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v5, :cond_1

    const-string v5, "LpnetManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ParseError:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    aget v5, v3, v8

    if-lt p2, v5, :cond_1

    aget v5, v3, v9

    if-gt p2, v5, :cond_1

    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "versionInfo":[I
    :goto_1
    return v4

    .restart local v0    # "element":Ljava/lang/String;
    .restart local v2    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "versionInfo":[I
    :pswitch_2
    aget v5, v3, v8

    if-lt p2, v5, :cond_1

    aget v5, v3, v9

    if-gt p2, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "versionInfo":[I
    :cond_2
    move v4, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public enableDisableSolution(Z)V
    .locals 6
    .param p1, "pEnableSolution"    # Z

    .prologue
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .local v1, "isAllowed":Z
    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Security Exception Occurred. Only SmartManager can use enableDisableSolution() function."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " enableDisableSolution :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    if-eqz p1, :cond_4

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    :goto_0
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {v3, p0}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    :cond_2
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    # invokes: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V
    invoke-static {v3, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5700(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "thePackage"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-direct {p0, p1, v1}, Lcom/android/server/LpnetManagerService;->updateDB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freezed App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v1, :cond_1

    const-string v1, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to Forcestop Package :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception msg is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "LpnetManagerService"

    const-string v2, "forceStopPackage called with null param"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public freezeApps(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "aForceStopBundle"    # Landroid/os/Bundle;

    .prologue
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .local v1, "isAllowed":Z
    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Security Exception Occurred. Only SmartManager can use freezeApps() function."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "LpnetManagerService"

    const-string v4, " freezeApps called "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {v3, p0}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    :cond_2
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    # invokes: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V
    invoke-static {v3, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5700(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V

    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v3, "LpnetManagerService"

    const-string v4, "freezeApps called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gcmNotificationBroadcast(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Security Exception Occurred. Only SYSTEM can use gcmNotificationBroadcast() function."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    sget-boolean v2, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v2, :cond_1

    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM Push received for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/LpnetManagerService;->mGCMMessageReceivedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "LpnetManagerService"

    const-string v3, "gcmNotificationBroadcast called with null param"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLRUList(I)Ljava/util/Map;
    .locals 6
    .param p1, "unusedPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .local v1, "isAllowed":Z
    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Security Exception Occurred. Only SmartManager can use getLRUList() function."

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4
.end method

.method public getManagedAppList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "managedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic getManagedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/server/LpnetManagerService;->getManagedAppList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public runFreezeBasedOnLRU()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/LpnetManagerService;->nHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LpnetManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LpnetManagerService$7;-><init>(Lcom/android/server/LpnetManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unFreezeApps([Ljava/lang/String;)V
    .locals 5
    .param p1, "aUnFreezeList"    # [Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .local v1, "isAllowed":Z
    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Security Exception Occurred. Only SmartManager can use unFreezeApps() function."

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    sget-boolean v3, Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z

    if-eqz v3, :cond_1

    const-string v3, "LpnetManagerService"

    const-string v4, " unFreezeApps for Apps"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {v3, p0}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;-><init>(Lcom/android/server/LpnetManagerService;)V

    iput-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    :cond_2
    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/LpnetManagerService;->lpnetExt:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    # invokes: Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V
    invoke-static {v3, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->access$5700(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V

    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v3, "LpnetManagerService"

    const-string v4, "unFreezeApps called with null param"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateLruInDB(I)V
    .locals 6
    .param p1, "unusedPeriod"    # I

    .prologue
    sget-boolean v5, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/LpnetManagerService;->allowedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/LpnetManagerService;->isAPICallAllowedForPackages(Ljava/util/List;)Z

    move-result v1

    .local v1, "isAllowed":Z
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Security Exception Occurred. Only SmartManager can use updateLruInDB() function."

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    const/4 v4, 0x0

    .local v4, "lruMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService;->getLRU(I)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/LpnetManagerService;->updateDBForLRU(Ljava/util/Map;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method
