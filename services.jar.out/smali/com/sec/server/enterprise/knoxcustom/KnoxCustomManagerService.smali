.class public Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.super Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MULTIWINDOW_SEALED_MODE:Ljava/lang/String; = "com.sec.android.multiwindow.SEALED_MODE"

.field private static final ACTION_QUICKSETTING_REFRESH:Ljava/lang/String; = "com.sec.android.quicksetting.REFRESH"

.field public static final DB_UID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManagerService"

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field private static mWifiConfigure:Z

.field private static mWifiPassword:Ljava/lang/String;

.field private static mWifiSSID:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mTempContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->DEBUG:Z

    iput-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxCustomManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startSealedMode()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkDotString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ipAddressString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .local v5, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "i":I
    if-ltz v2, :cond_0

    const/16 v8, 0xff

    if-gt v2, v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private deserializeObject([B)Ljava/util/ArrayList;
    .locals 8
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .local v3, "p":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v6, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .local v5, "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v2, v5, v1

    .local v2, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private enforceRubensFeaturesPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSealedModePermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSettingPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSystemPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private registerBootReceiver()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private registerKnoxCustomReceiver()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private serializeObject(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "inputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startSealedMode()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedStatusBarMode()I

    move-result v5

    .local v5, "statusBarMode":I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    const/16 v8, 0x22b

    invoke-virtual {v4, v8}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "multiwindowIntent":Landroid/content/Intent;
    const-string v8, "closeTray"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .local v0, "cb":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/16 v8, 0x1b9

    invoke-virtual {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedMultiWindowFixedState(I)I

    move-result v2

    .local v2, "fixed":I
    if-ne v2, v11, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0    # "cb":Ljava/lang/String;
    .end local v2    # "fixed":I
    .end local v3    # "multiwindowIntent":Landroid/content/Intent;
    :cond_2
    const/16 v8, 0x22d

    invoke-virtual {v4, v8}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .restart local v0    # "cb":Ljava/lang/String;
    .restart local v3    # "multiwindowIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    const-string v8, "KnoxCustomManagerService"

    const-string v9, "Warning: could not disable cocktail bar"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopSealedMode()V
    .locals 11

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .local v5, "statusBarManager":Landroid/app/StatusBarManager;
    const/16 v8, 0x22c

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V

    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "multiwindowIntent":Landroid/content/Intent;
    const-string v8, "closeTray"

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .local v0, "cb":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/16 v8, 0x1b9

    invoke-virtual {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedMultiWindowFixedState(I)I

    move-result v2

    .local v2, "fixed":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2    # "fixed":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    const-string v8, "KnoxCustomManagerService"

    const-string v9, "Warning: could not enable cocktail bar"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMultiWindowCenterBar()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "multiwindowUpdateIntent":Landroid/content/Intent;
    const-string v1, "updateCenterBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .locals 9
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/16 v3, -0x28

    .local v3, "sealedResult":I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .end local v3    # "sealedResult":I
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    .restart local v3    # "sealedResult":I
    goto :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "sealedResult":I
    :cond_2
    const/16 v3, -0x31

    .restart local v3    # "sealedResult":I
    goto :goto_0

    .end local v3    # "sealedResult":I
    :cond_3
    const/4 v3, -0x2

    .restart local v3    # "sealedResult":I
    goto :goto_0

    .end local v3    # "sealedResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .restart local v3    # "sealedResult":I
    goto :goto_0
.end method

.method public getCheckCoverPopupState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "sealedResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExtendedCallInfoState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "extendedCallInfoState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecentLongPressMode()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedExitUI(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiPackage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiClass"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSealedHideNotificationMessages()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "notificationMessagesMask"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedHomeActivity()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedHomeActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedHomeActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedInputMethodRestrictionState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "inputRestrictionState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedModeString(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedModeString() failed - unrecognized type"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedModeString() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOff"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedModeString() failed - persistence problem (SEALED_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOption"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedModeString() failed - persistence problem (SEALED_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSealedMultiWindowFixedState(I)I
    .locals 6
    .param p1, "paramType"    # I

    .prologue
    const/4 v1, -0x1

    .local v1, "sealedResult":I
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedMultiWindowFixedState() failed - invalid parameter type "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "multiWindowFixed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedMultiWindowFixedState(MULTI_WINDOW_FIXED_STATE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "multiWindowPercentageSplit"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedMultiWindowFixedState(MULTI_WINDOW_PERCENTAGE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSealedNotificationMessagesState()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .local v2, "sealedResult":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "mask":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    const/4 v2, 0x0

    .end local v1    # "mask":I
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedPowerDialogCustomItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "sealedPowerCustomItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "blob":[B
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeObject([B)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string v4, "getSealedPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedPowerDialogCustomItemsState()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "sealedPowerCustomItemsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public getSealedPowerDialogItems()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "sealedResult":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedPowerDialogItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedPowerDialogItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedPowerDialogOptionMode()I
    .locals 6

    .prologue
    const/4 v1, 0x2

    .local v1, "sealedResult":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedStatusBarClockState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "sealedResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedStatusBarClockState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedStatusBarClockState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedStatusBarIconsState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "sealedResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedStatusBarIconsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedStatusBarMode()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .local v1, "sealedResult":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedStatusBarMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedStatusBarMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSealedUsbMassStorageState()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .local v1, "sealedResult":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbMassStorageState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSealedUsbNetAddress(I)Ljava/lang/String;
    .locals 6
    .param p1, "addressType"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetSource"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbNetState(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetDest"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbNetState(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSealedUsbNetState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbNetState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSettingsHiddenState()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "sealedResult":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "settingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserInactivityTimeout()I
    .locals 5

    .prologue
    const/4 v1, -0x6

    .local v1, "sealedResult":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    return-void
.end method

.method public removeLockScreen()I
    .locals 10

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v2, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_pattern_autolock"

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.disabled"

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.password_type"

    const-wide/32 v8, 0x10000

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v2    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .local v3, "sealedResult":I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .end local v3    # "sealedResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    .restart local v3    # "sealedResult":I
    goto :goto_0
.end method

.method public setAdbState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v3

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v3, "KnoxCustomManagerService"

    const-string v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x7

    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v6

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "persist.sys.auto_confirm"

    const-string v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_2
.end method

.method public setAudioVolume(II)I
    .locals 9
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .local v2, "callingUid":I
    const/4 v4, -0x6

    .local v4, "sealedResult":I
    if-ltz p1, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, "am":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .local v3, "maxVolume":I
    move v0, p2

    .local v0, "actualVolume":I
    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v5, 0x5

    if-gt p1, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v4, 0x0

    .end local v0    # "actualVolume":I
    .end local v3    # "maxVolume":I
    :cond_2
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v6    # "token":J
    :goto_1
    return v4

    .restart local v0    # "actualVolume":I
    .restart local v1    # "am":Landroid/media/AudioManager;
    .restart local v3    # "maxVolume":I
    .restart local v6    # "token":J
    :cond_3
    const/16 v4, -0x26

    goto :goto_0

    .end local v0    # "actualVolume":I
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "maxVolume":I
    .end local v6    # "token":J
    :cond_4
    const/16 v4, -0x26

    goto :goto_1
.end method

.method public setAutoRotationState(ZI)I
    .locals 9
    .param p1, "status"    # Z
    .param p2, "rotation"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_0

    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_0
    const/4 v6, 0x3

    if-gt p2, v6, :cond_1

    const/4 v6, -0x1

    if-ge p2, v6, :cond_2

    :cond_1
    :try_start_1
    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x27

    goto :goto_0

    :cond_2
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBackupRestoreState(IZ)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4, v9}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_1

    move v3, v8

    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_2

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x7

    :cond_0
    :goto_1
    return v5

    .end local v3    # "isRestricted":Z
    :cond_1
    move v3, v9

    goto :goto_0

    .restart local v3    # "isRestricted":Z
    :cond_2
    if-lt p1, v8, :cond_3

    const/4 v10, 0x3

    if-le p1, v10, :cond_4

    :cond_3
    const/16 v5, -0x32

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .local v5, "ret":I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_7

    const-string v10, "KnoxCustomManagerService"

    const-string v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v5, :cond_0

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_5
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "backup_auto_restore"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    move v5, v9

    goto :goto_1

    .restart local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_7
    :try_start_0
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_2

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    move v8, v9

    goto :goto_3
.end method

.method public setBluetoothState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .local v2, "isRestricted":Z
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    :goto_0
    return v4

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "sealedResult":I
    goto :goto_0

    .end local v4    # "sealedResult":I
    :cond_3
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_0
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .locals 9
    .param p1, "timeout"    # I

    .prologue
    const/16 v6, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    .local v2, "sealedResult":I
    const v7, 0x20c49b

    if-lt p1, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_discoverable_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBluetoothVisibilityTimeout() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setCheckCoverPopupState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCpuPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_cpu_clock"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "psm_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setDeveloperOptionsHidden()I
    .locals 10

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/shared_prefs/development.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "f":Ljava/io/File;
    .local v4, "sealedResult":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v4    # "sealedResult":I
    .restart local v3    # "f":Ljava/io/File;
    :cond_1
    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_0

    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "sealedResult":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setDeveloperOptionsHidden() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_0
.end method

.method public setExtendedCallInfoState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, -0x6

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "extendedCallInfoState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setGpsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .local v2, "locationPolicy":Landroid/app/enterprise/LocationPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v3, "KnoxCustomManagerService"

    const-string v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x7

    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "inputMethodClassName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v4, -0x30

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "methodList":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultInput":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x0

    .end local v1    # "defaultInput":Ljava/lang/String;
    .end local v3    # "methodList":Ljava/lang/String;
    .local v4, "sealedResult":I
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v4    # "sealedResult":I
    .restart local v3    # "methodList":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_input_methods"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    .restart local v4    # "sealedResult":I
    goto :goto_1

    .end local v4    # "sealedResult":I
    :cond_2
    const/16 v4, -0x30

    .restart local v4    # "sealedResult":I
    goto :goto_1

    .end local v3    # "methodList":Ljava/lang/String;
    .end local v4    # "sealedResult":I
    :cond_3
    const/16 v4, -0x30

    .restart local v4    # "sealedResult":I
    goto :goto_1

    .end local v4    # "sealedResult":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_1
.end method

.method public setMobileDataRoamingState(Z)I
    .locals 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v3, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    :cond_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v5, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .local v3, "sealedResult":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "sealedResult":I
    :cond_2
    move v5, v8

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileDataRoamingState() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .restart local v3    # "sealedResult":I
    goto :goto_2
.end method

.method public setMobileDataState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, -0x6

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setMotionControlState(IZ)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-lt p1, v3, :cond_0

    const/4 v7, 0x3

    if-le p1, v7, :cond_1

    :cond_0
    const/16 v2, -0x32

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pick_up"

    if-eqz p2, :cond_4

    move v7, v3

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_5

    move v7, v3

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_6

    move v7, v3

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "surface_palm_swipe"

    if-eqz p2, :cond_7

    :goto_4
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "sealedResult":I
    :cond_4
    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v6

    goto :goto_2

    :cond_6
    move v7, v6

    goto :goto_3

    :cond_7
    move v3, v6

    goto :goto_4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_5
.end method

.method public setMultiWindowState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v6, "KnoxCustomManagerService"

    const-string v7, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x7

    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    const/4 v3, -0x6

    .local v3, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "multi_window_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public setPackageVerifierState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "package_verifier_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "sealedResult":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_1
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I

    move-result v0

    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, -0x21

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setRecentLongPressMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v2, -0x6

    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "psm_display"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "psm_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setScreenTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const v5, 0x20c49b

    if-lt p1, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v5, 0x5

    if-lt p1, v5, :cond_0

    mul-int/lit16 v4, p1, 0x3e8

    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    goto :goto_0

    .end local v2    # "sealedResult":I
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_0
.end method

.method public setSealedExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "exitUIPackage"    # Ljava/lang/String;
    .param p2, "exitUIClass"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/16 v3, -0x21

    :goto_0
    return v3

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSealedHideNotificationMessages(I)I
    .locals 7
    .param p1, "mask"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/16 v4, 0x1f

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSealedHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x32

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x6

    .local v3, "sealedResult":I
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedHideNotificationMessages()I

    move-result v1

    .local v1, "currentMask":I
    if-eq p1, v1, :cond_2

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "notificationMessagesMask"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "currentMask":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSealedHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setSealedHomeActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, -0x21

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSealedInputMethodRestrictionState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_0
    return v2

    .end local v2    # "sealedResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_0
.end method

.method public setSealedModeString(ILjava/lang/String;)I
    .locals 6
    .param p1, "stringType"    # I
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    packed-switch p1, :pswitch_data_0

    const-string v3, "KnoxCustomManagerService"

    const-string v4, "setSealedModeString() failed - unrecognized type"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x29

    :goto_0
    return v2

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedModeString() failed - persistence problem (SEALED_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedModeString() failed - persistence problem (SEALED_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    goto :goto_0

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedModeString() failed - persistence problem (SEALED_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSealedMultiWindowFixedState(II)I
    .locals 12
    .param p1, "fixed"    # I
    .param p2, "percentageSplit"    # I

    .prologue
    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v8

    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_2

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setSealedMultiWindowFixedState() - eSDK multi window mode not allowed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    :cond_0
    :goto_1
    return v4

    .end local v2    # "isRestricted":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "isRestricted":Z
    :cond_2
    const/4 v4, -0x6

    .local v4, "sealedResult":I
    if-eq p1, v8, :cond_3

    if-eqz p1, :cond_3

    const/16 v4, -0x2b

    goto :goto_1

    :cond_3
    const/16 v9, 0xa

    if-lt p2, v9, :cond_4

    const/16 v9, 0x5a

    if-le p2, v9, :cond_5

    :cond_4
    const/16 v4, -0x2a

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    if-ne p1, v8, :cond_6

    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_6

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    move-result v4

    if-nez v4, :cond_0

    :cond_6
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "multiWindowFixed"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "multiWindowPercentageSplit"

    invoke-virtual {v8, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const-string v8, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    .end local v5    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSealedMultiWindowFixedState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setSealedNotificationMessagesState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setSealedHideNotificationMessages(I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setSealedHideNotificationMessages(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "currentPassCode"    # Ljava/lang/String;
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x6

    .local v3, "sealedResult":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "sealedState"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, "currentStatus":Z
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "sealedPinCode"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "storedPassCode":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "sealedPinCode"

    invoke-virtual {v5, v0, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    .end local v1    # "currentStatus":Z
    .end local v4    # "storedPassCode":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v1    # "currentStatus":Z
    .restart local v4    # "storedPassCode":Ljava/lang/String;
    :cond_0
    const-string v5, "KnoxCustomManagerService"

    const-string v6, "setSealedPassCode() - Invalid passcode"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x20

    goto :goto_0

    .end local v4    # "storedPassCode":Ljava/lang/String;
    :cond_1
    const-string v5, "KnoxCustomManagerService"

    const-string v6, "setSealedPassCode() - Not in Sealed Mode "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x2

    goto :goto_0

    .end local v1    # "currentStatus":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSealedPassCode() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setSealedPowerDialogCustomItems(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "dbBytes":[B
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "sealedPowerCustomItems"

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    return v3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_2

    const/16 v3, -0x33

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setSealedPowerDialogCustomItemsState(Z)I
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v6, 0x3e8

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "sealedPowerCustomItemsState"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setSealedPowerDialogItems(I)I
    .locals 7
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x1

    .local v2, "sealedResult":I
    if-ltz p1, :cond_0

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_1

    :cond_0
    const/16 v2, -0x32

    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "sealedPowerDialogItems"

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedPowerDialogOptionMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/16 v2, -0x2b

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedState(ZLjava/lang/String;)I
    .locals 13
    .param p1, "status"    # Z
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v4

    .local v4, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    .local v3, "isRestricted":Z
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_0

    const-string v10, "KnoxCustomManagerService"

    const-string v11, "setSealedState() - eSDK kiosk mode already enabled"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x7

    :goto_0
    return v5

    :cond_0
    const/4 v5, -0x1

    .local v5, "sealedResult":I
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string v12, "sealedState"

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .local v1, "currentStatus":Z
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    const-string v10, "KnoxCustomManagerService"

    const-string v11, "setSealedState() - Already in sealed mode - Passcode not changed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string v12, "sealedState"

    invoke-virtual {v10, v0, v11, v12, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string v12, "sealedPinCode"

    invoke-virtual {v10, v0, v11, v12, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startSealedMode()V

    const/4 v5, 0x0

    const-string v10, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "currentStatus":Z
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setSealedState() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentStatus":Z
    :cond_2
    :try_start_1
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "setSealedState() - Invalid passcode"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0x20

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string v12, "sealedPinCode"

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "storedPassCode":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string v12, "sealedState"

    invoke-virtual {v10, v0, v11, v12, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->stopSealedMode()V

    const/4 v5, 0x0

    const-string v10, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .restart local v7    # "uri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .end local v7    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "setSealedState() - Invalid passcode"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0x20

    goto/16 :goto_0

    .end local v6    # "storedPassCode":Ljava/lang/String;
    :cond_5
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "setSealedState() - Not in Sealed Mode"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, -0x2

    goto/16 :goto_0
.end method

.method public setSealedStatusBarClockState(Z)I
    .locals 10
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "sealedStatusBarClockState"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedStatusBarMode()I

    move-result v4

    .local v4, "statusBarMode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz p1, :cond_1

    const v5, 0x80022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    const/16 v5, 0x22d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "statusBarMode":I
    .restart local v6    # "token":J
    :cond_1
    const v5, 0x80022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSealedStatusBarClockState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSealedStatusBarIconsState(Z)I
    .locals 10
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "sealedStatusBarIconsState"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedStatusBarMode()I

    move-result v4

    .local v4, "statusBarMode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz p1, :cond_1

    const v5, 0x10022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    const/16 v5, 0x22d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "statusBarMode":I
    .restart local v6    # "token":J
    :cond_1
    const v5, 0x10022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSealedStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSealedStatusBarMode(I)I
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/4 v11, 0x3

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v2

    .local v2, "isRestricted":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_0

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setSealedStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    :goto_0
    return v4

    :cond_0
    const/4 v4, -0x6

    .local v4, "sealedResult":I
    const/4 v8, 0x2

    if-eq p1, v8, :cond_1

    if-ne p1, v11, :cond_4

    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "sealedStatusBarMode"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .local v5, "statusBarManager":Landroid/app/StatusBarManager;
    if-ne p1, v11, :cond_3

    const/16 v8, 0x22b

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v5    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_3
    const/16 v8, 0x22d

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v5    # "statusBarManager":Landroid/app/StatusBarManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSealedStatusBarMode() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v4, -0x2b

    goto :goto_0
.end method

.method public setSealedUsbMassStorageState(Z)I
    .locals 10
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .local v2, "isRestricted":Z
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setSealedUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    :goto_0
    return v4

    :cond_1
    const/4 v4, -0x6

    .local v4, "sealedResult":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string v9, "usbMassStorageState"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSealedUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setSealedUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/16 v3, -0x24

    :goto_0
    return v3

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetSource"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "usbNetDest"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSealedUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setSealedUsbNetState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSealedModePermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    const/16 v3, 0x14b

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedUsbNetAddress(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14c

    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedUsbNetAddress(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const-string v3, "KnoxCustomManagerService"

    const-string v6, "setSealedUsbNetState() failed - invalid IP addresses "

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, -0x24

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "usbNetState"

    invoke-virtual {v3, v0, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSealedUsbNetState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSettingsHiddenState(ZI)I
    .locals 12
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v7, 0x1ff

    if-le p2, v7, :cond_1

    :cond_0
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, -0x32

    :goto_0
    return v6

    :cond_1
    const/4 v6, -0x6

    .local v6, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "settingsState"

    invoke-virtual {v7, v1, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .local v2, "currentElements":I
    if-eqz p1, :cond_3

    or-int v5, v2, p2

    .local v5, "newElements":I
    :goto_1
    if-eq v5, v2, :cond_2

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "settingsState"

    invoke-virtual {v7, v1, v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const-string v7, "com.android.settings"

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "i":Landroid/content/Intent;
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x2

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x0

    .end local v2    # "currentElements":I
    .end local v5    # "newElements":I
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .restart local v2    # "currentElements":I
    :cond_3
    xor-int/lit8 v7, p2, -0x1

    and-int v5, v2, v7

    .restart local v5    # "newElements":I
    goto :goto_1

    .end local v2    # "currentElements":I
    .end local v5    # "newElements":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    goto :goto_2
.end method

.method public setStayAwakeState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "sealedResult":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_1
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "localeLanguage"    # Ljava/lang/String;
    .param p2, "localeCountry"    # Ljava/lang/String;

    .prologue
    const/16 v7, -0x2c

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    const/4 v5, 0x0

    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    if-nez p2, :cond_1

    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    :goto_0
    if-nez v5, :cond_2

    .end local v8    # "token":J
    :cond_0
    :goto_1
    return v7

    .restart local v8    # "token":J
    :cond_1
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .local v10, "valid":Z
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .local v6, "locales":[Ljava/util/Locale;
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3    # "l":Ljava/util/Locale;
    :cond_4
    if-eqz v10, :cond_0

    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v7, 0x0

    .local v7, "sealedResult":I
    goto :goto_1

    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "locales":[Ljava/util/Locale;
    .end local v7    # "sealedResult":I
    .end local v8    # "token":J
    .end local v10    # "valid":Z
    :cond_5
    const/16 v7, -0x2c

    .restart local v7    # "sealedResult":I
    goto :goto_1
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .locals 12
    .param p1, "ringtoneType"    # I
    .param p2, "ringtoneName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "token":J
    new-instance v5, Landroid/media/RingtoneManager;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .local v5, "rm":Landroid/media/RingtoneManager;
    const/4 v10, 0x1

    if-eq p1, v10, :cond_0

    const/4 v10, 0x2

    if-eq p1, v10, :cond_0

    const/4 v10, 0x4

    if-eq p1, v10, :cond_0

    const/16 v6, -0x22

    .local v6, "sealedResult":I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "sealedResult":I
    :goto_1
    return v6

    :cond_0
    if-nez p2, :cond_1

    const/16 v6, -0x23

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .local v1, "found":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_5

    const/4 v6, 0x0

    .restart local v6    # "sealedResult":I
    goto :goto_0

    .end local v6    # "sealedResult":I
    :cond_3
    invoke-virtual {v5, p1}, Landroid/media/RingtoneManager;->setType(I)V

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .local v4, "ringtones":I
    const/4 v7, 0x0

    .local v7, "tone":I
    :goto_2
    if-ge v7, v4, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {v5, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v2

    .local v2, "ringtone":Landroid/media/Ringtone;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v5, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v3

    .local v3, "ringtoneUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/4 v1, 0x1

    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v4    # "ringtones":I
    .end local v7    # "tone":I
    :cond_5
    const/16 v6, -0x23

    .restart local v6    # "sealedResult":I
    goto :goto_0
.end method

.method public setSystemSoundsSilent()I
    .locals 8

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "sealedResult":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_0
.end method

.method public setUnknownSourcesState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_1

    const-string v4, "KnoxCustomManagerService"

    const-string v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x7

    :goto_1
    return v5

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v5

    goto :goto_0

    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "install_non_market_apps"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .locals 10
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "applicationPackage"    # Ljava/lang/String;
    .param p3, "applicationUid"    # I

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .local v1, "callingUid":I
    const/4 v3, -0x6

    .local v3, "sealedResult":I
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, -0x21

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    if-eqz p1, :cond_2

    if-lez p3, :cond_1

    :try_start_0
    const-string v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v3

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x2e

    goto :goto_1

    :cond_2
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, -0x2f

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setUserInactivityTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v5, -0x2d

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v2, -0x6

    .local v2, "sealedResult":I
    const v8, 0x20c49b

    if-lt p1, v8, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-ltz p1, :cond_0

    mul-int/lit16 v4, p1, 0x3e8

    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :goto_1
    move v5, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setWifiConnectionMonitorState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "sealedResult":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_1
.end method

.method public setWifiNetworkNotificationState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .local v2, "sealedResult":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "sealedResult":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_1
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    :goto_1
    return v4

    .end local v2    # "isRestricted":Z
    :cond_0
    move v2, v8

    goto :goto_0

    .restart local v2    # "isRestricted":Z
    :cond_1
    const/4 v4, -0x6

    .local v4, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    if-eqz v5, :cond_8

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, -0x28

    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    :try_start_1
    const-string v8, "KnoxCustomManagerService"

    const-string v9, "setWifiState() - ssid != null && password == null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x28

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V

    return-void
.end method
