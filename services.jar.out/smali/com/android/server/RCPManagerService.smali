.class public Lcom/android/server/RCPManagerService;
.super Landroid/os/IRCPManager$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RCPManagerService$ExchangeDataInfo;,
        Lcom/android/server/RCPManagerService$RCPServiceConnection;,
        Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;,
        Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;,
        Lcom/android/server/RCPManagerService$EmergencyModeReceiver;,
        Lcom/android/server/RCPManagerService$PackageReceiver;,
        Lcom/android/server/RCPManagerService$BootReceiver;,
        Lcom/android/server/RCPManagerService$ClipboardReceiver;,
        Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_KNOX_LAYOUT_CHANGED:Ljava/lang/String; = "com.sec.knox.action.KNOX_LAYOUT_CHANGED"

.field public static final CLIPBOARD_CLIPS_CLEARED_INTENT:Ljava/lang/String; = "com.samsung.knox.clipboard.clipscleared"

.field public static final CLIPBOARD_CLIP_REMOVED_INTENT:Ljava/lang/String; = "com.samsung.knox.clipboard.clipremoved"

.field private static final CLIPBOARD_SANDBOX_ROOT:Ljava/lang/String; = "/data/clipboardSandbox"

.field private static final FMC_IMCOMING_CALL:Ljava/lang/String; = "com.samsung.knox.fmc_incoming_call"

.field private static final INTENT_KEY:Ljava/lang/String; = "intent"

.field private static final KNOX_MODE_SWITCHER_CLASS_NAME:Ljava/lang/String; = "com.sec.knox.bridge.handlers.NotificationHandler"

.field private static final KNOX_MODE_SWITCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.bridge"

.field private static final LAUNCH_CONTENT_INTENT_ACTION:Ljava/lang/String; = "launchContentIntent"

.field private static final LAUNCH_INTENT_KEY:Ljava/lang/String; = "launchIntent"

.field private static final OWNER_ID:Ljava/lang/Integer;

.field private static final PENDING_INTENT_KEY:Ljava/lang/String; = "pendingIntent"

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field private static final RCP_PROXY_SP_NAME:Ljava/lang/String; = "RCPProxyForUser"

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field private static final SYNC_CONFIG_FILENAME:Ljava/lang/String; = "notifSycn.xml"

.field private static TAG:Ljava/lang/String;

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field public static kioskAllowedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private currentUserId:I

.field private mBridgeCommandExeUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ICommandExeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeProviderUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IProviderCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgeSyncUserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ISyncCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Command;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

.field mExchangeDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/RCPManagerService$ExchangeDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKnoxLayoutChangeReceiver:Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;

.field mPersonaRemovalReceiver:Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;

.field private mRCPGlobalContactsDirMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPGlobalContactsDir;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPInterfaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/IRCPInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPProxyAliveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRCPProxyScanSP:Landroid/content/SharedPreferences;

.field modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

.field receiver:Lcom/android/server/RCPManagerService$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "RCPManagerService"

    sput-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/RCPManagerService;->USER_INFO_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    sput-object v2, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    sput-object v2, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    invoke-direct {p0}, Landroid/os/IRCPManager$Stub;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    iput-object v12, p0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/RCPManagerService;->currentUserId:I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v9, "RCPManagerService() registering receiver for package added and user switch"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "package"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$PackageReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-virtual {p1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/RCPManagerService$BootReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/RCPManagerService$BootReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filterClipboard":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.knox.clipboard.clipremoved"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "com.samsung.knox.clipboard.clipscleared"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/RCPManagerService$ClipboardReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$ClipboardReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {p1, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .local v5, "filterModeSwitcher":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "com.samsung.knox.fmc_incoming_call"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-direct {v8, p0, v12}, Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-virtual {p1, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .local v4, "filterEmergency":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mEmergencyModeReceiver:Lcom/android/server/RCPManagerService$EmergencyModeReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "changeInKnoxLayout":Landroid/content/IntentFilter;
    const-string v8, "com.sec.knox.action.KNOX_LAYOUT_CHANGED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mKnoxLayoutChangeReceiver:Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mKnoxLayoutChangeReceiver:Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "personaRemovalTrigger":Landroid/content/IntentFilter;
    const-string v8, "com.sec.knox.container.action.containerremovalstarted"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v8, p0, Lcom/android/server/RCPManagerService;->mPersonaRemovalReceiver:Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mPersonaRemovalReceiver:Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;

    const-string v9, "com.samsung.container.OBSERVER"

    invoke-virtual {p1, v8, v7, v9, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v9, " registered the receiver "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/RCPManagerService$1;

    invoke-direct {v9, p0}, Lcom/android/server/RCPManagerService$1;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    .local v6, "mPersona":Landroid/os/PersonaManager;
    :try_start_1
    new-instance v8, Lcom/android/server/RCPManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/RCPManagerService$2;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {v6, v8}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/RCPManagerService;->registerKnoxModeChangeObserver()V

    return-void

    .end local v6    # "mPersona":Landroid/os/PersonaManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "mPersona":Landroid/os/PersonaManager;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v9, " Error registering with Persona service via registerSystemPersonaObserver"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/RCPManagerService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/RCPManagerService;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/RCPManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/RCPManagerService;->getAllPersonas()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/RCPManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/RCPManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->unregisterProxy(I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/RCPManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/RCPManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/RCPManagerService;->updateKnoxInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/RCPManagerService;I)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/RCPManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->getUserOrItsPersonasIds(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Integer;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    return-object v0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const-string v1, "RCPManagerService"

    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

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
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private delete(Ljava/io/File;)V
    .locals 7
    .param p1, "f"    # Ljava/io/File;

    .prologue
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "c":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "c":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 17
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fileCopy "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " to "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "Result":Z
    const/4 v11, 0x0

    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v3, 0x0

    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    if-eqz v11, :cond_0

    if-eqz v13, :cond_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v6    # "lSize":J
    :cond_0
    const/4 v2, 0x1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_2
    move v9, v2

    .end local v2    # "Result":Z
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .local v9, "Result":I
    :goto_3
    return v9

    .end local v9    # "Result":I
    .restart local v2    # "Result":Z
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v2

    .restart local v9    # "Result":I
    goto :goto_3

    .end local v9    # "Result":I
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    :catch_3
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_4
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ IOException Error : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FileCopy~ Source file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, "/ Destination file:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v10

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    :cond_a
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_b
    :goto_4
    throw v4

    :catch_6
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "close : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private getAllPersonas()[I
    .locals 12

    .prologue
    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .local v5, "mPersonaManager":Landroid/os/PersonaManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v7

    .local v7, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    sget-object v9, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v10, "getAllPersonas(): List<PersonaInfo> is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_0
    return-object v4

    .restart local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v7    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v4, v9, [I

    .local v4, "ids":[I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .local v6, "personaInfo":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v9, v6, Landroid/content/pm/PersonaInfo;->id:I

    aput v9, v4, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v6    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_2
    sget-object v9, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAllPersonas(): size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ids":[I
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v7    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v10, "getAllPersonas(): Rorre..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v8

    goto :goto_0
.end method

.method private getAllUserIds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .local v3, "mUserManager":Landroid/os/UserManager;
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "mActMngr":Landroid/app/ActivityManager;
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .local v2, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .local v6, "userList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "persona_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v4
.end method

.method private getAllowedIds(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling User is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "persona"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaManagerService;

    .local v6, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v2, 0x0

    .local v2, "isPersona":Z
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v4, -0x1

    .local v4, "parent":I
    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v6, p1}, Lcom/android/server/pm/PersonaManagerService;->getParentId(I)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x0

    .local v5, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_4

    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    new-instance v8, Ljava/lang/Integer;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    iget v7, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "k":I
    .end local v5    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    move v4, p1

    goto :goto_0

    .restart local v5    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_4
    return-object v1
.end method

.method private getExchangeDataMap(IZ)Ljava/util/HashMap;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "bAdd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IRunnableCallback;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .local v2, "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iget v4, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->userId:I

    if-ne v4, p1, :cond_0

    iget-object v0, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    .end local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :goto_1
    return-object v0

    .restart local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_1
    if-nez p2, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IRunnableCallback;>;"
    new-instance v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    invoke-direct {v2, p0, v3}, Lcom/android/server/RCPManagerService$ExchangeDataInfo;-><init>(Lcom/android/server/RCPManagerService;Lcom/android/server/RCPManagerService$1;)V

    .restart local v2    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iput p1, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->userId:I

    iput-object v0, v2, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->cbMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getUserAndPersonasIds(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .local v3, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v4

    .local v4, "parentUser":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v6

    .local v6, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserOrItsPersonasIds(): List<PersonaInfo> is null or empty for callingUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v4    # "parentUser":I
    .end local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    :goto_0
    return-object v0

    .restart local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v4    # "parentUser":I
    .restart local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    iget v7, v5, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v4    # "parentUser":I
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v6    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getUserOrItsPersonasIds(I)[I
    .locals 13
    .param p1, "callingUserId"    # I

    .prologue
    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .local v5, "mPersonaManager":Landroid/os/PersonaManager;
    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    .local v6, "parentUser":I
    if-eq v6, p1, :cond_0

    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    aput v6, v4, v10

    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v6    # "parentUser":I
    :goto_0
    return-object v4

    .restart local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .restart local v6    # "parentUser":I
    :cond_0
    invoke-virtual {v5, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v8

    .local v8, "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUserOrItsPersonasIds(): List<PersonaInfo> is null or empty for callingUserId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v9

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v4, v10, [I

    .local v4, "ids":[I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PersonaInfo;

    .local v7, "personaInfo":Landroid/content/pm/PersonaInfo;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v10, v7, Landroid/content/pm/PersonaInfo;->id:I

    aput v10, v4, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v7    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_3
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUserOrItsPersonasIds(): size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ids":[I
    .end local v5    # "mPersonaManager":Landroid/os/PersonaManager;
    .end local v6    # "parentUser":I
    .end local v8    # "personaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v11, "getUserOrItsPersonasIds(): Rorre..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v9

    goto :goto_0
.end method

.method public static isAllowedtoLaunch(Landroid/content/pm/ActivityInfo;)Z
    .locals 21
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/16 v19, 0x1e

    move/from16 v0, v19

    new-array v3, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "com.android.contacts"

    aput-object v20, v3, v19

    const/16 v19, 0x1

    const-string v20, "com.android.mms"

    aput-object v20, v3, v19

    const/16 v19, 0x2

    const-string v20, "com.android.phone"

    aput-object v20, v3, v19

    const/16 v19, 0x3

    const-string v20, "com.android.incallui"

    aput-object v20, v3, v19

    const/16 v19, 0x4

    const-string v20, "com.samsung.contacts"

    aput-object v20, v3, v19

    const/16 v19, 0x5

    const-string v20, "com.skt.prod.dialer"

    aput-object v20, v3, v19

    const/16 v19, 0x6

    const-string v20, "com.skt.prod.phone"

    aput-object v20, v3, v19

    const/16 v19, 0x7

    const-string v20, "com.skt.prod.phonebook"

    aput-object v20, v3, v19

    const/16 v19, 0x8

    const-string v20, "com.sec.android.inputmethod"

    aput-object v20, v3, v19

    const/16 v19, 0x9

    const-string v20, "com.sec.knox.bridge"

    aput-object v20, v3, v19

    const/16 v19, 0xa

    const-string v20, "com.android.settings"

    aput-object v20, v3, v19

    const/16 v19, 0xb

    const-string v20, "com.android.systemui"

    aput-object v20, v3, v19

    const/16 v19, 0xc

    const-string v20, "com.sec.android.app.SecSetupWizard"

    aput-object v20, v3, v19

    const/16 v19, 0xd

    const-string v20, "com.samsung.safetyinformation"

    aput-object v20, v3, v19

    const/16 v19, 0xe

    const-string v20, "com.google.android.gsf"

    aput-object v20, v3, v19

    const/16 v19, 0xf

    const-string v20, "com.sec.android.app.servicemodeapp"

    aput-object v20, v3, v19

    const/16 v19, 0x10

    const-string v20, "android"

    aput-object v20, v3, v19

    const/16 v19, 0x11

    const-string v20, "com.android.server.telecom"

    aput-object v20, v3, v19

    const/16 v19, 0x12

    const-string v20, "com.sec.android.app.taskmanager"

    aput-object v20, v3, v19

    const/16 v19, 0x13

    const-string v20, "com.android.providers.media"

    aput-object v20, v3, v19

    const/16 v19, 0x14

    const-string v20, "com.google.android.marvin.talkback"

    aput-object v20, v3, v19

    const/16 v19, 0x15

    const-string v20, "com.sec.android.app.popupuireceiver"

    aput-object v20, v3, v19

    const/16 v19, 0x16

    const-string v20, "com.samsung.SMT"

    aput-object v20, v3, v19

    const/16 v19, 0x17

    const-string v20, "com.sec.tetheringprovision"

    aput-object v20, v3, v19

    const/16 v19, 0x18

    const-string v20, "com.google.android.gms"

    aput-object v20, v3, v19

    const/16 v19, 0x19

    const-string v20, "com.samsung.android.app.sounddetector"

    aput-object v20, v3, v19

    const/16 v19, 0x1a

    const-string v20, "com.samsung.android.app.colorblind"

    aput-object v20, v3, v19

    const/16 v19, 0x1b

    const-string v20, "com.samsung.android.app.assistantmenu"

    aput-object v20, v3, v19

    const/16 v19, 0x1c

    const-string v20, "com.samsung.tmowfc.wfcpref"

    aput-object v20, v3, v19

    const/16 v19, 0x1d

    const-string v20, "com.samsung.spg"

    aput-object v20, v3, v19

    .local v3, "allowedapps":[Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/String;

    .local v12, "notAllowedComps":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v19, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .local v7, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    sget-object v19, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    const-string v20, "persona"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PersonaManager;

    .local v14, "persona":Landroid/os/PersonaManager;
    const/4 v15, 0x0

    .local v15, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "ident":J
    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PersonaInfo;

    .local v16, "pi":Landroid/content/pm/PersonaInfo;
    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    if-eqz v19, :cond_0

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .local v13, "ownerUid":I
    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "pkgName":Ljava/lang/String;
    if-eqz v17, :cond_1

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    const-string v20, "com.sec.android.fotaclient"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    const-string v20, "com.wssyncmldm"

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v13    # "ownerUid":I
    .end local v17    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-static {v14}, Lcom/android/server/RCPManagerService;->isKioskLocked(Landroid/os/PersonaManager;)Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "allowedappswhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "com.sec.knox.bridge"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .restart local v13    # "ownerUid":I
    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v19, "com.sec.android.fotaclient"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v19, "com.wssyncmldm"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v19, "com.android.incallui"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v19, "com.android.server.telecom"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v19, "com.android.phone"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/16 v19, 0x1

    .end local v4    # "allowedappswhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "ownerUid":I
    .end local v17    # "pkgName":Ljava/lang/String;
    :goto_1
    return v19

    .end local v16    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19

    .restart local v16    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_2
    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    if-eqz v19, :cond_3

    sget-object v19, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v12

    .local v5, "arr$":[Ljava/lang/String;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v18, v5, v8

    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v18    # "str":Ljava/lang/String;
    :cond_5
    move-object v5, v3

    array-length v9, v5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_7

    aget-object v2, v5, v8

    .local v2, "allowedApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v2    # "allowedApp":Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_7
    const/16 v19, 0x0

    goto :goto_1
.end method

.method private static isKioskLocked(Landroid/os/PersonaManager;)Z
    .locals 4
    .param p0, "mPm"    # Landroid/os/PersonaManager;

    .prologue
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v0

    .local v0, "personaid":[I
    if-eqz v0, :cond_1

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Kiosk exists and it is locked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .end local v0    # "personaid":[I
    :cond_1
    return v1
.end method

.method private registerKnoxModeChangeObserver()V
    .locals 6

    .prologue
    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v4, "RCP.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_0

    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v4, "RCP.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    return-void

    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    new-instance v3, Lcom/android/server/RCPManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/RCPManagerService$3;-><init>(Lcom/android/server/RCPManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeExchangeDataInfo(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;

    .local v1, "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    iget v2, v1, Lcom/android/server/RCPManagerService$ExchangeDataInfo;->userId:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mExchangeDataInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .end local v1    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_0
    return-void

    .restart local v1    # "info":Lcom/android/server/RCPManagerService$ExchangeDataInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startKnoxModeSwitcher(Ljava/lang/String;I)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .local v4, "uh":Landroid/os/UserHandle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "serviceIntent":Landroid/content/Intent;
    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    const-string v5, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/RCPManagerService;->getUserAndPersonasIds(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "familyUserId":I
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "familyUserId":I
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private switchPersonaAndLaunch(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchPersonaAndLaunch() with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "mPersona":Landroid/os/PersonaManager;
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch PERSONA to id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, p2}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method private unregisterProxy(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->removeExchangeDataInfo(I)V

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCPProxyForUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateKnoxInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v7, "updateKnoxInfo is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .local v1, "mPersona":Landroid/os/PersonaManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v4, 0x0

    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    check-cast v4, Landroid/content/pm/PersonaInfo;

    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_0
    if-nez v4, :cond_2

    sput-object v9, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    sput-object v9, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_0
    return-void

    .restart local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_2
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v6, :cond_3

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sput-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    :cond_3
    const-string v6, "true"

    sget-object v7, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v8, "isKnoxKioskMode"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v7, "isKnoxKioskMode"

    const-string v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    :cond_5
    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v6, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .local v0, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    iget v6, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .local v2, "ownerUid":I
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_1

    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    const-string v7, "com.sec.android.fotaclient"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    const-string v7, "com.wssyncmldm"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v2    # "ownerUid":I
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v7, "isKnoxKioskMode"

    const-string v8, "false"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sput-object v9, Lcom/android/server/RCPManagerService;->kioskAllowedApps:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " bindToRCPProxy called for  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cls "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " returning ... service already running for pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cls = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for user = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .local v4, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v4, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v6

    .local v6, "pUserId":I
    invoke-virtual {v4, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .local v5, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eq p1, v6, :cond_1

    if-eqz v5, :cond_1

    iget-boolean v8, v5, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-ne v8, v11, :cond_1

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  returning ... dont need to bind to service as persona is deleted, user = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    .local v7, "uh":Landroid/os/UserHandle;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/RCPManagerService$RCPServiceConnection;

    invoke-direct {v2, p0, p1}, Lcom/android/server/RCPManagerService$RCPServiceConnection;-><init>(Lcom/android/server/RCPManagerService;I)V

    .local v2, "conn":Lcom/android/server/RCPManagerService$RCPServiceConnection;
    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3, v2, v11, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .local v0, "boundToService":Z
    if-nez v0, :cond_2

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " bindToRCPProxy issues binding to service with  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : cls "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " bindToRCPProxy service started : cn.getPackageName() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cn.getClassName() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public cancelCopyChunks(J)V
    .locals 5
    .param p1, "sessionId"    # J

    .prologue
    const-string v1, "cancelCopyChunks"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCopyChunks() sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->cancelCopyChunks(J)V

    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "mode"    # I

    .prologue
    const-string v1, "changePermissionMigration"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePermissionMigration() path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; gid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v1

    return v1
.end method

.method public checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "checkSAccount"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .local v0, "value":Landroid/content/IProviderCallBack;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/IProviderCallBack;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccount:  value != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "checkSAccountPassword"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccountPassword"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .local v0, "value":Landroid/content/IProviderCallBack;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/IProviderCallBack;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V

    const-string v1, "BridgeManagerService "

    const-string v2, "checkSAccountPassword: value != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 13
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z

    .prologue
    const-string v3, "copyChunks"

    invoke-static {v3}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyChunks() srcContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; srcFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; destContainerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; destFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; deleteSrc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v2

    .local v2, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    move-object v3, p2

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->copyChunks(Ljava/lang/String;ILjava/lang/String;IJIJZ)I

    move-result v3

    return v3
.end method

.method public copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "permissions"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "copyClipboardFile"

    invoke-static {v8}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copyClipboardFile from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .local v4, "retValue":Z
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "src":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "dest":Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyClipboardFile - src  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .local v0, "children":[Ljava/lang/String;
    if-nez v0, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v0

    if-ge v3, v8, :cond_6

    if-eqz v4, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, p3}, Lcom/android/server/RCPManagerService;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_2

    .end local v0    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, v5, v1}, Lcom/android/server/RCPManagerService;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v6

    :goto_3
    if-nez v4, :cond_6

    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to copy from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception trying to copyClipboardFile  from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    move v4, v7

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, p3, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copy success? = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v4

    goto/16 :goto_0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "copyFile  getRCPInterface not NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "copyFile  getRCPInterface NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    const-string v1, "copyFile"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile() srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; srcFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p2, p1, p4, p3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->copy(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method deleteAllPersonaData(I)V
    .locals 8
    .param p1, "personaID"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "callback":Landroid/content/ISyncCallBack;
    invoke-direct {p0, p1}, Lcom/android/server/RCPManagerService;->unregisterProxy(I)V

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "pairs":Ljava/util/Map$Entry;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/ISyncCallBack;

    move-object v1, v0

    if-eqz v1, :cond_0

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling doSync() for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " via his ISyncCallBack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Landroid/content/ISyncCallBack;->deletePersonaData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v4    # "pairs":Ljava/util/Map$Entry;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception thrown by deleteAllPersonaData(personaID) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown by deleteAllPersonaData(personaID) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public deleteClipboardFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v0, "deleteClipboardFile"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteClipboardFile path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    return-void
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const-string v1, "deleteFile"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "exchangeData"

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "bd":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exchangeData() return false for input param is not valid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_1
    invoke-direct {p0, p2, v4}, Lcom/android/server/RCPManagerService;->getExchangeDataMap(IZ)Ljava/util/HashMap;

    move-result-object v2

    .local v2, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IRunnableCallback;>;"
    if-nez v2, :cond_2

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "exchangeData() failure , invalid userId"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "callerPkgName"

    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.knox.bridge"

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRunnableCallback;

    .local v1, "cb":Landroid/os/IRunnableCallback;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exchangeData() START "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    :try_start_0
    invoke-interface {v1, p3}, Landroid/os/IRunnableCallback;->run(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_5
    :goto_1
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, "exchangeData() END"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .locals 8
    .param p1, "command"    # Landroid/app/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v5, "executeCommandForPersona"

    invoke-static {v5}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/Command;->personaId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Command;->packageToLaunch:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .local v1, "mPm":Landroid/os/PersonaManager;
    const/4 v4, 0x0

    .local v4, "parsedIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    iget v5, p1, Landroid/app/Command;->personaId:I

    invoke-virtual {v1, v5}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    iget v6, p1, Landroid/app/Command;->personaId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v5, p1, Landroid/app/Command;->personaId:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/RCPManagerService;->switchPersonaAndLaunch(ILandroid/content/Intent;)V

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "executecommand is done."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    iget-object v5, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    if-eqz v5, :cond_2

    :try_start_0
    iget-object v5, p1, Landroid/app/Command;->uri:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "failed to parse launch intent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_2
    const-string v5, "launchIntent"

    iget-object v6, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_0

    iget-object v4, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v5, "launchNotification"

    iget-object v6, p1, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    if-nez v4, :cond_4

    new-instance v4, Landroid/content/Intent;

    .end local v4    # "parsedIntent":Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .restart local v4    # "parsedIntent":Landroid/content/Intent;
    :cond_4
    const-string v5, "launchContentIntent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "pendingIntent"

    iget-object v6, p1, Landroid/app/Command;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "intent"

    iget-object v6, p1, Landroid/app/Command;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->receiver:Lcom/android/server/RCPManagerService$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->modeSwitchReceiver:Lcom/android/server/RCPManagerService$ModeSwitcherReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mKnoxLayoutChangeReceiver:Lcom/android/server/RCPManagerService$KnoxLayoutChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mPersonaRemovalReceiver:Lcom/android/server/RCPManagerService$PersonaRemovalReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "finalize() Unregistering the receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/os/IRCPManager$Stub;->finalize()V

    return-void
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 10
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v7, "getCallerInfo"

    invoke-static {v7}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo() called for contactRefUriAsString="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "getCallerInfo(): mBridgeProviderUserMap is null or empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iteratorPersonaIds":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    .local v0, "callingUserId":Ljava/lang/Integer;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "personaId":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_3

    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo(): Skipping for itself: the callingUserId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_0
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo(): before call to getCallerInfoDetails() for personaId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IProviderCallBack;

    .local v4, "providerCallBack":Landroid/content/IProviderCallBack;
    if-eqz v4, :cond_2

    invoke-interface {v4, p1}, Landroid/content/IProviderCallBack;->getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v5

    .local v5, "result":Landroid/content/CustomCursor;
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo() calles to getCallerInfoDetails(): result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/CustomCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Found first valid record; getCallerInfo(): result != null && result.getCount() > 0; "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v4    # "providerCallBack":Landroid/content/IProviderCallBack;
    .end local v5    # "result":Landroid/content/CustomCursor;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCallerInfo(): Remote exception thrown by service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "personaId":Ljava/lang/Integer;
    :cond_4
    sget-object v7, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v8, "getCallerInfo(): DONE... no valid record found.. returns null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    goto/16 :goto_0
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const-string v1, "getFileInfo"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileInfo() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "getFiles"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFiles() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getFiles(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const-string v6, "getPolicy"

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    .local v4, "token":J
    const/4 v2, 0x0

    .local v2, "policy":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: Policy checking block entered for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; for user/persona = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; Policy = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ; token = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "persona_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaPolicyManagerService;

    .local v1, "personaPolicyMgrSer":Lcom/android/server/pm/PersonaPolicyManagerService;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: policy value returned = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v4, v10

    if-eqz v6, :cond_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    move-object v3, v2

    .end local v1    # "personaPolicyMgrSer":Lcom/android/server/pm/PersonaPolicyManagerService;
    .end local v2    # "policy":Ljava/lang/String;
    .local v3, "policy":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "policy":Ljava/lang/String;
    .restart local v2    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicy: personaPolicyMgrSer.getRCPDataPolicyForUser threw an exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, v4, v10

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    move-object v3, v2

    .end local v2    # "policy":Ljava/lang/String;
    .restart local v3    # "policy":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "policy":Ljava/lang/String;
    .restart local v2    # "policy":Ljava/lang/String;
    :catchall_0
    move-exception v6

    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    move-object v3, v2

    .end local v2    # "policy":Ljava/lang/String;
    .restart local v3    # "policy":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .prologue
    const-string v2, "getRCPInterface"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPInterface My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPInterface  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getRCPInterface getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IRCPInterface;

    return-object v2
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .locals 5

    .prologue
    const-string v2, "getRCPProxy"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPProxy My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCPProxy  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getRCPProxy getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IRCPGlobalContactsDir;

    return-object v2
.end method

.method public getUsersToSyncFrom(Ljava/lang/String;)[I
    .locals 14
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x1

    const-string v10, "getUsersToSyncFrom"

    invoke-static {v10}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "callingUserId":I
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUsersToSyncFrom() for providerName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; UserHandle.getCallingUserId() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "persona"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaManagerService;

    .local v6, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v5, 0x0

    .local v5, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6, v13}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v10, v13, :cond_3

    :cond_1
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v11, "getUsersToSyncFrom() - personaList was null, or empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v8

    :cond_3
    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUsersToSyncFrom: perosnalist.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; personalist = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v11, "getUsersToSyncFrom() - Current user is USER/OWNER, hence disabling syncing for it"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "usersToSyncFromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    if-ge v3, v10, :cond_a

    const/4 v7, -0x1

    .local v7, "userPersonaId":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ne v3, v10, :cond_7

    const/4 v7, 0x0

    :goto_2
    if-ne v1, v7, :cond_8

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PersonaInfo;

    iget v7, v10, Landroid/content/pm/PersonaInfo;->id:I

    goto :goto_2

    :cond_8
    const-string v10, "Clipboard"

    const-string v11, "knox-export-data"

    invoke-virtual {p0, v7, v10, v11}, Lcom/android/server/RCPManagerService;->getPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "exportPolicy":Ljava/lang/String;
    if-eqz v2, :cond_9

    const-string v10, "false"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_9
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v2    # "exportPolicy":Ljava/lang/String;
    .end local v7    # "userPersonaId":I
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [I

    .local v8, "usersToSyncFromIntArr":[I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    :goto_4
    array-length v10, v8

    if-ge v3, v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    const-string v1, "handleShortcut"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in createShortcut() for packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IProviderCallBack;

    .local v0, "providerCallBack":Landroid/content/IProviderCallBack;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "queryAllProviders():  providerCallBack is not register for 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "createShortcut(): Found a provider to query. Calling it now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/IProviderCallBack;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createShortcut(): Remote exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const-string v1, "isFileExist"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFileExist() containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    const-string v1, "moveFile"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveFile() srcContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; srcFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; destFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-virtual {v0, p2, p1, p4, p3}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->move(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 4
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "moveFilesForApp  getRCPInterface not NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1, p2, p3}, Landroid/content/IRCPInterface;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "moveFilesForApp  getRCPInterface NULL "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "queryProvider"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .local v9, "callingUserId":I
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " calling queryAllProviders providerName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resourceName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/RCPManagerService;->getUserOrItsPersonasIds(I)[I

    move-result-object v14

    .local v14, "ids":[I
    if-nez v14, :cond_0

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "queryAllProviders ids[] form getUserOrItsPersonasIds() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_0
    return-object v10

    :cond_0
    array-length v15, v14

    .local v15, "idsLength":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    .local v10, "customCursorsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/CustomCursor;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_3

    aget v13, v14, v12

    .local v13, "id":I
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders(): process id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IProviderCallBack;

    .local v1, "providerCallBack":Landroid/content/IProviderCallBack;
    if-nez v1, :cond_1

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders():  providerCallBack is not register for ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "queryAllProviders(): Found a provider to query. Calling it now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/content/IProviderCallBack;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v16

    .local v16, "resultCursor":Landroid/content/CustomCursor;
    if-nez v16, :cond_2

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders() resultCursor is null for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders(): resultCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v16    # "resultCursor":Landroid/content/CustomCursor;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryAllProviders(): Remote exception thrown by service for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v16    # "resultCursor":Landroid/content/CustomCursor;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/CustomCursor;->setAutoClose(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .end local v1    # "providerCallBack":Landroid/content/IProviderCallBack;
    .end local v13    # "id":I
    .end local v16    # "resultCursor":Landroid/content/CustomCursor;
    :cond_3
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "queryAllProviders(): DONE..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 18
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    const-string v2, "queryProvider"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v16

    .local v16, "user":Landroid/os/UserHandle;
    new-instance v17, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v17, "userId":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProvider My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PersonaManagerService;

    .local v14, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/4 v12, 0x0

    .local v12, "isPersona":Z
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "currentUser":I
    const/4 v13, 0x0

    .local v13, "parentUser":I
    if-eqz v14, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v12

    invoke-virtual {v14, v10}, Lcom/android/server/pm/PersonaManagerService;->getParentUserForPersona(I)I

    move-result v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IProviderCallBack;

    .local v1, "value":Landroid/content/IProviderCallBack;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProvider():  mBridgeProviderUserMap.get(): value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; containerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Found a provider to query. Calling it now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/content/IProviderCallBack;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v15

    .local v15, "resultCursor":Landroid/content/CustomCursor;
    if-nez v15, :cond_2

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, " resultCursor is null  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v15    # "resultCursor":Landroid/content/CustomCursor;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryProvider Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_0
.end method

.method public refreshClipboard()V
    .locals 3

    .prologue
    const-string v1, "refreshClipboard"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v2, "refreshClipboard sending intent to refresh clipboard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.clipboard.sync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;)V
    .locals 8
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v5, "registerCommandExe"

    invoke-static {v5}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerCommandExe My Context is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .local v3, "user":Landroid/os/UserHandle;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerCommandExe  User calling is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v6, "registerCommandExe getting User Id"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    .local v4, "userId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerCommandExe Calling userid is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mBridgeCommandExeUserMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ICommandExeCallBack;

    .local v1, "commandExeCallback":Landroid/content/ICommandExeCallBack;
    if-eqz v1, :cond_0

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling exceuteCommand() for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " via his ICommandExeCallBack"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/RCPManagerService;->mCommandQueue:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Command;

    .local v0, "command":Landroid/app/Command;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking packages in command queue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg in commandqueue is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/Command;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0}, Landroid/content/ICommandExeCallBack;->execute(Landroid/app/Command;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "command":Landroid/app/Command;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception thrown by service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;

    .prologue
    const/4 v2, 0x1

    const-string v3, "registerExchangeData"

    invoke-static {v3}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .local v1, "userId":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerExchangeData() return false for input null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/RCPManagerService;->getExchangeDataMap(IZ)Ljava/util/HashMap;

    move-result-object v0

    .local v0, "cbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IRunnableCallback;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerExchangeData User calling is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;

    .prologue
    const-string v0, "com.sec.knox.bridge"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Blocked!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "registerMonitorCb cb registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v1, "registerMonitorCb failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    .locals 5
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;

    .prologue
    const-string v2, "registerProvider"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerProvider My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerProvider  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerProvider getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userId":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting the All_Provider bridge callback for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeProviderUserMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerProvider Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    .locals 5
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "registerRCPGlobalContactsDir"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPGlobalContactsDir My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerSync getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPGlobalContactsDirMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPGlobalContactsDir Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;)V
    .locals 5
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "registerRCPInterface"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPInterface My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPInterface  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerRCPInterface getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCPInterface Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerSync(Landroid/content/ISyncCallBack;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/ISyncCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync My Context is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "registerSync"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/RCPManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .local v0, "user":Landroid/os/UserHandle;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync  User calling is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v3, "registerSync getting User Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSync Calling userid is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveSharedSandbox(I)V
    .locals 7
    .param p1, "toUser"    # I

    .prologue
    const-string v4, "saveSharedSandbox"

    invoke-static {v4}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveSharedSandbox() to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboardSandbox"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "sandboxTo":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_1

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shared"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "sharedClipsDestination":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c0

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/RCPManagerService;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result of copying sandbox to our shared? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/clipboardSandbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "from"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/RCPManagerService;->delete(Ljava/io/File;)V

    return-void

    .end local v1    # "result":Z
    .end local v3    # "sharedClipsDestination":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v1    # "result":Z
    .restart local v3    # "sharedClipsDestination":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    const-string v5, "saveSharedSandbox() exception trying to export sandbox to user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method scanAndStartRCPProxy(I)V
    .locals 22
    .param p1, "userId"    # I

    .prologue
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy called for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "persona"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersonaManager;

    .local v11, "mPersonaManager":Landroid/os/PersonaManager;
    if-ltz p1, :cond_0

    if-nez v11, :cond_2

    :cond_0
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: return without starting .. userId = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mPersonaManager = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v12

    .local v12, "parentId":I
    move/from16 v0, p1

    if-eq v12, v0, :cond_4

    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: Executing starting RCP Proxy logic for user = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; because its a persona!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RCPProxyForUser"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v15

    .local v15, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy prefs.size() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    sget-object v20, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "prefs key(pkg) : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " value(cls) : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService;->bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_4
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v13

    .local v13, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_6

    :cond_5
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: NOT starting RCP Proxy for user = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; because it doesn\'t have personas or it is a guest!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanAndStartRCPProxy: Executing starting RCP Proxy logic for user = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; because it contains personas!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v13    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v15    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_7
    const/16 v9, 0x80

    .local v9, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    .local v5, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy appInfoList.size() "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mRCPProxyScanSP:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .local v14, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .local v6, "bundle":Landroid/os/Bundle;
    const/16 v16, 0x0

    .local v16, "proxyName":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "proxyService":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "proxyPkg":Ljava/lang/String;
    :try_start_0
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_9

    const-string v19, "proxyName"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v19, "proxyService"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    :cond_9
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v6, :cond_8

    if-eqz v16, :cond_8

    if-eqz v18, :cond_8

    if-eqz v17, :cond_8

    const-string v19, "RCPProxy"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy proxyName "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " proxyService "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " proxyPkg "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RCPManagerService;->bindToRCPProxy(ILjava/lang/String;Ljava/lang/String;)V

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v16    # "proxyName":Ljava/lang/String;
    .end local v17    # "proxyPkg":Ljava/lang/String;
    .end local v18    # "proxyService":Ljava/lang/String;
    :cond_a
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "proxyName":Ljava/lang/String;
    .restart local v17    # "proxyPkg":Ljava/lang/String;
    .restart local v18    # "proxyService":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/NullPointerException;
    sget-object v19, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " scanAndStartRCPProxy() Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setupClipbardSandbox()V
    .locals 7

    .prologue
    const/16 v6, 0x1ff

    const/4 v5, -0x1

    const-string v3, "setupClipbardSandbox"

    invoke-static {v3}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/clipboardSandbox"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "sandboxDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboardSandbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "sandboxFrom":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/clipboardSandbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "sandboxTo":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    return-void
.end method

.method public startRCPProxy(I)V
    .locals 5
    .param p1, "newUserId"    # I

    .prologue
    const-string v2, "startRCPProxy"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeSyncUserMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ISyncCallBack;

    .local v0, "callback":Landroid/content/ISyncCallBack;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IUserSwitchObserver : Exception while scanAndStartRCPProxy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling doSync() for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " via his ISyncCallBack."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-interface {v0}, Landroid/content/ISyncCallBack;->doSync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown by service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchPersona(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "switchPersona"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToUser() with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "mPersona":Landroid/os/PersonaManager;
    sget-object v1, Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch PERSONA to id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
