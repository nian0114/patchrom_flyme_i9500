.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.super Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    }
.end annotation


# static fields
.field private static final ADMIN_ALL:I = 0x0

.field private static final APK_PATH:Ljava/lang/String; = "/system/container/"

.field private static final CREATETIME_INSTALL_LIST:[Ljava/lang/String;

.field private static final CREATION_PARAMS:Ljava/lang/String; = "creation_params"

.field private static final DEBUG:Z

.field private static final FLAG_BASE:I = 0x1

.field private static final FLAG_MIGRATION:I = 0x100

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final HANDLER_APK:Ljava/lang/String; = "KnoxSecureHandler/KnoxSecureHandler.apk"

.field private static final INTENT_B2B_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2b"

.field private static final INTENT_B2B_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2b"

.field private static final INTENT_B2C_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2c"

.field private static final INTENT_B2C_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2c"

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final INTENT_KNOX_SETUPWIZARD_DIED:Ljava/lang/String; = "com.sec.knox.died.SETUP_WIZARD"

.field private static final INTENT_PERSONA_MDM_LOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmlocked"

.field private static final INTENT_PERSONA_MDM_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmunlocked"

.field private static final INTENT_START_MIGRATION_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.MIGRATION_WIZARD"

.field private static final INTENT_START_SETUP_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.SETUP_WIZARD"

.field private static final INTENT_VALIDATE_LICENSE_KEY_STATUS_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.licensekey.status"

.field private static final LWC_FOLDERHEADERICON_HEIGHT:I = 0x11

.field private static final LWC_FOLDERHEADERICON_WIDTH:I = 0x5a

.field private static final MIGRATION_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final SEAMS_RESOURCE_TYPE_SDCARD:I = 0x0

.field private static final SETUP_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.knoxsetupwizardclient"

.field private static TAG:Ljava/lang/String; = null

.field private static TYPE_FILE_PATH:Ljava/lang/String; = null

.field private static final VALID_KLMS_LICENSE_CODE:I = 0x5a

.field private static final WIZARD_APK:Ljava/lang/String; = "ContainerAgent2/ContainerAgent2.apk"

.field private static final isEngMode:Z

.field private static mContext:Landroid/content/Context; = null

.field private static mDefaultPkgList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback; = null

.field private static final tileListForKiosk:Ljava/lang/String; = "Wifi;Location;SilentMode;AutoRotate;Bluetooth;SmartStay;PowerSaving;AirplaneMode;"


# instance fields
.field private final DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

.field final LAUNCHER_FOR_COM_ACTIVITY:Ljava/lang/String;

.field final LAUNCHER_FOR_COM_PACKAGE:Ljava/lang/String;

.field private final SECOND_KNOX_ICON_PATH:Ljava/lang/String;

.field private containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

.field private final mContainerReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFotaRequired:Z

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field mParser:Lorg/xmlpull/v1/XmlPullParser;

.field mPersona:Landroid/os/PersonaManager;

.field private mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

.field private mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

.field private mSEAMS:Lcom/android/server/SEAMService;

.field private mSetupWizardUid:I

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field mUms:Landroid/os/UserManager;

.field private mWms:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "KnoxMUMContainerPolicy"

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v0, "/data/system/container/"

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.widgetapp.digitalclock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.sbrowsertry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.samsung.android.snote"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.hancom.androidpc.appwidget"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.marvin.talkback"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->FOTA_DEBUG_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;-><init>()V

    const-string v0, "/system/container/resources/knox_icon.png"

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

    const-string v0, "/system/container/resources/knox_icon2.png"

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->SECOND_KNOX_ICON_PATH:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupWizardUid:I

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    iput-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v0, "com.sec.knox.bridge"

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->LAUNCHER_FOR_COM_PACKAGE:Ljava/lang/String;

    const-string v0, "com.sec.knox.bridge.activity.klms.UserHomeReplaceCOMActivity"

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->LAUNCHER_FOR_COM_ACTIVITY:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sput-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->prepareEnterprisePolicyData()V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .local v8, "filter1":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.containeragent.klms.licensekey.status"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter2":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->packageInstalledForExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->packageRemovedForExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/pm/PersonaState;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PersonaState;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Landroid/content/pm/PersonaState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminLockIntent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isTvzwProject()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Ljava/util/List;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    sput-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$900()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    sput-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object p0
.end method

.method private addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v0

    .local v0, "ret":Z
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private addContainerOwnerRelationship(II)Z
    .locals 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Add Container owner relationship."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container Added to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add container to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at addContainerToDB "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addPackageToExternalStorageSBABlackListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    const-string v4, ""

    .local v4, "sig":Ljava/lang/String;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    array-length v7, p3

    new-array v5, v7, [Ljava/lang/String;

    .local v5, "sigStrins":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p3

    if-ge v2, v7, :cond_0

    aget-object v7, p3, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v7, ","

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v2    # "i":I
    .end local v5    # "sigStrins":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "result":Z
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .local v6, "where":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "packageName"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "signatures"

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v7, v8, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-eqz v3, :cond_3

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "addPackageToExternalStorageSBABlackListInternal policy passed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_2
    const-string v7, "signatures"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private addPackageToExternalStorageWhiteListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    const-string v4, ""

    .local v4, "sig":Ljava/lang/String;
    if-eqz p3, :cond_1

    array-length v7, p3

    if-lez v7, :cond_1

    array-length v7, p3

    new-array v5, v7, [Ljava/lang/String;

    .local v5, "sigStrins":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p3

    if-ge v2, v7, :cond_0

    aget-object v7, p3, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v7, ","

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v2    # "i":I
    .end local v5    # "sigStrins":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "result":Z
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .local v6, "where":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "packageName"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageWhitelist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v7, "signatures"

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageWhitelist"

    invoke-virtual {v7, v8, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-eqz v3, :cond_3

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "addPackageToExternalStorageWhiteList policy passed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :goto_2
    return v7

    :cond_2
    const-string v7, "signatures"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageWhitelist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const-string v1, "KnoxMUMContainerPolicy"

    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

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
    sget-boolean v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private checkForFOTA()V
    .locals 11

    .prologue
    iget-boolean v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->doUpgradeForExistingConfigurationTypes()V

    const/4 v4, 0x0

    .local v4, "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "reading from xml resource for fota"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneInstallApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateInstallPackagesForCloneTypes(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneRemoveApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateRemovePackagesForCloneTypes(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneDisableApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateDisablePackagesForCloneTypes(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneReenableApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateReenablePackagesForCloneTypes(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "Failed to open file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v8

    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v3, "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v3, :cond_2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading type object:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v5

    .local v5, "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Knox config found existing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v6

    .local v6, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v5    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v6    # "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v5    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v5    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 10
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Signature one is null :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private disableCover(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverManager;->disableCoverManager(Z)V

    :cond_1
    return-void
.end method

.method private disableOwnerLaunchersforCOM(I)Z
    .locals 17
    .param p1, "userId"    # I

    .prologue
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEnabledLaunchers(I)Ljava/util/List;

    move-result-object v8

    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v12, 0x0

    .local v12, "result":Z
    if-eqz v8, :cond_2

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "disabledPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .local v10, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v14, 0x1

    new-array v2, v14, [Landroid/content/ComponentName;

    .local v2, "components":[Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v14, "com.sec.knox.bridge"

    const-string v15, "com.sec.knox.bridge.activity.klms.UserHomeReplaceCOMActivity"

    invoke-direct {v3, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "defaultComponent":Landroid/content/ComponentName;
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v3, v14, v15, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .local v4, "disableComponent":Landroid/content/ComponentName;
    const-string v14, "com.sec.knox.bridge"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    sget-boolean v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v14, :cond_1

    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "package name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "userid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/PersonaManagerService;->setOwnerPackageSettingInstalled(Ljava/lang/String;Z)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "ownerLauncher":Ljava/lang/String;
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " disableOwnerLaunchersforCOM successfull processed for package-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "components":[Landroid/content/ComponentName;
    .end local v3    # "defaultComponent":Landroid/content/ComponentName;
    .end local v4    # "disableComponent":Landroid/content/ComponentName;
    .end local v5    # "disabledPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ownerLauncher":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v12, 0x0

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return v12

    .restart local v2    # "components":[Landroid/content/ComponentName;
    .restart local v3    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v5    # "disabledPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_3
    :try_start_1
    const-string v14, "activity"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v1, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    const-string v14, "com.sec.android.app.launcher"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    :cond_4
    const/4 v14, 0x0

    aput-object v3, v2, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v9, v15}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "persona"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PersonaManagerService;

    .local v13, "service":Lcom/android/server/pm/PersonaManagerService;
    sget-object v14, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v14}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v13, v14, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    sget-object v14, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v15, " disableOwnerLaunchersforCOM Saved disabled launchers...."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v12, 0x1

    goto :goto_1
.end method

.method private doUpgradeForExistingConfigurationTypes()V
    .locals 5

    .prologue
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "doUpgradeForExistingConfigurationTypes:upgrading existing types"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v0, "eType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUpgradeForExistingConfigurationTypes:type name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "eType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-void
.end method

.method private dumpAsString()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .local v1, "param":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->describeContents()I

    goto :goto_0

    .end local v1    # "param":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_0
    return-void
.end method

.method private dumpConfigurationForPersona(ILjava/io/PrintWriter;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persona:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .local v0, "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Object dump :{ mName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumNonLetters :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumLetters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumNumeric : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumUpperCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumLowerCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumSymbols : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordQuality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumFailedPasswordsForWipe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mManagedType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumTimeToLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomBadgeIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomHomeScreenWallpaper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomLockScreenWallpaper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomStatusLabel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomStatusIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppInstallationList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForbiddenStrings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mProtectedList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mGoogleAppsList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumCharacterOccurences : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumCharacterSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumNumericSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSimplePasswordEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMultifactorAuthEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordPattern : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAllowMultiwindowMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAllowTaskManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    const-string v1, " RCP Data sync settings : "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    const-string v1, " RCP Allow User change Data sync settings : "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    const-string v1, " RCP Notification sync settings : "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .local v5, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v6, " }"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    return-void
.end method

.method private enableOwnerLaunchersForCOM(I)Z
    .locals 21
    .param p1, "userId"    # I

    .prologue
    sget-object v18, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher is called for user -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v18

    sget-object v19, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;

    move-result-object v10

    .local v10, "disabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v18, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "com_default_owner_launcher"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .local v8, "defaultLauncher":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "defaulltLauncherInfo":[Ljava/lang/String;
    :goto_0
    const/16 v17, 0x0

    .local v17, "result":Z
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_0
    move/from16 v18, v17

    :goto_1
    return v18

    .end local v5    # "defaulltLauncherInfo":[Ljava/lang/String;
    .end local v17    # "result":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5    # "defaulltLauncherInfo":[Ljava/lang/String;
    .restart local v17    # "result":Z
    :cond_2
    sget-object v18, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher defaultLauncher-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " enabled launchers count "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .local v15, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v18, "com.sec.knox.bridge"

    const-string v19, "com.sec.knox.bridge.activity.klms.UserHomeReplaceCOMActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "bridgeComponent":Landroid/content/ComponentName;
    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v15, v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "bridgeComponent":Landroid/content/ComponentName;
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [Landroid/content/ComponentName;

    .local v4, "components":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .local v6, "defaultComponent":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .local v12, "i":I
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "info":Ljava/lang/String;
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .local v16, "launcherInfo":[Ljava/lang/String;
    sget-object v18, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher package name "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and Activity name -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/ComponentName;

    const/16 v18, 0x0

    aget-object v18, v16, v18

    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, "disableComponent":Landroid/content/ComponentName;
    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v16, v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/pm/PersonaManagerService;->setOwnerPackageSettingInstalled(Ljava/lang/String;Z)Z

    sget-object v18, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher is successfull for package-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", name -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and user 0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v9, v4, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .end local v4    # "components":[Landroid/content/ComponentName;
    .end local v6    # "defaultComponent":Landroid/content/ComponentName;
    .end local v9    # "disableComponent":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "info":Ljava/lang/String;
    .end local v16    # "launcherInfo":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "components":[Landroid/content/ComponentName;
    .restart local v6    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v12    # "i":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v5, :cond_5

    :try_start_2
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    new-instance v7, Landroid/content/ComponentName;

    const/16 v18, 0x0

    aget-object v18, v5, v18

    const/16 v19, 0x1

    aget-object v19, v5, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "defaultComponent":Landroid/content/ComponentName;
    .local v7, "defaultComponent":Landroid/content/ComponentName;
    move-object v6, v7

    .end local v7    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v6    # "defaultComponent":Landroid/content/ComponentName;
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v18

    sget-object v19, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V

    .end local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    move/from16 v18, v17

    goto/16 :goto_1

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v18, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v19, " default launcher info not valid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v17, 0x0

    goto :goto_5
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private filterType(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-object v2
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private findMatchingComponent(II)Landroid/content/ComponentName;
    .locals 15
    .param p1, "userId"    # I
    .param p2, "adminUid"    # I

    .prologue
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adminPackageUid parameter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v14, 0x8080

    move/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .local v3, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "No admins found."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .local v10, "packages":[Ljava/lang/String;
    if-eqz v10, :cond_3

    array-length v12, v10

    if-lez v12, :cond_3

    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_1
    if-ge v8, v4, :cond_3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v9, "packageName":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_2

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "packageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchPackages([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v12, v11}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .local v5, "dpi":Landroid/app/admin/DeviceAdminInfo;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin match returning component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_0

    .end local v5    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v13, "Exception throw during creating  DeviceAdminInfo "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private getAdminComponentName(II)Landroid/content/ComponentName;
    .locals 13
    .param p1, "id"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    .local v3, "componentName":Landroid/content/ComponentName;
    if-eq p2, v10, :cond_1

    const/4 v2, 0x0

    .local v2, "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    .local v4, "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual {v4, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .local v1, "admin":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .local v7, "pName":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current admin loop :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adminAppInfo Uid :"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_2

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, p2, :cond_3

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin found :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .end local v1    # "admin":Landroid/content/ComponentName;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pName":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findMatchingComponent(II)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v2    # "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-object v3

    .restart local v0    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v1    # "admin":Landroid/content/ComponentName;
    .restart local v2    # "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pName":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getting app info failed. package Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v9, v10

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private getAdminId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .local v6, "userId":I
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p2, v8, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    .local v5, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v7, -0x2710

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v4

    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .local v3, "pdai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packages Info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pdai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v5    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App Info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method private getAvailableInternalMemory()J
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "blockSize":J
    const-wide/16 v0, 0x0

    .local v0, "availableBlocks":J
    const-wide/16 v8, 0x0

    .local v8, "mAvailSize":J
    const-wide/16 v2, 0x0

    .local v2, "availableMemoryInMB":J
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    mul-long v8, v0, v4

    const-wide/32 v10, 0x100000

    div-long v2, v8, v10

    sget-object v10, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Available internal memory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v12, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and availableMemoryInMB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContainers(I)Ljava/util/List;
    .locals 11
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers: admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .local v5, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .local v3, "ownerUid":I
    sget-boolean v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v3, p1, :cond_0

    iget v8, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownerUid":I
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .restart local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "params":Lcom/sec/knox/container/ContainerCreationParams;
    const/4 v1, 0x0

    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/knox/container/ContainerCreationParams;

    .local v2, "item":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    monitor-exit v5

    return-object v3

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getDefaultLauncher(I)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    const/high16 v7, 0x10000

    :try_start_0
    invoke-interface {v3, v2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLauncher":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getDefaultLauncher currentLauncher -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "currentLauncher":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method private getDefaultTypeObj(Z)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 5
    .param p1, "isUserManaged"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object v2

    .local v2, "defaultTypes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    .local v0, "defaultType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v1, "defaultTypeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v4

    if-ne v4, p1, :cond_3

    move-object v0, v1

    goto :goto_0
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "pdaVersion":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mFirmwareVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnabledLaunchers(I)Ljava/util/List;
    .locals 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "launcherList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "pm":Landroid/content/pm/PackageManager;
    const v8, 0x10040

    invoke-virtual {v5, v2, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .local v6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEnabledLaunchers: packageName "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and  name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in getEnabledLaunchers "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEnabledLaunchers: launcherList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private getMyKnoxAminUid()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getMyKnoxAminUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .prologue
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v1, v3

    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getResolveInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSEAMSService()Lcom/android/server/SEAMService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    if-nez v0, :cond_0

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSEAMS:Lcom/android/server/SEAMService;

    return-object v0
.end method

.method private getSSID(I)Ljava/util/Set;
    .locals 10
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ContainerOnly_wifiAP"

    const-string v9, "wifiSSIDforKNOX"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSignatureFromExternalStorageWhiteListInternal(Ljava/lang/String;I)[Landroid/content/pm/Signature;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "signatures"

    aput-object v12, v0, v11

    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "signatures":[Landroid/content/pm/Signature;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "packageName"

    invoke-virtual {v1, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "KnoxExternalStorageWhitelist"

    invoke-virtual {v11, v12, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .local v5, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "getPackageSignaturesFromExternalStorageWhiteList providerList not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "signatures"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "sigs":Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-boolean v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList providerList sig:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v11, ","

    invoke-static {v9, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "sigStrings":[Ljava/lang/String;
    if-eqz v7, :cond_5

    array-length v11, v7

    if-lez v11, :cond_5

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList providerList sigStrings:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v11, v7

    new-array v8, v11, [Landroid/content/pm/Signature;

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v7

    if-ge v3, v11, :cond_5

    aget-object v11, v7, v3

    if-eqz v11, :cond_4

    aget-object v11, v7, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    sget-boolean v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList creating signatures : ----"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v7, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "----"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    new-instance v6, Landroid/content/pm/Signature;

    aget-object v11, v7, v3

    invoke-direct {v6, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .local v6, "s":Landroid/content/pm/Signature;
    if-eqz v6, :cond_4

    sget-boolean v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList signature :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    aput-object v6, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "s":Landroid/content/pm/Signature;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_5
    if-eqz v8, :cond_0

    array-length v11, v8

    if-lez v11, :cond_0

    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "getPackageSignaturesFromExternalStorageWhiteList SUCCESS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v8

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "sigStrings":[Ljava/lang/String;
    .end local v9    # "sigs":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_2
    return-object v11

    :cond_6
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "getPackageSignaturesFromExternalStorageWhiteList DB has no value"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private static getTIMAStatus()I
    .locals 9

    .prologue
    const/4 v1, -0x1

    .local v1, "timaStatus":I
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    .local v2, "timaVersion20":Z
    const/4 v3, 0x0

    .local v3, "timaVersion30":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    const-string v6, "2.0"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v6, "3.0"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_2
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTIMAStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    const-string v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getUserManagerService()Landroid/os/UserManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mUms:Landroid/os/UserManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v0, :cond_0

    const-string v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-object v0
.end method

.method private installDefaultApplications(ILjava/util/List;)V
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/os/PersonaManager;->installApplications(ILjava/util/List;)Z

    return-void
.end method

.method private isEnoughMemoryToCreateContainer()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAvailableInternalMemory()J

    move-result-wide v2

    long-to-int v0, v2

    .local v0, "availableSpace":I
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AvailableSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x264

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFOTARequired()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v3

    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFOTARequired currentversion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Fota required......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isKioskEnabledOnOwner()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .local v2, "status":Z
    :try_start_0
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isKioskModeEnabledAsUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKioskEnabledOnOwner ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .local v6, "result":Z
    if-nez p0, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "packageName=null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_0
    return v7

    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_0
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "packageManager=null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .restart local v7    # "result":I
    goto :goto_0

    .end local v7    # "result":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    move v7, v6

    .restart local v7    # "result":I
    goto :goto_0

    .end local v7    # "result":I
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package is not installed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isTIMAEnabled()Z
    .locals 4

    .prologue
    const-string v1, "1"

    const-string v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "TIMA is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTvzwProject()Z
    .locals 3

    .prologue
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "buildcarrier":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "result":Z
    const-string v2, "trltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "treltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trhltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tbltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tbeltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "tre3gvzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trhpltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 5
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v2, v1

    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    if-eqz v2, :cond_2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private matchPackages([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages for uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private notifySdcardSBABlacklistUpdate(I)V
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "containerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySdcardSBABlacklistUpdate sending broadcast for SBA Blacklist update for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifySdcardWhitelistUpdate(I)V
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "source"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "containerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySdcardWhitelistUpdate sending broadcast for  Whitelist update for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private packageInstalledForExternalStorage(Ljava/lang/String;)V
    .locals 26
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "packageInstalledForExternalStorage "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    .local v17, "pm":Landroid/content/pm/IPackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .local v15, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PersonaInfo;

    .local v14, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v14, :cond_0

    const/16 v23, 0x40

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "adminUid":Ljava/lang/Integer;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .local v21, "where":Landroid/content/ContentValues;
    const-string v23, "adminUid"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "packageName"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "KnoxExternalStorageWhitelist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .local v7, "count":I
    if-lez v7, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSignatureFromExternalStorageWhiteListInternal(Ljava/lang/String;I)[Landroid/content/pm/Signature;

    move-result-object v20

    .local v20, "signatures":[Landroid/content/pm/Signature;
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v23

    if-nez v23, :cond_3

    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Package is installed, and signature doesn\'t match. So return falure"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v5    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    .end local v21    # "where":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void

    .restart local v5    # "adminUid":Ljava/lang/Integer;
    .restart local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "count":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "signatures":[Landroid/content/pm/Signature;
    .restart local v21    # "where":Landroid/content/ContentValues;
    :cond_3
    if-nez v20, :cond_4

    :try_start_1
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "Whitelist don\'t have signature information. Using package manager signature. Hence, notifying SEAMS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v20, v0

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    if-nez v23, :cond_5

    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "addPackageToExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v5    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    .end local v21    # "where":Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .local v13, "n":Ljava/lang/Exception;
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v13    # "n":Ljava/lang/Exception;
    .restart local v5    # "adminUid":Ljava/lang/Integer;
    .restart local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "count":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "signatures":[Landroid/content/pm/Signature;
    .restart local v21    # "where":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "PackageName found in whitelist and signature matches. Hence, notifying SEAMS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .local v19, "sigStrins":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_6

    aget-object v23, v20, v10

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v19, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v18

    .local v18, "retCode":I
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "packageInstalledForExternalStorage : SEAMS service retCode - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardWhitelistUpdate(I)V

    .end local v10    # "i":I
    .end local v18    # "retCode":I
    .end local v19    # "sigStrins":[Ljava/lang/String;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :cond_7
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .local v22, "where1":Landroid/content/ContentValues;
    const-string v23, "adminUid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "KnoxExternalStorageSBABlacklist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    .local v8, "count1":I
    if-lez v8, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    if-nez v23, :cond_8

    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v24, "packageInstalledForExternalStorage : SEAMS service cannot be null."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v20, v0

    .restart local v20    # "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .restart local v19    # "sigStrins":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_9

    aget-object v23, v20, v10

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v19, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v18

    .restart local v18    # "retCode":I
    sget-object v23, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "packageInstalledForExternalStorage SBA Blacklist: SEAMS service retCode - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardSBABlacklistUpdate(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private packageRemovedForExternalStorage(Ljava/lang/String;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .local v13, "pm":Landroid/content/pm/IPackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v12

    .local v12, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PersonaInfo;

    .local v11, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "adminUid":Ljava/lang/Integer;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, "where":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "packageName"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "KnoxExternalStorageWhitelist"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .local v6, "count":I
    if-lez v6, :cond_4

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "PackageName found in whitelist not removing from whitelist. Just, notifying SEAMS"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v17

    if-nez v17, :cond_3

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "packageRemovedForExternalStorage : SEAMS service cannot be null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "adminUid":Ljava/lang/Integer;
    .end local v5    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "count":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v12    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v15    # "where":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .restart local v4    # "adminUid":Ljava/lang/Integer;
    .restart local v5    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v12    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "where":Landroid/content/ContentValues;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v17

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SEAMService;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v14

    .local v14, "retCode":I
    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "packageRemovedForExternalStorage : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v14    # "retCode":I
    :cond_4
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .local v16, "where1":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "packageName"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "KnoxExternalStorageSBABlacklist"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .local v7, "count1":I
    if-lez v7, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v17

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SEAMService;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v14

    .restart local v14    # "retCode":I
    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "packageRemovedForExternalStorage SBA Blacklist : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v4    # "adminUid":Ljava/lang/Integer;
    .end local v5    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "count":I
    .end local v7    # "count1":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v12    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v14    # "retCode":I
    .end local v15    # "where":Landroid/content/ContentValues;
    .end local v16    # "where1":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .local v10, "n":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private prepareEnterprisePolicyData()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    :goto_0
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .local v0, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isFOTARequired()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mIsFotaRequired:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkForFOTA()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_2
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "reading from xml file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0

    .restart local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :catch_0
    move-exception v4

    .local v4, "ioe":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .restart local v4    # "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open file - IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .local v5, "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_6
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get parser- exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v4

    .restart local v4    # "ioe":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_5
    throw v6

    :catch_5
    move-exception v4

    .restart local v4    # "ioe":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method private processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 3
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
        0x61000 -> :sswitch_0
    .end sparse-switch
.end method

.method private processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;I)V
    .locals 13
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    .local v5, "processed":Z
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v7, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    .local v1, "currentUser":I
    invoke-virtual {v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getLockType()I

    move-result v3

    .local v3, "lockType":I
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v6

    .local v6, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lockType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .local v0, "activeQuality":I
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .local v2, "keyguardQuality":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "active quality = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keyguard quality = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v12}, Lcom/sec/knox/container/ContainerCreationParams;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    if-eqz v5, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "Container creation params processed successfully"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "activeQuality":I
    .end local v1    # "currentUser":I
    .end local v2    # "keyguardQuality":I
    .end local v3    # "lockType":I
    .end local v5    # "processed":Z
    .end local v6    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v7    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    return-void

    .restart local v1    # "currentUser":I
    .restart local v3    # "lockType":I
    .restart local v5    # "processed":Z
    .restart local v6    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v7    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type.getPasswordQuality() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v9

    invoke-virtual {v7, v8, v9, v11, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    const/high16 v8, 0x10000

    invoke-virtual {v7, v12, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;II)V

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_2
    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v9

    invoke-virtual {v7, v8, v9, v11, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;I)V

    invoke-virtual {v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 20
    .param p1, "callingUid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .local v15, "userHandle":I
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .local v11, "screenDimesions":Landroid/graphics/Point;
    const/4 v10, 0x0

    .local v10, "profileDimesions":Landroid/graphics/Point;
    const/4 v2, 0x0

    .local v2, "badgeDimesions":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .local v6, "folderHeaderDimensions":Landroid/graphics/Point;
    const/16 v17, 0x5a

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Point;->set(II)V

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .local v16, "winMgr":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen dimension: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/data/container2.0/"

    .local v3, "basedir":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "outDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-eqz v17, :cond_12

    :cond_0
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/File;->setWritable(Z)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    const-string v3, "/data/container2.0/icon/"

    new-instance v8, Ljava/io/File;

    .end local v8    # "outDir":Ljava/io/File;
    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8    # "outDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_1
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/File;->setWritable(Z)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    const/4 v5, 0x0

    .local v5, "destPath":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "status":Z
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/container2.0/icon/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomBadgeIcon.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v14, :cond_3

    const/4 v5, 0x0

    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v13

    .local v13, "srcPath":Ljava/lang/String;
    if-eqz v13, :cond_15

    const-string v17, "CustomHomeWallpaper-b2b.jpg"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "DefaultHomeWallpaper.jpeg"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_15

    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "DefaultHomeWallpaper.jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and source path "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v12, "source":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_16

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "dest":Ljava/io/File;
    invoke-static {v12, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "Copying file is processed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "dest":Ljava/io/File;
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    .end local v12    # "source":Ljava/io/File;
    .end local v13    # "srcPath":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomLockScreenWallpaper.jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v11}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormatToSize(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_8

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v14, :cond_9

    const/4 v5, 0x0

    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_d

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomStatusIcon.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_b

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v14, :cond_c

    const/4 v5, 0x0

    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v17, p2

    check-cast v17, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v7

    .local v7, "headerIcon":Ljava/lang/String;
    if-eqz v7, :cond_10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "FolderHeaderIcon.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    invoke-static {v7, v0, v5, v6}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_e

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image path folder header icon: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v14, :cond_f

    const/4 v5, 0x0

    :cond_f
    move-object/from16 v17, p2

    check-cast v17, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    .end local v7    # "headerIcon":Ljava/lang/String;
    :cond_10
    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_11

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Images after copy in services:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v17, 0x1

    .end local v5    # "destPath":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v14    # "status":Z
    :goto_2
    return v17

    :cond_12
    sget-boolean v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v17, :cond_13

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create folder: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/16 v17, 0x0

    goto :goto_2

    :cond_14
    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create folder: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    goto :goto_2

    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v9    # "prefix":Ljava/lang/String;
    .restart local v13    # "srcPath":Ljava/lang/String;
    .restart local v14    # "status":Z
    :cond_15
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomHomeScreenWallpaper.jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .restart local v12    # "source":Ljava/io/File;
    :cond_16
    const/4 v5, 0x0

    sget-object v17, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "source file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " doesn\'t exist"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private removeConfigurationTypeInternal(ILjava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .local v0, "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v1

    monitor-exit v2

    :goto_0
    return v1

    :cond_1
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .locals 13
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v7, v10

    :goto_0
    return v7

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    const/4 v4, 0x0

    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v6

    .local v6, "iconPath":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "deleted":Z
    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "badge icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v6, :cond_a

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "badge icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCustomHomeScreenWallpaper icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v6, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "home screen wall paper icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCustomLockScreenWallpaper icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v6, :cond_6

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lock screen wall paper icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCustomStatusIcon icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v6, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "custom status icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_8
    :try_start_7
    instance-of v7, p1, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v7, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getFolderHeaderIcon icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_9

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_8
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "folder header icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v7, 0x1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "deleted":Z
    .end local v6    # "iconPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_9
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v10

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    :catchall_0
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .restart local v2    # "deleted":Z
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "iconPath":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_9
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_2

    :cond_a
    move-object v5, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_1
.end method

.method private removeContainer(IZ)I
    .locals 40
    .param p1, "containerId"    # I
    .param p2, "force"    # Z

    .prologue
    const/16 v28, -0x4b1

    .local v28, "retVal":I
    const-wide/16 v34, 0x0

    .local v34, "token":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, "callingUid":I
    const/16 v37, 0x1

    move/from16 v0, p2

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v37

    if-lez v37, :cond_0

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v38, "removeContainer: CONTAINER_CREATION_IN_PROGRESS is in progress."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v37, -0x3f6

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v37

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v18

    .local v18, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez p2, :cond_1

    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v37, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1

    const/16 v37, -0x4b2

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v17

    .local v17, "ownerUid":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainerOwnerRelationship(I)Z

    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    move/from16 v37, v0

    if-eqz v37, :cond_6

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->disableCover(Z)V

    const/16 v32, 0x3e8

    .local v32, "systemAdminUid":I
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v38, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v9, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .local v9, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    if-eqz v37, :cond_2

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMassStorage(Z)Z

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v38, "removeContainer: remove restriction policy for StatusBar / FactoryReset"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v37, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v38, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v38}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v13

    .local v13, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v13, :cond_3

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v38, "Enable OWNER\'s multi-window for Kiosk Mode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    :cond_3
    new-instance v37, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v37

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v38, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v38}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v13

    if-eqz v13, :cond_4

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v38, "Enable OWNER\'s SystemBar for Kiosk Mode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    :cond_4
    new-instance v37, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v37

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    sget-object v38, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v38}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v13

    if-eqz v13, :cond_5

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v38, "Enable Persona\'s multi-window for Kiosk Mode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    :cond_5
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "notification_panel_active_app_list_for_reset_rollback"

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    .local v33, "titleList":Ljava/lang/String;
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "notification_panel_active_app_list"

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "notification_panel_active_app_list_for_reset"

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enableOwnerLaunchersForCOM(I)Z

    .end local v9    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v13    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v32    # "systemAdminUid":I
    .end local v33    # "titleList":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v36

    .local v36, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v36, :cond_7

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v38, "removeContainer: configuration list updated successfully."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v37

    if-eqz v37, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SEAMService;->clearWhitelist(II)I

    move-result v26

    .local v26, "retCode":I
    sget-boolean v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v37, :cond_8

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Remove container clearWhitelist : SEAMS service retCode - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " for containerid-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SEAMService;->clearSBABlacklist(II)I

    move-result v27

    .local v27, "retCode1":I
    sget-boolean v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v37, :cond_9

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Remove container clearSBABlacklist: SEAMS service retCode - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " for containerid-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v26    # "retCode":I
    .end local v27    # "retCode1":I
    :cond_9
    new-instance v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v6, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v6, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v30

    .local v30, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v14

    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v14, :cond_b

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/ProxyDeviceAdminInfo;

    .local v23, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v29

    .local v29, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v29, :cond_a

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_a

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_a

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v17    # "ownerUid":I
    .end local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v23    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v29    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Exception:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "removeContainer("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ") - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerRemovalIntent(II)V

    move/from16 v37, v28

    goto/16 :goto_0

    .restart local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v17    # "ownerUid":I
    .restart local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_b
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->removePersona(I)I

    move-result v28

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, p1

    if-ne v0, v1, :cond_10

    const/4 v12, 0x1

    .local v12, "isBYODAdmin":Z
    :goto_3
    sget-boolean v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v37, :cond_c

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "removeContainer MDM admin uid -"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " and userId -"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " and isBYODAdmin - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v12, :cond_12

    const/16 v16, 0x0

    .local v16, "otherBYODAdminExist":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v21

    .local v21, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PersonaInfo;

    .local v19, "perInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v19, :cond_d

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "container:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, p1

    if-eq v0, v1, :cond_d

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v15

    .local v15, "otherAdminUid":I
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Other otherAdminUid:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " for container "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    const/4 v11, 0x1

    .local v11, "isBYOD":Z
    :goto_4
    if-eqz v11, :cond_d

    const/16 v16, 0x1

    .end local v11    # "isBYOD":Z
    .end local v15    # "otherAdminUid":I
    .end local v19    # "perInfo":Landroid/content/pm/PersonaInfo;
    :cond_e
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "removeContainer otherBYODAdminExist:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_f

    const/16 v32, 0x3e8

    .restart local v32    # "systemAdminUid":I
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "removeContainer systemAdminUid-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v38, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .local v8, "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v24

    .local v24, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/16 v37, 0x1

    :try_start_5
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v8    # "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v16    # "otherBYODAdminExist":Z
    .end local v21    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .end local v32    # "systemAdminUid":I
    :cond_f
    :goto_5
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isBYODAdmin":Z
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_3

    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "isBYODAdmin":Z
    .restart local v15    # "otherAdminUid":I
    .restart local v16    # "otherBYODAdminExist":Z
    .restart local v19    # "perInfo":Landroid/content/pm/PersonaInfo;
    .restart local v21    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_11
    const/4 v11, 0x0

    goto :goto_4

    .end local v15    # "otherAdminUid":I
    .end local v19    # "perInfo":Landroid/content/pm/PersonaInfo;
    .restart local v8    # "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v32    # "systemAdminUid":I
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_6
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "SecurityException : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isBYODAdmin":Z
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v16    # "otherBYODAdminExist":Z
    .end local v17    # "ownerUid":I
    .end local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v21    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .end local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v32    # "systemAdminUid":I
    .end local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_0
    move-exception v37

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v37

    .restart local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v12    # "isBYODAdmin":Z
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v17    # "ownerUid":I
    .restart local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_12
    :try_start_7
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v38, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v7, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .local v7, "edmAdmin":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v24

    .restart local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v22

    .local v22, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v31, 0x1

    .local v31, "setUsbDebuggingEnabled":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_13
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .local v20, "persona":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move/from16 v0, p1

    move/from16 v1, v37

    if-eq v0, v1, :cond_13

    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "found another container with the same admin containerid: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v31, 0x0

    goto :goto_6

    .end local v20    # "persona":Ljava/lang/Integer;
    :cond_14
    if-eqz v31, :cond_f

    const/16 v37, 0x1

    :try_start_8
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z

    move-result v25

    .local v25, "ret":Z
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setUsbDebuggingEnabled : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .end local v25    # "ret":Z
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/SecurityException;
    :try_start_9
    sget-object v37, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "SecurityException : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5
.end method

.method private removeContainerOwnerRelationship(I)Z
    .locals 6
    .param p1, "containerId"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "retVal":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .local v1, "ownerUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeMUMContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container removed from ownership DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at removeContainerOwnerRelationship "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v2, v1

    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_1
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCreationParams ->  :  match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/sec/enterprise/knox/container/KnoxContainerManager;)V
    .locals 3
    .param p3, "kcm"    # Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/enterprise/knox/container/KnoxContainerManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "packagesToEnable":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .end local v0    # "packagesToEnable":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .locals 7
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    const-string v5, "wifiSSIDforKNOX"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private sendContainerAdminChangeIntent(I)V
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.admin.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "ownerChanged":Landroid/content/Intent;
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendContainerAdminLockIntent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.locked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendContainerAdminUnlockIntent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.unlocked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendContainerCreationIntent(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "retCode"    # I
    .param p3, "requestId"    # I
    .param p4, "uid"    # I
    .param p5, "adminUid"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.container.creation.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "admin_uid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "requestId"    # I
    .param p4, "adminUid"    # I
    .param p5, "uid"    # I

    .prologue
    if-lez p2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "enterprise.container.created.nonactive"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "creationSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v4, "containerid"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "admin_uid"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.success"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "setupSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v4, "containerid"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .end local v1    # "creationSuccess":Landroid/content/Intent;
    .end local v3    # "setupSuccess":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_2
    const/16 v4, -0x3f9

    if-ne p2, v4, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v4, "enterprise.container.cancelled"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "creationCancelled":Landroid/content/Intent;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v4, "containerid"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "requestid"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "creationCancelled":Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.failure"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "creationfailure":Landroid/content/Intent;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendContainerRemovalIntent(II)V
    .locals 5
    .param p1, "retVal"    # I
    .param p2, "containerId"    # I

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "removeInProgress":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "removeStatus":Landroid/content/Intent;
    if-nez p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.uninstalled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "removeStatus":Landroid/content/Intent;
    :goto_0
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.unmountfailure"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "removeStatus":Landroid/content/Intent;
    goto :goto_0
.end method

.method private sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "oldState"    # I
    .param p5, "newState"    # I

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "container_old_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "container_new_state"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendIntentBroadcastForContainer(ILjava/lang/String;)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentBroadcastForContainer : containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "propertyName"

    const-string v5, "EnforceAuthForContainer"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " EnforceAuthForContainer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_1

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1
.end method

.method private setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "components"    # [Landroid/content/ComponentName;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setupDefaultOwnerLauncher is called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "android.intent.category.MONKEY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z
    .locals 52
    .param p1, "adminComp"    # Landroid/content/ComponentName;
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p5, "pkgPolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v36

    .local v36, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v36, :cond_0

    const/16 v48, 0x0

    .end local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    :goto_0
    return v48

    .restart local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v46

    .local v46, "uinfo":Landroid/content/pm/UserInfo;
    if-nez v46, :cond_1

    const/16 v48, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v13

    .local v13, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v26

    .local v26, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-nez v26, :cond_2

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "failed to get container manager"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x0

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    new-instance v48, Ljava/lang/NullPointerException;

    const-string v49, "Container type object is null."

    invoke-direct/range {v48 .. v49}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v48
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    .end local v46    # "uinfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Exception:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x0

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    .restart local v46    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_3
    if-gtz p3, :cond_4

    :try_start_1
    new-instance v48, Ljava/lang/NullPointerException;

    const-string v49, "PersonaInfo is null."

    invoke-direct/range {v48 .. v49}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v48

    :cond_4
    const-string v48, "KNOX"

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_17

    const-string v48, "/system/container/resources/knox_icon.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v40

    .local v40, "quality":I
    if-lez v40, :cond_5

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordQuality: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordQuality(Landroid/content/ComponentName;I)V

    :cond_5
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v15

    .local v15, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v48

    if-lez v48, :cond_6

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setForbiddenStrings: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Landroid/app/enterprise/PasswordPolicy;->setForbiddenStrings(Ljava/util/List;)Z

    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v34

    .local v34, "patternRestriction":Ljava/lang/String;
    if-eqz v34, :cond_7

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_7

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setRequiredPasswordPattern: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setRequiredPasswordPattern(Ljava/lang/String;)Z

    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v47

    .local v47, "value":I
    if-lez v47, :cond_8

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumCharacterOccurrences: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterOccurrences(I)Z

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v47

    if-lez v47, :cond_9

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumCharacterSequenceLength: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterSequenceLength(I)Z

    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v47

    if-lez v47, :cond_a

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumFailedPasswordsForWipe: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v47

    if-lez v47, :cond_b

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumNumericSequenceLength: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumNumericSequenceLength(I)Z

    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v47

    if-lez v47, :cond_c

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumLength: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    :cond_c
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v47

    if-lez v47, :cond_d

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumLetters: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v47

    if-lez v47, :cond_e

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumNonLetter: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    :cond_e
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v47

    if-lez v47, :cond_f

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumSymbols: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v47

    if-lez v47, :cond_10

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumTimeToLock: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v47

    if-lez v47, :cond_11

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumUpperCase: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v47

    if-lez v47, :cond_12

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumLowerCase: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    if-nez v48, :cond_13

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setSimplePasswordEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "device_policy"

    invoke-static/range {v48 .. v48}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v28

    .local v28, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V

    .end local v28    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    :cond_13
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    if-eqz v48, :cond_14

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set enforceMultifactorAuthentication: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v48

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->enforceMultifactorAuthentication(Z)V

    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy get getBiometricAuthenticationEnabledValue: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    if-eqz v48, :cond_19

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v47

    if-lez v47, :cond_15

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy get getBiometricAuthenticationEnabledType: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v7

    .local v7, "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "EnterpriseKnoxSdkVersion currentVersion : "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v48, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v48

    if-gez v48, :cond_18

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    :cond_15
    :goto_2
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v41

    .local v41, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v43

    .local v43, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v43, :cond_1c

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_1c

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .local v39, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .local v33, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_16
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .local v22, "key":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v33, Ljava/util/List;

    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v33, :cond_16

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_16

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy setAllowChangeDataSyncPolicy for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_1b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Pair;

    .local v32, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v49

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)Z

    goto :goto_4

    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v15    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "key":Ljava/lang/String;
    .end local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v34    # "patternRestriction":Ljava/lang/String;
    .end local v39    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "quality":I
    .end local v41    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .end local v43    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v47    # "value":I
    :cond_17
    const-string v48, "/system/container/resources/knox_icon2.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v6    # "booleanVal":Ljava/lang/Boolean;
    .restart local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    .restart local v15    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "patternRestriction":Ljava/lang/String;
    .restart local v40    # "quality":I
    .restart local v47    # "value":I
    :cond_18
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    :cond_19
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v7

    .restart local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "EnterpriseKnoxSdkVersion currentVersion : "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v48, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v48

    if-ltz v48, :cond_15

    const/16 v48, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isBiometricAuthenticationEnabled(I)Z

    move-result v48

    if-nez v48, :cond_1a

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "name:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v48, "knox-1.0"

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_15

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v39    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .restart local v43    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1b
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->clear()V

    goto/16 :goto_3

    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "key":Ljava/lang/String;
    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v39    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1c
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v43

    if-eqz v43, :cond_1f

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_1f

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .local v31, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1d
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_1f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .restart local v22    # "key":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v33, Ljava/util/List;

    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v33, :cond_1d

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_1d

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy setNotificationSyncPolicy for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_1e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Pair;

    .restart local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .end local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1e
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    goto :goto_5

    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "key":Ljava/lang/String;
    .end local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1f
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v35

    .local v35, "personaIcon":Ljava/lang/String;
    if-eqz v35, :cond_20

    const-string v48, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v48

    if-nez v48, :cond_20

    :try_start_2
    invoke-static/range {v35 .. v35}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/PersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_20

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Persona Bitmap:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_20
    :goto_7
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setScreenCapture(Z)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->allowRemoteControl(Z)Z

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v48

    move/from16 v0, v48

    move/from16 v1, p3

    if-ne v0, v1, :cond_25

    const/16 v20, 0x1

    .local v20, "isBYODAdmin":Z
    :goto_8
    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_21

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "MDM admin uid -"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and userId -"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and isBYODAdmin - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_21
    if-eqz v20, :cond_26

    const/16 v45, 0x3e8

    .local v45, "systemAdminUid":I
    :try_start_4
    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_22

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "systemAdminUid userd for BYOD case -"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    new-instance v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v11, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .local v11, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v42

    .local v42, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    if-nez v48, :cond_23

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v48, v0

    if-nez v48, :cond_23

    const/16 v48, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .end local v11    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v42    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .end local v45    # "systemAdminUid":I
    :cond_23
    :goto_9
    :try_start_5
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .restart local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_24

    const-string v48, "com.sec.sdp"

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_27

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .local v37, "pkg":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_a

    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "isBYODAdmin":Z
    .end local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Bitmap decodeFile:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_25
    const/16 v20, 0x0

    goto/16 :goto_8

    .restart local v20    # "isBYODAdmin":Z
    .restart local v45    # "systemAdminUid":I
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/lang/SecurityException;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "SecurityException"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_23

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SecurityException-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_9

    .end local v10    # "e":Ljava/lang/SecurityException;
    .end local v45    # "systemAdminUid":I
    :cond_26
    :try_start_6
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Applying usb policy for non BYOD admin"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v11, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .restart local v11    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v42

    .restart local v42    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEngMode:Z

    if-nez v48, :cond_23

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v48, v0

    if-nez v48, :cond_23

    const/16 v48, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_9

    .end local v11    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v42    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_3
    move-exception v10

    .restart local v10    # "e":Ljava/lang/SecurityException;
    :try_start_7
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "SecurityException"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_23

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SecurityException-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v10    # "e":Ljava/lang/SecurityException;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_28

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Disabling google apps from container"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v17

    .local v17, "googlePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_34

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v48

    if-lez v48, :cond_34

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Google apps size "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v48

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .local v9, "disablePackages":[Ljava/lang/String;
    if-eqz v9, :cond_33

    array-length v0, v9

    move/from16 v48, v0

    if-lez v48, :cond_33

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .end local v9    # "disablePackages":[Ljava/lang/String;
    :cond_29
    :goto_b
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Disabling FOTA Disable apps from container"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v16

    .local v16, "fotaPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_36

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v48

    if-lez v48, :cond_36

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "FOTA disabled apps size "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v48

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .restart local v9    # "disablePackages":[Ljava/lang/String;
    if-eqz v9, :cond_35

    array-length v0, v9

    move/from16 v48, v0

    if-lez v48, :cond_35

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Disabling FOTA pkgs "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    array-length v0, v9

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .end local v9    # "disablePackages":[Ljava/lang/String;
    :goto_c
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->allowTaskManager(Z)Z

    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v21, v0

    .local v21, "isKioskModeEnabled":Z
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "isKioskModeEnabled- "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v21, :cond_30

    const/16 v45, 0x3e8

    .restart local v45    # "systemAdminUid":I
    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v25, v0

    .local v25, "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->allowSettingsChanges(Z)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->allowStatusBarExpansion(Z)Z

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setHomeKeyState(Z)Z

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v48

    if-eqz v48, :cond_2a

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/enterprise/kioskmode/KioskMode;->clearAllNotifications()Z

    :cond_2a
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v48

    if-eqz v48, :cond_2b

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/enterprise/kioskmode/KioskMode;->wipeRecentTasks()Z

    :cond_2b
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->disableCover(Z)V

    new-instance v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v12, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .local v12, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v12, :cond_2c

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    if-eqz v48, :cond_2c

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMassStorage(Z)Z

    :cond_2c
    new-instance v48, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v48

    move/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v49, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    .local v24, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v24, :cond_2d

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Disable OWNER\'s multi-window for Kiosk Mode"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    :cond_2d
    new-instance v48, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v48

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    sget-object v49, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    if-eqz v24, :cond_2e

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Disable Persona\'s multi-window for Kiosk Mode"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    :cond_2e
    const-string v48, "activity"

    invoke-static/range {v48 .. v48}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v4, :cond_2f

    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    :cond_2f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->disableOwnerLaunchersforCOM(I)Z

    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v12    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v24    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v25    # "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    .end local v45    # "systemAdminUid":I
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getMyKnoxAminUid()I

    move-result v29

    .local v29, "myKnoxUid":I
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SetupDefaultPolicies : myKnoxUid-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and adminUid-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v29

    move/from16 v1, p2

    if-ne v0, v1, :cond_3d

    if-eqz p5, :cond_3d

    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    .local v23, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v23, :cond_3d

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_31
    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_3d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .restart local v37    # "pkg":Ljava/lang/String;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SetupDefaultPolicies : Package-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p5

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .local v27, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v27, :cond_3c

    const/4 v14, 0x1

    .local v14, "elementCount":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_31

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    .local v38, "policyValue":Ljava/lang/Object;
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SetupDefaultPolicies : list-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "applyPackagePolicies : elementCount-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and policyValue-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v14, v0, :cond_39

    if-eqz v38, :cond_38

    move-object/from16 v0, v38

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v48, v0

    if-eqz v48, :cond_38

    move-object/from16 v0, v38

    check-cast v0, Ljava/lang/String;

    move-object/from16 v30, v0

    .local v30, "newName":Ljava/lang/String;
    if-eqz v30, :cond_37

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v48

    if-lez v48, :cond_37

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    .local v44, "status":Z
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "applyPackagePolicies : changeApplicationName status-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v30    # "newName":Ljava/lang/String;
    .end local v38    # "policyValue":Ljava/lang/Object;
    .end local v44    # "status":Z
    :cond_32
    :goto_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_e

    .end local v14    # "elementCount":I
    .end local v16    # "fotaPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "isKioskModeEnabled":Z
    .end local v23    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v29    # "myKnoxUid":I
    .end local v37    # "pkg":Ljava/lang/String;
    .restart local v9    # "disablePackages":[Ljava/lang/String;
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_33
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Error converting List[] to String[]"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .end local v9    # "disablePackages":[Ljava/lang/String;
    :cond_34
    sget-boolean v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v48, :cond_29

    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "No Google apps to disable"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .restart local v9    # "disablePackages":[Ljava/lang/String;
    .restart local v16    # "fotaPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "Error converting List[] to String[]"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v9    # "disablePackages":[Ljava/lang/String;
    :cond_36
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "No Disabled FOTA apps to disable"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .end local v18    # "i$":Ljava/util/Iterator;
    .restart local v14    # "elementCount":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v21    # "isKioskModeEnabled":Z
    .restart local v23    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v29    # "myKnoxUid":I
    .restart local v30    # "newName":Ljava/lang/String;
    .restart local v37    # "pkg":Ljava/lang/String;
    .restart local v38    # "policyValue":Ljava/lang/Object;
    :cond_37
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationName name can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .end local v30    # "newName":Ljava/lang/String;
    :cond_38
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationName name can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_39
    const/16 v48, 0x2

    move/from16 v0, v48

    if-ne v14, v0, :cond_32

    if-eqz v38, :cond_3b

    move-object/from16 v0, v38

    instance-of v0, v0, [B

    move/from16 v48, v0

    if-eqz v48, :cond_3b

    check-cast v38, [B

    .end local v38    # "policyValue":Ljava/lang/Object;
    move-object/from16 v0, v38

    check-cast v0, [B

    move-object v8, v0

    .local v8, "data":[B
    if-eqz v8, :cond_3a

    array-length v0, v8

    move/from16 v48, v0

    if-lez v48, :cond_3a

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/app/enterprise/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v44

    .restart local v44    # "status":Z
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "applyPackagePolicies : changeApplicationIcon status-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .end local v44    # "status":Z
    :cond_3a
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationIcon path can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .end local v8    # "data":[B
    .restart local v38    # "policyValue":Ljava/lang/Object;
    :cond_3b
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationIcon path can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .end local v14    # "elementCount":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v38    # "policyValue":Ljava/lang/Object;
    :cond_3c
    sget-object v48, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : no values found"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_d

    .end local v23    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v37    # "pkg":Ljava/lang/String;
    :cond_3d
    const/16 v48, 0x1

    goto/16 :goto_0
.end method

.method private static translateStatus(Landroid/content/pm/PersonaState;)I
    .locals 3
    .param p0, "status"    # Landroid/content/pm/PersonaState;

    .prologue
    const/4 v0, -0x1

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->$SwitchMap$android$content$pm$PersonaState:[I

    invoke-virtual {p0}, Landroid/content/pm/PersonaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5f

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5b

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x5d

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x5e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private updateConfigurationXml()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .local v0, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->setTypeList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->writeToXml()V

    monitor-exit v2

    return-void

    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    .locals 12
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "retVal"    # I
    .param p3, "adminUid"    # I

    .prologue
    const/4 v11, 0x3

    if-nez p1, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "updateContainerCreationStatus: creation params: NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getCreatorUid()I

    move-result v1

    .local v1, "creatorUid":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateContainerCreationStatus retVal: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "creator Uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, "msg":Landroid/os/Message;
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v11

    .local v0, "arguments":[Ljava/lang/Integer;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    .local v5, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminRemovable()Z

    move-result v3

    .local v3, "isRemovable":Z
    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v10

    invoke-direct {v8, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v3, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "isRemovable":Z
    .end local v5    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-virtual {v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->reset()V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "Process kill observer unregistered."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .end local v6    # "token":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullPointerException :("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    :catch_2
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException :("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateDisablePackagesForCloneTypes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "disableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "disableList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "mTypeList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "cloneDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "AppDisableList for Clone type is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateDisablePackagesforCloneType null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateDisablePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objlist size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "cloneDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, " Not a cloneType: AdminUid is  0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateInstallPackagesForCloneTypes(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "installList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInstallPackagesForCloneTypes : list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Installlist is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "mTypeList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v4, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-eqz v5, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "cloneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "AppInstallList for Clone type is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateInstallPackagesForCloneTypes null != cloneList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "installApp":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateInstallPackagesForCloneTypes :Found duplicate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v3    # "installApp":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateInstallPackagesForCloneTypes null != cloneList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " objlist size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "cloneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, " Not a cloneType: AdminUid is  0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateReenablePackagesForCloneTypes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "enableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "enableList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "mTypeList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "cloneReenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "AppEnableList for Clone type is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateReenablePackagesforCloneType null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateReenablePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objlist size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "cloneReenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, " Not a cloneType: AdminUid is  0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateRemovePackagesForCloneTypes(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInstallPackagesForCloneTypes : list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Removelist is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "mTypeList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "cloneRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "AppRemoveList for Clone type is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateRemovePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateRemovePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "cloneAppInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    :cond_4
    invoke-virtual {v3, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateRemovePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " objlist size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "cloneAppInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cloneRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, " Not a cloneType: AdminUid is  0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private validateResetPwdKey(Ljava/lang/String;)Z
    .locals 11
    .param p1, "resetPwdKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "result":Z
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    .local v2, "letters":I
    const/4 v8, 0x0

    .local v8, "uppercase":I
    const/4 v3, 0x0

    .local v3, "lowercase":I
    const/4 v5, 0x0

    .local v5, "numbers":I
    const/4 v7, 0x0

    .local v7, "symbols":I
    const/4 v4, 0x0

    .local v4, "nonletter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v9, 0x41

    if-lt v0, v9, :cond_0

    const/16 v9, 0x5a

    if-gt v0, v9, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x7a

    if-gt v0, v9, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0x30

    if-lt v0, v9, :cond_2

    const/16 v9, 0x39

    if-gt v0, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x80

    if-gt v9, v10, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-lt v9, v10, :cond_5

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, " inside validateResetPwdKey password is validated"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .end local v1    # "i":I
    .end local v2    # "letters":I
    .end local v3    # "lowercase":I
    .end local v4    # "nonletter":I
    .end local v5    # "numbers":I
    .end local v7    # "symbols":I
    .end local v8    # "uppercase":I
    :cond_4
    :goto_2
    return v6

    .restart local v1    # "i":I
    .restart local v2    # "letters":I
    .restart local v3    # "lowercase":I
    .restart local v4    # "nonletter":I
    .restart local v5    # "numbers":I
    .restart local v7    # "symbols":I
    .restart local v8    # "uppercase":I
    :cond_5
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, " inside validateResetPwdKey password is not per requirement "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "types"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "uid":I
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v6, "Activate Container permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v1, :cond_0

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter name :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigurationTypeByName value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNetworkSSID - ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)Z

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addNetworkSSID failed : already exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addPackageToExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageSBABlackList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v6

    .local v6, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    const/4 v8, 0x0

    .local v8, "packageInstalled":Z
    const/4 v9, 0x0

    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_9

    if-eqz p2, :cond_9

    :try_start_0
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_9

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .local v10, "pm":Landroid/content/pm/IPackageManager;
    const/16 v15, 0x40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v10, v0, v15, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :try_start_2
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    sget-boolean v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x1

    :cond_1
    if-eqz v8, :cond_2

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addPackageToExternalStorageSBABlackListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v11

    .local v11, "ret":Z
    if-eqz v11, :cond_9

    if-eqz v8, :cond_8

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v14, "sigs":[Landroid/content/pm/Signature;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    if-nez v15, :cond_3

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList : SEAMS service cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ret":Z
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    return v15

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "n":Ljava/lang/Exception;
    :try_start_4
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v7    # "n":Ljava/lang/Exception;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .restart local v11    # "ret":Z
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    if-eqz v14, :cond_4

    :try_start_5
    array-length v15, v14

    if-nez v15, :cond_5

    :cond_4
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList : package signature cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_5
    :try_start_6
    array-length v15, v14

    new-array v13, v15, [Ljava/lang/String;

    .local v13, "sigStrins":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v15, v14

    if-ge v5, v15, :cond_6

    aget-object v15, v14, v5

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v13, v2}, Lcom/android/server/SEAMService;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v12

    .local v12, "retCode":I
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageSBABlackList : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_7

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList : SEAMS service processing error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    :cond_7
    :try_start_7
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardSBABlacklistUpdate(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v5    # "i":I
    .end local v12    # "retCode":I
    .end local v13    # "sigStrins":[Ljava/lang/String;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_8
    const/4 v15, 0x1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ret":Z
    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList policy failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public addPackageToExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    sget-boolean v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageWhiteList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v15, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v6

    .local v6, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "token":J
    const/4 v8, 0x0

    .local v8, "packageInstalled":Z
    const/4 v9, 0x0

    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_a

    :try_start_0
    sget-boolean v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v15, :cond_1

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "aftr addPackageToExternalStorageWhiteList lCxtInfo.mCallerUid, lCxtInfo.mContainerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_a

    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_a

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .local v10, "pm":Landroid/content/pm/IPackageManager;
    const/16 v15, 0x40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v10, v0, v15, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :try_start_2
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v15, v0

    if-lez v15, :cond_3

    if-eqz v8, :cond_3

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v15

    if-nez v15, :cond_3

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "Package is installed, and signature doesn\'t match. So return falure"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v15

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "n":Ljava/lang/Exception;
    :try_start_4
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v7    # "n":Ljava/lang/Exception;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addPackageToExternalStorageWhiteListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v11

    .local v11, "ret":Z
    if-eqz v11, :cond_a

    if-eqz v8, :cond_9

    iget-object v14, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v14, "sigs":[Landroid/content/pm/Signature;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    if-nez v15, :cond_4

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList : SEAMS service cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_4
    if-eqz v14, :cond_5

    :try_start_6
    array-length v15, v14

    if-nez v15, :cond_6

    :cond_5
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList : package signature cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_6
    :try_start_7
    array-length v15, v14

    new-array v13, v15, [Ljava/lang/String;

    .local v13, "sigStrins":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v15, v14

    if-ge v5, v15, :cond_7

    aget-object v15, v14, v5

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v13, v2}, Lcom/android/server/SEAMService;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v12

    .local v12, "retCode":I
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_8

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList : SEAMS service processing error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v15, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    :try_start_8
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardWhitelistUpdate(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v5    # "i":I
    .end local v12    # "retCode":I
    .end local v13    # "sigStrins":[Ljava/lang/String;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_9
    const/4 v15, 0x1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ret":Z
    :cond_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList policy failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public cancelCreateContainer(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    const-string v2, "cancelCreateContainer"

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCreateContainer ->  :  adminParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "result":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, -0x3f9

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelCreateContainer ->  :  result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v3

    return v1

    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public changeContainerOwner(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 31
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "changeContainerOwner"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Package name cannot be null or empty"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/16 v24, 0x0

    .local v24, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .local v28, "token":J
    :try_start_0
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v8, "containerId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v26

    .local v26, "service":Landroid/os/PersonaManager;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Container Id : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, " exists "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v4

    .local v4, "uid":I
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Admin Uid : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v6

    .local v6, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "User Managed : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Transferred Active Component Name : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    .local v9, "creatorUid":I
    move v5, v8

    .local v5, "id":I
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1, v4, v9}, Landroid/os/PersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v27

    .local v27, "success":Z
    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateMUMContainer(II)Z

    move-result v27

    :goto_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Updated MUM Container : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v27, :cond_3

    :try_start_1
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v13, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v13, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v14

    .local v14, "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v15

    .local v15, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v7, v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v15, v2, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v17

    .local v17, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5, v2}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v20

    .local v20, "oldProxyID":I
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v11

    .local v11, "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Deactivating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v18

    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/ProxyDeviceAdminInfo;

    .local v22, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    .local v25, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Removes Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v11    # "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v15    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v20    # "oldProxyID":I
    .end local v22    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v25    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception cannot change Ownership :"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v5    # "id":I
    .end local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v9    # "creatorUid":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v27    # "success":Z
    :cond_3
    :goto_2
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "containerId":I
    .end local v26    # "service":Landroid/os/PersonaManager;
    :goto_3
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "changeContainerOwnership status : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v24

    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "uid":I
    .restart local v5    # "id":I
    .restart local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v8    # "containerId":I
    .restart local v9    # "creatorUid":I
    .restart local v26    # "service":Landroid/os/PersonaManager;
    .restart local v27    # "success":Z
    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_0

    .restart local v11    # "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v14    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v15    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v17    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v20    # "oldProxyID":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Resolve Info for component Name :  "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Landroid/app/admin/ProxyDeviceAdminInfo;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .local v21, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {v5, v4}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v2, v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    const/4 v2, 0x0

    invoke-virtual {v13, v3, v2, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Activating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v4}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v19

    .local v19, "newProxyID":I
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v10

    .local v10, "disabledListAfterNewAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/sec/enterprise/knox/container/KnoxContainerManager;)V

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "typeObj.getAdminUid() : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminChangeIntent(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v24, 0x1

    goto/16 :goto_2

    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v5    # "id":I
    .end local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v8    # "containerId":I
    .end local v9    # "creatorUid":I
    .end local v10    # "disabledListAfterNewAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v15    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v17    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v19    # "newProxyID":I
    .end local v20    # "oldProxyID":I
    .end local v21    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v26    # "service":Landroid/os/PersonaManager;
    .end local v27    # "success":Z
    :catch_1
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed at KnoxContainerManager API changeContainerOwnership "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearNetworkSSID(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearNetworkSSID - admin UID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public clearPackagesFromExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz v3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "clearPackagesFromExternalStorageSBABlackList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v5

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SEAMService;->clearSBABlacklist(II)I

    move-result v4

    .local v4, "retCode":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageSBABlackList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageSBABlackList for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_1

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardSBABlacklistUpdate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public clearPackagesFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz v3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "clearPackagesFromExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v5

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SEAMService;->clearWhitelist(II)I

    move-result v4

    .local v4, "retCode":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageWhiteList for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_1

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardWhitelistUpdate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public createContainer(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/container/CreationParams;I)I
    .locals 30
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "params"    # Lcom/sec/enterprise/knox/container/CreationParams;
    .param p3, "flags"    # I

    .prologue
    const/16 v9, -0x3f6

    .local v9, "id":I
    if-nez p2, :cond_0

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v27, "createContainer -> Bad arguments: params is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "id":I
    :goto_0
    return v9

    .restart local v9    # "id":I
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/CreationParams;->getConfigurationName()Ljava/lang/String;

    move-result-object v19

    .local v19, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/CreationParams;->getAdminPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "adminParam":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/CreationParams;->getPasswordResetToken()Ljava/lang/String;

    move-result-object v17

    .local v17, "resetPwdKey":Ljava/lang/String;
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "createContainer ->  :  cxtInfo:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", type-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",adminParam-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",flags-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isTIMAEnabled()Z

    move-result v26

    if-nez v26, :cond_1

    const/16 v9, -0x3fa

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getTIMAStatus()I

    move-result v18

    .local v18, "tima_code":I
    if-eqz v18, :cond_3

    if-lez v18, :cond_2

    mul-int/lit8 v9, v18, -0x1

    goto :goto_0

    :cond_2
    move/from16 v9, v18

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isEnoughMemoryToCreateContainer()Z

    move-result v26

    if-nez v26, :cond_4

    const/16 v9, -0x3f3

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27

    if-eqz v4, :cond_7

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_7

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v28, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v29, "Activate Container permission"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    if-lez v26, :cond_6

    :cond_5
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_9

    :cond_6
    sget-object v28, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Bad arguments: caller uid: "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-nez p1, :cond_8

    const/16 v26, 0x0

    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v29, " type: "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v27

    goto/16 :goto_0

    .end local v9    # "id":I
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .restart local v9    # "id":I
    :cond_7
    :try_start_1
    const-string v26, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_1

    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_2

    :cond_9
    const/16 v25, 0x0

    .local v25, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .local v6, "creatorUid":I
    if-eqz p1, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    if-lez v26, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .local v20, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v26

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v26

    if-eqz v26, :cond_b

    new-instance v26, Ljava/lang/SecurityException;

    const-string v28, "Admin inside container cannot create another container"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v20    # "token":J
    :cond_a
    move/from16 v25, v6

    goto :goto_3

    .restart local v20    # "token":J
    :cond_b
    :try_start_2
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "createContainer ->  :  uid -"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_c

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v28, "createContainer -> SDP feature not supported on this device."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v9, -0x400

    .end local v9    # "id":I
    :try_start_3
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_c
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v26

    if-eqz v26, :cond_d

    const/16 v9, -0x3fc

    .end local v9    # "id":I
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_d
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v26

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .local v15, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v15, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    const/16 v28, 0x2

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v28, "Containers max limit reached, returning.."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Personasize exclude dying : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v9, -0x3f4

    .end local v9    # "id":I
    :try_start_7
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpAsString()V

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v28, "Creation already in progress, returning.."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v9, -0x3f8

    .end local v9    # "id":I
    :try_start_9
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_4
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v24

    .local v24, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v24, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v24

    :cond_10
    const/4 v13, 0x0

    .local v13, "name":Ljava/lang/String;
    if-nez v24, :cond_11

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TYPE with name "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " not found!!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, -0x3ed

    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .end local v13    # "name":Ljava/lang/String;
    .end local v24    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getPersonas exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v26

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    .restart local v13    # "name":Ljava/lang/String;
    .restart local v24    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_11
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Type object firmware version:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Device firmware version:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v26

    if-eqz v26, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    const/16 v9, -0x3fb

    monitor-exit v27

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_15

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v14, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v26

    if-nez v26, :cond_14

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v26

    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_15
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v22

    .local v22, "token1":J
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isKioskEnabledOnOwner()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v26

    if-eqz v26, :cond_16

    const/16 v9, -0x3fe

    .end local v9    # "id":I
    :try_start_d
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_16
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .restart local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "notification_panel_active_app_list_for_reset"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .local v10, "list":Ljava/lang/String;
    if-eqz v15, :cond_17

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_18

    :cond_17
    const-string v26, "Wifi;Location;SilentMode;AutoRotate;Bluetooth;SmartStay;PowerSaving;AirplaneMode;"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result v26

    if-eqz v26, :cond_19

    :cond_18
    const/16 v9, -0x3fd

    .end local v9    # "id":I
    :try_start_f
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_19
    if-eqz v4, :cond_1a

    const/16 v9, -0x3ff

    .end local v9    # "id":I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27

    goto/16 :goto_0

    .restart local v9    # "id":I
    :cond_1a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10    # "list":Ljava/lang/String;
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v22    # "token1":J
    :cond_1b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v16

    .local v16, "requestId":I
    new-instance v5, Lcom/sec/knox/container/ContainerCreationParams;

    invoke-direct {v5}, Lcom/sec/knox/container/ContainerCreationParams;-><init>()V

    .local v5, "creationParams":Lcom/sec/knox/container/ContainerCreationParams;
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestId(I)V

    invoke-virtual {v5, v13}, Lcom/sec/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminUid(I)V

    invoke-virtual {v5, v6}, Lcom/sec/knox/container/ContainerCreationParams;->setCreatorUid(I)V

    invoke-virtual {v5, v4}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setFlags(I)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setResetPasswordKey(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getMyKnoxAminUid()I

    move-result v12

    .local v12, "myKnoxUid":I
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "myKnoxUid -"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " and caller uid-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v25

    if-ne v0, v12, :cond_1c

    const-string v26, "MY_KNOX"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setFeatureType(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_1c
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v28, "Process kill observer registered."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7
    const/4 v11, 0x0

    .local v11, "msg":Landroid/os/Message;
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    const/16 v28, 0x100

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v28, "Calling handler MSG_START_MIGRATION_WIZARD"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v26, v0

    const/16 v28, 0x5

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    :goto_8
    iput-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move/from16 v9, v16

    goto/16 :goto_0

    .end local v5    # "creationParams":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "myKnoxUid":I
    .end local v16    # "requestId":I
    .restart local v22    # "token1":J
    :catch_1
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_12
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getPersonas exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v26

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .end local v22    # "token1":J
    .restart local v5    # "creationParams":Lcom/sec/knox/container/ContainerCreationParams;
    .restart local v12    # "myKnoxUid":I
    .restart local v16    # "requestId":I
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/lang/NullPointerException;
    :try_start_14
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NullPointerException :("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_7

    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    :try_start_16
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "RemoteException :("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v26

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    .restart local v11    # "msg":Landroid/os/Message;
    :cond_1d
    sget-object v26, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v28, "Calling handler MSG_START_SETUP_WIZARD"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v11

    goto/16 :goto_8
.end method

.method public createContainerInternal(Lcom/sec/knox/container/ContainerCreationParams;)I
    .locals 62
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    const-string v5, "createContainerInternal"

    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createContainerInternal --> requestId:"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x3f6

    .local v20, "id":I
    if-nez p1, :cond_1

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "ContainerCreationParams is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v38, v20

    .end local v20    # "id":I
    .local v38, "id":I
    :goto_1
    return v38

    .end local v38    # "id":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .restart local v20    # "id":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    .local v21, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v6

    .local v6, "containerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminParam()Ljava/lang/String;

    move-result-object v11

    .local v11, "adminParam":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getResetPasswordKey()Ljava/lang/String;

    move-result-object v13

    .local v13, "resetPwdKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getFlags()I

    move-result v34

    .local v34, "flags":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v58

    .local v58, "uid":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPackagePoliciesMap()Ljava/util/HashMap;

    move-result-object v22

    .local v22, "pkgPolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v43

    .local v43, "isUserManaged":Z
    const/16 v41, 0x0

    .local v41, "isLightWeightContainer":Z
    const/16 v52, 0x0

    .local v52, "requestFound":Z
    const/16 v40, 0x0

    .local v40, "isKioskModeEnabled":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getLockType()I

    move-result v14

    .local v14, "lockType":I
    move-object/from16 v0, v21

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_2

    const/16 v40, 0x1

    :cond_2
    move-object/from16 v0, v21

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v5, :cond_3

    const/16 v41, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v7

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v52

    if-nez v52, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    monitor-exit v7

    move/from16 v38, v20

    .end local v20    # "id":I
    .restart local v38    # "id":I
    goto :goto_1

    .end local v38    # "id":I
    .restart local v20    # "id":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v28, v58

    .local v28, "creatorUid":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createContainerInternal: type: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, "adminParam-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, ",flags-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " uid: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .local v56, "token":J
    :try_start_1
    new-instance v35, Ljava/io/File;

    const-string v5, "/system/container/KnoxSecureHandler/KnoxSecureHandler.apk"

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v35, "handlerApk":Ljava/io/File;
    new-instance v59, Ljava/io/File;

    const-string v5, "/system/container/ContainerAgent2/ContainerAgent2.apk"

    move-object/from16 v0, v59

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v59, "wizardApk":Ljava/io/File;
    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v36

    .local v36, "handlerApkUri":Landroid/net/Uri;
    invoke-static/range {v59 .. v59}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .local v12, "wizardApkUri":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    :cond_5
    if-nez v21, :cond_6

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TYPE with name "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " not found!!"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v38, v20

    .end local v20    # "id":I
    .restart local v38    # "id":I
    goto/16 :goto_1

    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v28    # "creatorUid":I
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v38    # "id":I
    .end local v56    # "token":J
    .end local v59    # "wizardApk":Ljava/io/File;
    .restart local v20    # "id":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v28    # "creatorUid":I
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v56    # "token":J
    .restart local v59    # "wizardApk":Ljava/io/File;
    :cond_6
    const/16 v50, 0x0

    .local v50, "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/16 v18, 0x0

    .local v18, "matchedAdmin":Landroid/content/ComponentName;
    const/16 v24, 0x0

    .local v24, "adminActInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v16, 0x0

    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/admin/DevicePolicyManager;

    .local v30, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {v30 .. v30}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin param :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v47

    .local v47, "pm":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_d

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v54

    .local v54, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_4
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v58

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v7, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v42

    .local v42, "isRemovable":Z
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v58

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminRemovable(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v42    # "isRemovable":Z
    :goto_2
    const/16 v49, 0x0

    .local v49, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :try_start_5
    invoke-static/range {v58 .. v58}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v49

    :goto_3
    if-eqz v49, :cond_9

    :try_start_6
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/admin/ProxyDeviceAdminInfo;

    .local v48, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v48 .. v48}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v58

    if-ne v5, v0, :cond_7

    invoke-virtual/range {v48 .. v48}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v48 .. v48}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v16

    move-object/from16 v50, v48

    goto :goto_4

    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v48    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_0
    move-exception v31

    .local v31, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .end local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v47    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v59    # "wizardApk":Ljava/io/File;
    :catch_1
    move-exception v31

    move/from16 v19, v58

    .end local v58    # "uid":I
    .local v19, "uid":I
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v31    # "e":Ljava/lang/Exception;
    :goto_6
    if-gtz v20, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    :cond_8
    move/from16 v38, v20

    .end local v20    # "id":I
    .restart local v38    # "id":I
    goto/16 :goto_1

    .end local v19    # "uid":I
    .end local v38    # "id":I
    .restart local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v20    # "id":I
    .restart local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v47    # "pm":Landroid/content/pm/PackageManager;
    .restart local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v58    # "uid":I
    .restart local v59    # "wizardApk":Ljava/io/File;
    :catch_2
    move-exception v31

    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_8
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting proxyadmin list failed:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    .end local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v47    # "pm":Landroid/content/pm/PackageManager;
    .end local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v59    # "wizardApk":Ljava/io/File;
    :catchall_1
    move-exception v5

    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    :goto_7
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v19    # "uid":I
    .restart local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v47    # "pm":Landroid/content/pm/PackageManager;
    .restart local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v58    # "uid":I
    .restart local v59    # "wizardApk":Ljava/io/File;
    :cond_9
    if-nez v18, :cond_b

    :try_start_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ComponentName;

    .local v23, "admin":Landroid/content/ComponentName;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v46

    .local v46, "pName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Current admin loop :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v46, :cond_a

    if-eqz v47, :cond_a

    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v24

    :goto_8
    if-eqz v24, :cond_a

    :try_start_b
    move-object/from16 v0, v24

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v58

    if-ne v5, v0, :cond_a

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin found :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, "Uid: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v23

    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V

    .local v53, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v7, 0x80

    invoke-static/range {v58 .. v58}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    move-object/from16 v0, v53

    move/from16 v1, v17

    invoke-virtual {v5, v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v39

    .local v39, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v39, :cond_b

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v16, Landroid/content/pm/ResolveInfo;

    .end local v23    # "admin":Landroid/content/ComponentName;
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v39    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v46    # "pName":Ljava/lang/String;
    .end local v53    # "resolveIntent":Landroid/content/Intent;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_b
    if-eqz v18, :cond_c

    if-nez v16, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown admin: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v23    # "admin":Landroid/content/ComponentName;
    .restart local v37    # "i$":Ljava/util/Iterator;
    .restart local v46    # "pName":Ljava/lang/String;
    :catch_3
    move-exception v33

    .local v33, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting app info failed. package Name: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v23    # "admin":Landroid/content/ComponentName;
    .end local v33    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v46    # "pName":Ljava/lang/String;
    .end local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_d
    move-object/from16 v45, v18

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .local v45, "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v0, v34

    int-to-long v8, v0

    .local v8, "personaflags":J
    const/16 v51, -0x1

    .local v51, "removeid":I
    if-eqz v43, :cond_e

    const-wide/16 v60, 0x80

    or-long v8, v8, v60

    :cond_e
    if-eqz v40, :cond_10

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v29

    .local v29, "defaultLauncher":Ljava/lang/String;
    if-eqz v29, :cond_f

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "com_default_owner_launcher"

    const/16 v17, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-static {v5, v7, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_f
    const-wide/16 v60, 0x400

    or-long v8, v8, v60

    .end local v29    # "defaultLauncher":Ljava/lang/String;
    :cond_10
    if-eqz v41, :cond_11

    const-wide/16 v60, 0x200

    or-long v8, v8, v60

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v5 .. v14}, Landroid/os/PersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v38

    .end local v20    # "id":I
    .restart local v38    # "id":I
    if-lez v38, :cond_1a

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->installDefaultApplications(ILjava/util/List;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-nez v11, :cond_18

    :try_start_d
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Enabling proxy admins."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v32, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v32, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v15, 0x0

    .local v15, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    if-eqz v50, :cond_17

    new-instance v15, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v50 .. v50}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v19

    invoke-virtual/range {v50 .. v50}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v20

    invoke-direct/range {v15 .. v20}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .restart local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_9
    move/from16 v0, v38

    move/from16 v1, v58

    invoke-static {v0, v1}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v5

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    move/from16 v2, v58

    invoke-virtual {v0, v15, v5, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Activating proxy admins done."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v32    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v38    # "id":I
    .restart local v20    # "id":I
    :goto_a
    if-lez v20, :cond_13

    if-eqz v18, :cond_19

    :try_start_e
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Admin container relationship added."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addContainerOwnerRelationship(II)Z

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v22}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_12

    move/from16 v51, v20

    const/16 v20, -0x3f5

    :cond_12
    if-lez v20, :cond_13

    if-eqz v11, :cond_13

    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v54

    .restart local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v54

    move/from16 v1, v28

    move/from16 v2, v20

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->restoreContainerAdminData(ILjava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result v5

    if-nez v5, :cond_13

    move/from16 v51, v20

    const/16 v20, -0x3f5

    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_13
    :goto_b
    if-lez v20, :cond_1c

    :try_start_f
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v44

    .local v44, "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v44, :cond_14

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "***************************Writing to type object : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v44 .. v44}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    move-object/from16 v0, v44

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "removeContainerId from create. Hmm fishy: configuration list updated successfully."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "***************************Writing to type object : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "knox-byod-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-wide/from16 v0, v60

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->clone(Ljava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v27

    .local v27, "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/16 v17, 0x0

    aput-object v27, v7, v17

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Byod case, cloning a new type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v27    # "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_c
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeKnoxWallpaper(I)V

    :cond_15
    if-nez v11, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v25

    .local v25, "adminCompName":Landroid/content/ComponentName;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "adminCompName-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " id-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, ", uid - "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v25, :cond_16

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .local v26, "adminPkgName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/PersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v55

    .local v55, "success":Z
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "adminPkgName-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " and updatePersonaInfo status -"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v55

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .end local v25    # "adminCompName":Landroid/content/ComponentName;
    .end local v26    # "adminPkgName":Ljava/lang/String;
    .end local v44    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v55    # "success":Z
    :cond_16
    :goto_d
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v32    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :cond_17
    :try_start_10
    new-instance v15, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .restart local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_9

    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v32    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_4
    move-exception v31

    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_11
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception cannot create or activate proxyadmins:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move/from16 v51, v38

    const/16 v20, -0x3f5

    .end local v38    # "id":I
    .restart local v20    # "id":I
    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    goto/16 :goto_a

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :cond_18
    :try_start_12
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Admin is inside container. Need to find admin."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->getAdminUidForPersona(I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-result v19

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    :try_start_13
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->findMatchingComponent(II)Landroid/content/ComponentName;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-result-object v18

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    :try_start_14
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin found in findMatchingComponent: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_a

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :catch_5
    move-exception v31

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_e
    :try_start_15
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception while getting admin id or finding admin removeContainer:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move/from16 v51, v38

    const/16 v20, -0x3f5

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_a

    .end local v31    # "e":Ljava/lang/Exception;
    :cond_19
    :try_start_16
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "matchedAdmin is null. removeContainer"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move/from16 v51, v20

    const/16 v20, -0x3f5

    goto/16 :goto_b

    :catch_6
    move-exception v31

    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_17
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    move/from16 v51, v20

    const/16 v20, -0x3f5

    goto/16 :goto_b

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :cond_1a
    :try_start_18
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Error creating persona."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_b

    .restart local v44    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1b
    :try_start_19
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->updateConfigurationXml()V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    goto/16 :goto_c

    .end local v44    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_7
    move-exception v31

    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error creating persona:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v51, v20

    const/16 v20, -0x3f5

    goto/16 :goto_d

    .end local v31    # "e":Ljava/lang/Exception;
    :cond_1c
    const/16 v5, 0x64

    move/from16 v0, v51

    if-lt v0, v5, :cond_16

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto/16 :goto_d

    :catch_8
    move-exception v31

    goto/16 :goto_5

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :catchall_2
    move-exception v5

    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_7

    .end local v20    # "id":I
    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v38    # "id":I
    :catchall_3
    move-exception v5

    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_7

    .end local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v8    # "personaflags":J
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v47    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v51    # "removeid":I
    .end local v59    # "wizardApk":Ljava/io/File;
    :catchall_4
    move-exception v5

    goto/16 :goto_7

    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v8    # "personaflags":J
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v47    # "pm":Landroid/content/pm/PackageManager;
    .restart local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v51    # "removeid":I
    .restart local v58    # "uid":I
    .restart local v59    # "wizardApk":Ljava/io/File;
    :catch_9
    move-exception v31

    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_5

    .end local v20    # "id":I
    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    :catch_a
    move-exception v31

    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_5

    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v20    # "id":I
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    :catch_b
    move-exception v31

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    goto/16 :goto_e

    :catch_c
    move-exception v31

    goto/16 :goto_e
.end method

.method public createContainerMarkSuccess(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .locals 4
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    const-string v1, "createContainerMarkSuccess"

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContainerMarkSuccess ->  : param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mParamsList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    const/4 v1, 0x1

    monitor-exit v2

    :goto_0
    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createContainerWithCallback(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/container/CreationParams;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "params"    # Lcom/sec/enterprise/knox/container/CreationParams;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    sput-object p4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainer(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/container/CreationParams;I)I

    move-result v0

    return v0
.end method

.method public doSelfUninstall()V
    .locals 8

    .prologue
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v7, "Activate Container permission"

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail doSelfUninstall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Permission Denial: can\'t dump KnoxContainerManager"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-nez v4, :cond_2

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "persona list is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .local v1, "persona":Landroid/content/pm/PersonaInfo;
    iget v6, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->dumpConfigurationForPersona(ILjava/io/PrintWriter;)V

    goto :goto_1
.end method

.method public enableExternalStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .local v1, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v1, :cond_0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    const-string v6, "sdcard"

    invoke-virtual {v3, v6, v2, p2}, Landroid/os/PersonaManager;->setAccessPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    const/4 v3, 0x1

    .end local v2    # "personaId":I
    .end local v4    # "token":J
    :goto_1
    return v3

    .restart local v2    # "personaId":I
    .restart local v4    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .end local v2    # "personaId":I
    .end local v4    # "token":J
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public enforceMultifactorAuthentication(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "propertyName"

    const-string v7, "MultifactorAuthentication"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MultifactorAuthentication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    sget-object v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_3

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceMultifactorAuthentication failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_0
    :goto_2
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2
.end method

.method public forceResetPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "resetPwdKey"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v5, -0x2

    :goto_0
    return v5

    :cond_0
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceResetPassword: containerId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_1

    const/4 v5, -0x2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v5, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: resetPwdKey is null or empty string"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, -0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->verifyKEKMdm(ILjava/lang/String;)[B

    move-result-object v3

    .local v3, "plainDEK":[B
    if-nez v3, :cond_4

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: plainDEK is null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, -0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "plainDEK":[B
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: already in PWD_CHANGE_ENFORCED returning!!!!!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, -0x2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    const-string v5, "persona"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .local v1, "personaservice":Lcom/android/server/pm/PersonaManagerService;
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    :cond_6
    const-string v5, "password_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/security/PasswordPolicy;

    .local v4, "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v4, :cond_7

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    .local v0, "enforcePwdStatus":I
    if-lez v0, :cond_7

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: cleared enforcepwdchange state."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->resetPersonaPassword(ILjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v0    # "enforcePwdStatus":I
    :cond_7
    const/4 v5, -0x2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v4    # "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :cond_8
    :try_start_5
    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_9

    const/4 v5, -0x2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_9
    :try_start_6
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v5, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_a
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/os/PersonaManager$StateManager;->setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->resetPersonaPassword(ILjava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v5, 0x0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, -0x2

    goto/16 :goto_0

    .end local v1    # "personaservice":Lcom/android/server/pm/PersonaManagerService;
    .end local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getConfigurationType(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "uid":I
    if-eqz p1, :cond_1

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v5, :cond_1

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userHandle":I
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne p2, v3, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v3    # "userHandle":I
    :cond_0
    :goto_1
    return-object v4

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_0

    .restart local v3    # "userHandle":I
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Caller inside persona ? : false throw exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No priviledge on containerId "

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "userHandle":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userHandle":I
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .local v0, "cType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-eq v5, v2, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "callingUid":I
    if-eqz p1, :cond_1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v2, :cond_1

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :goto_0
    invoke-direct {p0, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .local v1, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .end local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0

    .restart local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method public getConfigurationTypes(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "uid":I
    if-eqz p1, :cond_3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_3

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :goto_0
    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: input uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_4
    return-object v1
.end method

.method public getContainerCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .locals 2
    .param p1, "containerId"    # I

    .prologue
    const-string v1, "getContainerCreationParams"

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .local v0, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->clone()Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultConfigurationTypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "getDefaultConfigurationTypes"

    invoke-static {v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2
    return-object v1
.end method

.method public getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v7

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "propertyName"

    const-string v8, "EnforceAuthForContainer"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    move v5, v7

    goto :goto_0

    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    move v5, v6

    goto :goto_0

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0
.end method

.method public getHibernationTimeout(Landroid/app/enterprise/ContextInfo;)J
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v11

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "propertyName"

    const-string v8, "HibernationTimeout"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time=- "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "ret":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return-wide v6

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .end local v4    # "ret":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed to get value from DB > returning default value"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed > returning default value."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkSSID(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkSSID - adminUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "aux":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getOwnContainers()[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 18

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v11, 0x0

    .local v11, "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const/4 v5, 0x0

    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v10

    .local v10, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v10, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const/4 v7, 0x0

    .local v7, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PersonaInfo;

    .local v9, "pInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v0, v9, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v8

    .local v8, "ownerUid":I
    sget-boolean v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v15, :cond_1

    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Persona found with id , creator uid, passed uid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v8, v2, :cond_0

    new-instance v7, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .end local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-direct {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .restart local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    iget v15, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v15}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    invoke-virtual {v7, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    move-result-object v15

    iget v0, v9, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .local v14, "uinfo":Landroid/content/pm/UserInfo;
    iget-object v15, v14, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v15}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v8    # "ownerUid":I
    .end local v9    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v14    # "uinfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v3

    move-object v5, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :goto_1
    :try_start_2
    sget-object v15, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getOwnContainers exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v5, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    check-cast v11, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .restart local v11    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_2
    return-object v11

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3
    move-object v5, v6

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_0
    move-exception v15

    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    goto :goto_3

    .end local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getPackageSignaturesFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageSignaturesFromExternalStorageWhiteList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    .local v0, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aftr getPackageSignaturesFromExternalStorageWhiteList lCxtInfo.mCallerUid, lCxtInfo.mContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSignatureFromExternalStorageWhiteListInternal(Ljava/lang/String;I)[Landroid/content/pm/Signature;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getPackageSignaturesFromExternalStorageWhiteList policy returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackagesFromExternalStorageSBABlackList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v3, :cond_4

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v0, v9

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "packageName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v6    # "tmp":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    sget-boolean v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackagesFromExternalStorageSBABlackList SUCCESS : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v5, v8

    goto :goto_1

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "getPackagesFromExternalStorageSBABlackList policy returning null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto :goto_1
.end method

.method public getPackagesFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackagesFromExternalStorageWhiteList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v3, :cond_4

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aftr getPackagesFromExternalStorageWhiteList lCxtInfo.mCallerUid, lCxtInfo.mContainerId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v0, v9

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KnoxExternalStorageWhitelist"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "packageName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v6    # "tmp":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    sget-boolean v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackageSignaturesFromExternalStorageWhiteList SUCCESS : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v5, v8

    goto :goto_1

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "addPackageToExternalStorageWhiteList policy returning null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto :goto_1
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .locals 2

    .prologue
    const-string v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getStatus(Landroid/app/enterprise/ContextInfo;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "status":Landroid/content/pm/PersonaState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v3

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/PersonaState;->getKnox2_0State()I

    move-result v2

    .local v2, "statusInt":I
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStatus() for state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PersonaState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->translateStatus(Landroid/content/pm/PersonaState;)I

    move-result v3

    return v3

    .end local v2    # "statusInt":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStatus exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isExternalStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    .local v2, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v2, :cond_0

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v3, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    const/4 v1, 0x0

    .local v1, "flag":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    const-string v7, "sdcard"

    invoke-virtual {v6, v7, v3}, Landroid/os/PersonaManager;->canAccess(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "flag":Z
    .end local v3    # "personaId":I
    .end local v4    # "token":J
    :goto_0
    return v1

    .restart local v1    # "flag":Z
    .restart local v3    # "personaId":I
    .restart local v4    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .end local v1    # "flag":Z
    .end local v3    # "personaId":I
    .end local v4    # "token":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultifactorAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    new-array v0, v6, [Ljava/lang/String;

    const-string v5, "propertyValue"

    aput-object v5, v0, v7

    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "propertyName"

    const-string v8, "MultifactorAuthentication"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceAuthForContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_1
    move v5, v7

    goto :goto_0

    .end local v4    # "ret":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0
.end method

.method public isResetContainerOnRebootEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->isResetPersonaOnRebootEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API isResetContainerOnRebootEnabled "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSettingsOptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isSettingsOptionEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Error from isSettingsOptionEnabled(): option is null or empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .local v2, "uid":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "where":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "optionName"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    if-nez v0, :cond_2

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "isSettingsOptionEnabled(): no record. Return default value \'true\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    const-string v7, "optionValue"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSettingsOptionEnabled() exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSettingsOptionEnabledInternal(ILjava/lang/String;Z)Z
    .locals 12
    .param p1, "personaId"    # I
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal for personaId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; option="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Error from isSettingsOptionEnabledInternal: option is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .end local p3    # "defaultValue":Z
    :goto_0
    return p3

    .restart local p3    # "defaultValue":Z
    :cond_1
    const/4 v9, 0x2

    :try_start_0
    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "optionValue"

    aput-object v10, v0, v9

    .local v0, "columns":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, "where":Landroid/content/ContentValues;
    const-string v9, "optionName"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KnoxSettingsOptionsTable"

    invoke-virtual {v9, v10, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal: empty or null:  Return default value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "where":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal: Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v8    # "where":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x0

    .local v5, "integerUid":Ljava/lang/Integer;
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isSettingsOptionEnabledInternal: Warning integerUid == null. Should not happened."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne p1, v9, :cond_4

    const-string v9, "optionValue"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .local v6, "result":Ljava/lang/Integer;
    if-nez v6, :cond_6

    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "isSettingsOptionEnabledInternal: Error result == null. Should not happened. Returning false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .local v4, "iResult":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    move p3, v9

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "iResult":I
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_8
    sget-object v9, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal: no record found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":  Return default value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public lockContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "lockContainer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API adminLockPersona "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onAdminAdded(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    const-string v0, "onAdminAdded"

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const-string v0, "onAdminRemoved"

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdminRemoval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const-string v5, "onPreAdminRemoval"

    invoke-static {v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreAdminRemoval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getContainers(I)Ljava/util/List;

    move-result-object v1

    .local v1, "containerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting containers for owner Uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "containerId":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterType(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v4, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    goto :goto_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1
    return-void
.end method

.method public registerBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userId":I
    const/4 v2, 0x0

    .local v2, "retVal":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v3, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public removeConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x0

    .local v0, "uid":I
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeConfigurationTypeInternal(ILjava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_0
.end method

.method public removeContainer(Landroid/app/enterprise/ContextInfo;)I
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid container Id. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x4b2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v1, "removeContainer"

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEAMS invalidated caller. lets go for MDM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_1
.end method

.method public removeNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNetworkSSID - SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNetworkSSID - invalid Str "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v0, "adminUid":I
    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSSID(I)Ljava/util/Set;

    move-result-object v1

    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->saveBlockedList(ILjava/util/Set;)Z

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "addNetworkSSID failed : no exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removePackageFromExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "removePackageFromExternalStorageSBABlackList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v5

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Lcom/android/server/SEAMService;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v4

    .local v4, "retCode":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removePackageFromExternalStorageSBABlackList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "packageName"

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removePackageFromExternalStorageSBABlackList for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_1

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardSBABlacklistUpdate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public removePackageFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v9, "removePackageFromExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v5

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Lcom/android/server/SEAMService;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v4

    .local v4, "retCode":I
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removePackageFromExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "packageName"

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "cnt":I
    if-lez v0, :cond_1

    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removePackageFromExternalStorageWhiteList for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_1

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->notifySdcardWhitelistUpdate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public resetContainerOnReboot(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API resetPersonaOnBoot "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public resetContainerPolicies(Landroid/app/enterprise/ContextInfo;)Z
    .locals 27
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v21, 0x0

    .local v21, "retVal":Z
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .local v24, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v23

    .local v23, "service":Landroid/os/PersonaManager;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v5, "containerId":I
    if-eqz v23, :cond_2

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v4, "uid":I
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .local v9, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v10

    .local v10, "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v11

    .local v11, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v7, v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v11, v2, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v13

    .local v13, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v3

    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Component Name :  "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5, v2}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v19

    .local v19, "proxyID":I
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v16

    .local v16, "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Deactivating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v14

    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/ProxyDeviceAdminInfo;

    .local v18, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .local v22, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Removes Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v5    # "containerId":I
    .end local v9    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v11    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v16    # "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v19    # "proxyID":I
    .end local v22    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "service":Landroid/os/PersonaManager;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Failed at KnoxMUMContainerPolicy API resetContainerPolicies "

    invoke-static {v2, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Returned Value for Reset Policies : "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21

    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "uid":I
    .restart local v5    # "containerId":I
    .restart local v9    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v10    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v11    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v13    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v16    # "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "proxyID":I
    .restart local v23    # "service":Landroid/os/PersonaManager;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v6

    .local v6, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .local v20, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Resolve Info "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Landroid/app/admin/ProxyDeviceAdminInfo;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .local v17, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {v5, v4}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    const/4 v2, 0x0

    invoke-virtual {v9, v3, v2, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Activating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v15

    .local v15, "newPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15, v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/sec/enterprise/knox/container/KnoxContainerManager;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminChangeIntent(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v21, 0x1

    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v9    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v11    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v13    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v15    # "newPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v19    # "proxyID":I
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v5    # "containerId":I
    .end local v23    # "service":Landroid/os/PersonaManager;
    :catchall_0
    move-exception v2

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string v7, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-ne v7, p2, :cond_0

    :goto_0
    return v3

    :cond_0
    if-eqz p1, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .local v1, "pinfo":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_1

    iget-boolean v7, v1, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v7}, Landroid/os/PersonaManager;->disablePersonaKeyGuard(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_4

    const/4 v7, 0x1

    :try_start_2
    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    .local v2, "ret":Z
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->enablePersonaKeyGuard(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Landroid/os/PersonaManager;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->refreshTimer(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "ret":Z
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "pinfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "token":J
    :cond_5
    :goto_1
    move v3, v6

    goto :goto_0

    .restart local v4    # "token":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setHibernationTimeout(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # J

    .prologue
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "propertyName"

    const-string v5, "HibernationTimeout"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHibernationTimeout: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v2, :cond_0

    sget-object v4, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHibernationTimeout failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_1
.end method

.method public setSettingsOptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "setSettingsOptionEnabled()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Error from setSettingsOptionEnabled(): option is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    .local v2, "lCtxInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v3, 0x0

    .local v3, "result":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "where":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, v2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "optionName"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KnoxSettingsOptionsTable"

    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .local v0, "count":I
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSettingsOptionEnabled(): already row present ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez v0, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "optionValue"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    if-nez v3, :cond_1

    sget-object v5, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSettingsOptionEnabled failed : result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v5, "optionValue"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    const-string v0, "systemReady"

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->checkCallerPermissionFor(Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "SystemReady called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->disableCover(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    return-void
.end method

.method public unlockContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "unlockContainer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    const/4 v7, 0x0

    .local v7, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .local v10, "userId":I
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "pkgNames":[Ljava/lang/String;
    if-eqz v6, :cond_1

    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    .local v5, "pkgName":Ljava/lang/String;
    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5, v11, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "adminUid":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v11, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v12, "Failed at KnoxMUMContainerPolicy API adminUnLockPersona "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .restart local v0    # "adminUid":I
    .restart local v6    # "pkgNames":[Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_1
    const/4 v11, 0x0

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v11, v12, v10}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .end local v0    # "adminUid":I
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_2
    return v7
.end method

.method public unregisterBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .local v3, "userId":I
    const/4 v2, 0x0

    .local v2, "retVal":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v3, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->unregisterBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
