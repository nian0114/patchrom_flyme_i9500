.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_LEASE_TIME:Ljava/lang/String; = "60"

.field private static final DHCP_DEFAULT_MAX_CLIENT:Ljava/lang/String; = "150"

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DNS_DEFAULTDUAL_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULTDUAL_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DNS_DEFAULTDUAL_SERVER3:Ljava/lang/String; = "2001:4860:4860::8888"

.field private static final DNS_DEFAULTDUAL_SERVER4:Ljava/lang/String; = "2001:4860:4860::8844"

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field public static final EXTRA_TETHERED_IFACE:Ljava/lang/String; = "tetheredClientIface"

.field public static final EXTRA_UPSTREAM_IFACE:Ljava/lang/String; = "tetheringUpstreamIface"

.field public static final EXTRA_UPSTREAM_INFO_DEFAULT:I = -0x1

.field public static final EXTRA_UPSTREAM_IP_TYPE:Ljava/lang/String; = "tetheringUpstreamIpType"

.field public static final EXTRA_UPSTREAM_UPDATE_TYPE:Ljava/lang/String; = "tetheringUpstreamUpdateType"

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MAXAP_NOTI_ID:I = 0x10407b0

.field private static MAX_CLIENTS:I = 0x0

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final STRING_MTP_ADB:Ljava/lang/String; = "mtp,adb"

.field private static final STRING_NCM:Ljava/lang/String; = "ncm"

.field private static final STRING_RNDIS_DIAG_MODEM:Ljava/lang/String; = "rndis,acm,diag"

.field private static final STRING_RNDIS_DM_MODEM:Ljava/lang/String; = "rndis,acm,dm"

.field private static final STRING_RNDIS_MODEM_ADB:Ljava/lang/String; = "rndis,acm,adb"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field public static final UPSTREAM_IFACE_CHANGED_ACTION:Ljava/lang/String; = "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field public static final WIFIAP_HIGH_TX_POWER_MODE:I = 0x1

.field public static final WIFIAP_LOW_TX_POWER_MODE:I = 0x0

.field private static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.android.settings.wifi.PLUG_STATE_CHANGED"

.field private static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field public static final WIFIAP_STAND_BY_MODE_START:Ljava/lang/String; = "android.net.wifi.wifiap_stand_by_mode_start"

.field public static final WIFIAP_TX_POWER_MODE_CHANGED:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_changed"

.field public static final WIFIAP_TX_POWER_MODE_VALUE:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_value"

.field static final WIFI_AP_ON_ICON:[I

.field private static bExpireAlarm:Z = false

.field private static bStartAlarm:Z = false

.field private static clients:I = 0x0

.field private static defaultTimeoutValue:I = 0x0

.field private static final lowBatteryThreshold:I = 0xf

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private static mDhcpKnoxCustomRange:[Ljava/lang/String;

.field private static mIsPlugged:Z

.field private static mIsTetherActive:Z

.field private static mLastClients:I

.field private static mRVFMode:I

.field private static mTetheringPreState:I

.field private static mTetheringState:I

.field private static ncmTethered:Z


# instance fields
.field private add_client_event:Z

.field private getSealedState:Z

.field private getSealedUsbNetState:Z

.field private knoxUri:Landroid/net/Uri;

.field private locale_changed_event:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDefaultDualDnsServers:[Ljava/lang/String;

.field private mDhcpConfig:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootComplete:Z

.field private mLooper:Landroid/os/Looper;

.field private mLowBatteryNotification:Landroid/app/Notification;

.field private mMaxApNotification:Landroid/app/Notification;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNcmEnabled:Z

.field private mNcmTetherRequested:Z

.field private mPreferredUpstreamMobileApn:I

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPublicSync:Ljava/lang/Object;

.field private mRetryLimit:I

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mTetheredVendorNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherRequested:Z

.field private supportedCPUCoreTable:[I

.field private wifiTethered:Z

.field private wifiVendorTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 202
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 203
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 230
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.42.254"

    aput-object v1, v0, v4

    const-string v1, "192.168.43.2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v6

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "192.168.49.2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "192.168.49.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 278
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->ncmTethered:Z

    .line 281
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 282
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 287
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    .line 288
    sput v3, Lcom/android/server/connectivity/Tethering;->clients:I

    .line 289
    sput v3, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    .line 290
    sput v3, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    .line 299
    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I

    .line 310
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "192.168.102.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.102.254"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    .line 317
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    .line 343
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    .line 344
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    .line 345
    const-string v0, "1200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I

    .line 347
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    .line 348
    sput v3, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    .line 349
    sput v3, Lcom/android/server/connectivity/Tethering;->mTetheringPreState:I

    return-void

    .line 317
    nop

    :array_0
    .array-data 4
        0x10808a8
        0x10808a9
        0x10808aa
        0x10808ab
        0x10808ac
        0x10808ad
        0x10808ae
        0x10808af
        0x10808b0
        0x10808b1
        0x10808b2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 352
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 207
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 292
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    .line 293
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    .line 294
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    .line 295
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    .line 296
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    .line 298
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    .line 307
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    .line 308
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    .line 309
    iput-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    .line 314
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 438
    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 353
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 354
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 355
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 356
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    .line 357
    iput-object p5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 359
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 361
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 364
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Tethering"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    .line 365
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 366
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 367
    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v3, "TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 368
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->start()V

    .line 370
    new-instance v2, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v2, p0, v6}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v2, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v2, "android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 400
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v2, v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v7, :cond_1

    .line 401
    :cond_0
    sget-object v2, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 408
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 409
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v5

    .line 410
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v7

    .line 413
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    .line 414
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.8.8"

    aput-object v3, v2, v5

    .line 415
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string v3, "8.8.4.4"

    aput-object v3, v2, v7

    .line 416
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string v3, "2001:4860:4860::8888"

    aput-object v3, v2, v8

    .line 417
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "2001:4860:4860::8844"

    aput-object v4, v2, v3

    .line 425
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 426
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 427
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 430
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    return-void
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 148
    sput p0, Lcom/android/server/connectivity/Tethering;->clients:I

    return p0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 148
    sput p0, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    return p1
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I

    return v0
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I

    return v0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 148
    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    return p0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 148
    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 148
    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/connectivity/Tethering;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpConfig:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V

    return-void
.end method

.method private blockInternetSharingByActiveSync(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v2

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 591
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    .line 592
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActiveSync] Tried to Untether an unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v2

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 596
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearLowBatteryNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1183
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1185
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1187
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    .line 1189
    :cond_0
    return-void
.end method

.method private clearTetheredNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1136
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1138
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1141
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 1143
    :cond_0
    return-void
.end method

.method private clearTetheredVendorNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1126
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1128
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1131
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    .line 1133
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 15
    .param p1, "enabled"    # Z

    .prologue
    .line 1662
    const/4 v12, 0x0

    new-array v6, v12, [Ljava/lang/String;

    .line 1663
    .local v6, "ifaces":[Ljava/lang/String;
    const-string v12, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    .line 1664
    const/16 v1, 0x14b

    .line 1665
    .local v1, "addressType":I
    const-string v10, "192.168.42.129"

    .line 1666
    .local v10, "nearIfaceAddr":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1668
    .local v11, "tempAddr":Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v12}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1673
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_4

    aget-object v5, v2, v4

    .line 1674
    .local v5, "iface":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1675
    const/4 v7, 0x0

    .line 1677
    .local v7, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v7

    .line 1678
    const-string v9, "00:00:00:00:00:00"

    .line 1680
    .local v9, "mHwAddr":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1682
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string v13, "getSealedState"

    invoke-virtual {p0, v12, v13}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    .line 1683
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string v13, "getSealedUsbNetState"

    invoke-virtual {p0, v12, v13}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    .line 1684
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    if-eqz v12, :cond_0

    .line 1685
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    if-eqz v12, :cond_0

    .line 1686
    const-string v12, "Tethering"

    const-string v13, "Set Sealed USB Net Source Address"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string v13, "getSealedUsbNetAddress"

    invoke-virtual {p0, v12, v13, v1}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1688
    if-eqz v11, :cond_0

    .line 1689
    move-object v10, v11

    .line 1693
    :cond_0
    invoke-static {v10}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1695
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    const/16 v13, 0x18

    invoke-direct {v12, v0, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v7, v12}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1696
    if-eqz p1, :cond_3

    .line 1697
    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1701
    :goto_1
    const-string/jumbo v12, "running"

    invoke-virtual {v7, v12}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1703
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    if-eqz v12, :cond_1

    .line 1705
    const-string v12, "multicast"

    invoke-virtual {v7, v12}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1706
    const-string v12, "broadcast"

    invoke-virtual {v7, v12}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 1709
    :cond_1
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v5, v7}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1673
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v7    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v9    # "mHwAddr":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1669
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "iface":Ljava/lang/String;
    .end local v8    # "len$":I
    :catch_0
    move-exception v3

    .line 1670
    .local v3, "e":Ljava/lang/Exception;
    const-string v12, "Tethering"

    const-string v13, "Error listing Interfaces"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    const/4 v12, 0x0

    .line 1718
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v12

    .line 1699
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "iface":Ljava/lang/String;
    .restart local v7    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v8    # "len$":I
    .restart local v9    # "mHwAddr":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1711
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v9    # "mHwAddr":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1712
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error configuring interface "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1713
    const/4 v12, 0x0

    goto :goto_2

    .line 1718
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iface":Ljava/lang/String;
    .end local v7    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_4
    const/4 v12, 0x1

    goto :goto_2
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getRvfMode()I
    .locals 6

    .prologue
    .line 1240
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1241
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1242
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1243
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1244
    .local v0, "mRvfMode":I
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRvfMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return v0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .locals 5

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 602
    .local v1, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 603
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current userid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    :goto_0
    const-string v2, "device_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 611
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    const-string v2, "Tethering"

    const-string v3, "[ActiveSync] internet sharing is blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 613
    const/4 v2, 0x1

    .line 619
    :goto_1
    return v2

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Tethering"

    const-string v3, "Failed getting userId using ActivityManagerNative"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 606
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "Tethering"

    const-string v3, "Failed getting userId using ActivityManagerNative"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 615
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Tethering"

    const-string v3, "[ActiveSync] internet sharing is NOT blocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isLightTheme()Z
    .locals 2

    .prologue
    .line 630
    const-string/jumbo v0, "white"

    const-string/jumbo v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 517
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 519
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 516
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 520
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private notifyTetheringActiveToRIL(Z)V
    .locals 9
    .param p1, "tetherActive"    # Z

    .prologue
    .line 2096
    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    if-ne v6, p1, :cond_1

    .line 2127
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    sput-boolean p1, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    .line 2100
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2101
    .local v4, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_2

    .line 2102
    const-string v6, "Tethering"

    const-string v7, "notifyTetheringActiveToRIL skip send Tether Active to RIL- phone service is not ready"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2105
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2106
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2107
    .local v1, "dos":Ljava/io/DataOutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2109
    .local v5, "respBos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x9

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2110
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2111
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2112
    if-eqz p1, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    .line 2114
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send Tether Active to RIL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2121
    :goto_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 2122
    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2123
    :catch_0
    move-exception v3

    .line 2124
    .local v3, "ex":Ljava/io/IOException;
    const-string v6, "Tethering"

    const-string v7, "close fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2112
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 2115
    :catch_1
    move-exception v2

    .line 2116
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception occured during send Tether Active to RIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2117
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 2118
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception occured during send Tether Active to RIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3474
    const-string v0, ""

    .line 3476
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3478
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3481
    :cond_0
    :goto_0
    return-object v0

    .line 3480
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 23

    .prologue
    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v9, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v8, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v12, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    .line 737
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    .line 738
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/connectivity/Tethering;->ncmTethered:Z

    .line 739
    const/16 v21, 0x0

    .line 740
    .local v21, "usbTethered":Z
    const/4 v10, 0x0

    .line 742
    .local v10, "bluetoothTethered":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 743
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 744
    .local v16, "ifaces":Ljava/util/Set;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 745
    .local v15, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 746
    .local v18, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v18, :cond_2

    .line 747
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    check-cast v15, Ljava/lang/String;

    .end local v15    # "iface":Ljava/lang/Object;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 776
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "ifaces":Ljava/util/Set;
    .end local v18    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 749
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "iface":Ljava/lang/Object;
    .restart local v16    # "ifaces":Ljava/util/Set;
    .restart local v18    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_3
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 750
    check-cast v15, Ljava/lang/String;

    .end local v15    # "iface":Ljava/lang/Object;
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 751
    .restart local v15    # "iface":Ljava/lang/Object;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 752
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 753
    const/16 v21, 0x1

    .line 755
    const-string v4, "ncm0"

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 756
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/connectivity/Tethering;->ncmTethered:Z

    .line 772
    :cond_5
    :goto_2
    check-cast v15, Ljava/lang/String;

    .end local v15    # "iface":Ljava/lang/Object;
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 759
    .restart local v15    # "iface":Ljava/lang/Object;
    :cond_6
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/connectivity/Tethering;->ncmTethered:Z

    goto :goto_2

    .line 762
    :cond_7
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 763
    const-string v2, "VZW"

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SPRINT"

    const-string v4, "ALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 764
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    .line 768
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v2

    sput v2, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    goto :goto_2

    .line 766
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    goto :goto_3

    .line 769
    :cond_a
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 770
    const/4 v10, 0x1

    goto :goto_2

    .line 776
    .end local v15    # "iface":Ljava/lang/Object;
    .end local v18    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_b
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v11, "broadcast":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    const-string v2, "availableArray"

    invoke-virtual {v11, v2, v9}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 782
    const-string v2, "activeArray"

    invoke-virtual {v11, v2, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 783
    const-string v2, "erroredArray"

    invoke-virtual {v11, v2, v12}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 787
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTetherStateChangedBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->notifyTetheringActiveToRIL(Z)V

    .line 796
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    if-eqz v2, :cond_14

    sget v2, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    if-nez v2, :cond_14

    .line 797
    const-string v2, "VZW"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/StatusBarManager;

    .line 799
    .local v19, "statusBar":Landroid/app/StatusBarManager;
    const v2, 0x10808d2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    .line 800
    sget-object v2, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget v3, Lcom/android/server/connectivity/Tethering;->clients:I

    aget v14, v2, v3

    .line 801
    .local v14, "iconId":I
    const-string/jumbo v2, "wifi_ap"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 802
    const-string/jumbo v2, "wifi_ap"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 820
    .end local v14    # "iconId":I
    .end local v19    # "statusBar":Landroid/app/StatusBarManager;
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    if-nez v2, :cond_e

    .line 821
    const/4 v2, 0x0

    sput v2, Lcom/android/server/connectivity/Tethering;->clients:I

    .line 822
    const/4 v2, 0x0

    sput v2, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    .line 823
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 825
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v2, :cond_e

    .line 826
    const-string v2, "Tethering"

    const-string v3, "clearLowBatteryNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V

    .line 831
    :cond_e
    if-eqz v21, :cond_1a

    .line 832
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v2, :cond_f

    if-eqz v10, :cond_17

    .line 833
    :cond_f
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 835
    :cond_10
    const v2, 0x10808ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    .line 883
    :goto_6
    if-eqz v21, :cond_2a

    .line 884
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_11

    .line 885
    new-instance v2, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "UsbTethering"

    const/16 v5, 0xe

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 886
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    if-eqz v2, :cond_11

    .line 888
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbTethering supportedCPUCoreTable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v3, "CORE_NUM"

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 891
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    .line 894
    :cond_11
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_0

    .line 895
    new-instance v2, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 896
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v20

    .line 899
    .local v20, "supportedCPUFreqTable":[I
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I

    move-result v17

    .line 900
    .local v17, "properFreq":I
    const v2, 0x118c30

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 902
    .local v22, "valueFreq":I
    if-eqz v20, :cond_29

    .line 907
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    sget-object v4, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 908
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    goto/16 :goto_0

    .line 793
    .end local v17    # "properFreq":I
    .end local v20    # "supportedCPUFreqTable":[I
    .end local v22    # "valueFreq":I
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 803
    :cond_13
    const-string v2, "SPRINT"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 804
    const v2, 0x10808d1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    goto/16 :goto_5

    .line 807
    :cond_14
    const-string v2, "VZW"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/StatusBarManager;

    .line 809
    .restart local v19    # "statusBar":Landroid/app/StatusBarManager;
    const-string/jumbo v2, "wifi_ap"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 810
    const-string/jumbo v2, "wifi_ap"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 812
    .end local v19    # "statusBar":Landroid/app/StatusBarManager;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V

    goto/16 :goto_5

    .line 837
    :cond_16
    const v2, 0x10808cd

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 840
    :cond_17
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 842
    :cond_18
    const v2, 0x10808ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 844
    :cond_19
    const v2, 0x10808cf

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 847
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-eqz v2, :cond_21

    .line 848
    if-nez v10, :cond_1b

    if-eqz v21, :cond_1e

    .line 849
    :cond_1b
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 851
    :cond_1c
    const v2, 0x10808ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 853
    :cond_1d
    const v2, 0x10808cd

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 856
    :cond_1e
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 858
    :cond_1f
    const v2, 0x10808ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 860
    :cond_20
    const v2, 0x10808d0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 863
    :cond_21
    if-eqz v10, :cond_28

    .line 864
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v2, :cond_22

    if-eqz v21, :cond_25

    .line 865
    :cond_22
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 867
    :cond_23
    const v2, 0x10808ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 869
    :cond_24
    const v2, 0x10808cd

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 872
    :cond_25
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 874
    :cond_26
    const v2, 0x10808ce

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 876
    :cond_27
    const v2, 0x10808cc

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    .line 880
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_6

    .line 912
    .restart local v17    # "properFreq":I
    .restart local v20    # "supportedCPUFreqTable":[I
    .restart local v22    # "valueFreq":I
    :cond_29
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    goto/16 :goto_0

    .line 917
    .end local v17    # "properFreq":I
    .end local v20    # "supportedCPUFreqTable":[I
    .end local v22    # "valueFreq":I
    :cond_2a
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_2b

    .line 918
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 919
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 921
    :cond_2b
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    .line 922
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 923
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    goto/16 :goto_0
.end method

.method private sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .locals 4
    .param p1, "upstreamIface"    # Ljava/lang/String;
    .param p2, "tetheredIface"    # Ljava/lang/String;
    .param p3, "ip_type"    # I
    .param p4, "update_type"    # Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .prologue
    .line 932
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpstreamIfaceChangeBroadcast upstreamIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tetheredIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IP Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " update_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tetheringUpstreamIface"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string/jumbo v1, "tetheredClientIface"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string/jumbo v1, "tetheringUpstreamIpType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    const-string/jumbo v1, "tetheringUpstreamUpdateType"

    invoke-virtual {p4}, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 942
    return-void
.end method

.method private sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 1270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1273
    return-void
.end method

.method private setWifiApTxPowerMode(I)I
    .locals 8
    .param p1, "newValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 1248
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1249
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfigTxPower(I)Z

    .line 1251
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    if-eqz v5, :cond_0

    .line 1252
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.wifiap_tx_power_mode_changed"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "android.net.wifi.wifiap_tx_power_mode_value"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1254
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1256
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1257
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "wifi_ap_tx_power_changed_by_service"

    if-nez p1, :cond_2

    move v5, v6

    :goto_0
    invoke-static {v1, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1258
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 1259
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1260
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0xc3

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1262
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "txPower"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1263
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1264
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    .line 1266
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    return v6

    .line 1257
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 623
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040760

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 625
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x103012b

    :goto_0
    invoke-direct {v0, v3, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 626
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 627
    return-void

    .line 625
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    const v2, 0x1030128

    goto :goto_0
.end method

.method private showLowBatteryNotification()V
    .locals 13

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1148
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    if-nez v9, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1152
    :cond_0
    const v6, 0x108008a

    .line 1153
    .local v6, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1154
    .local v11, "r":Landroid/content/res/Resources;
    const-string v12, ""

    .line 1155
    .local v12, "title":Ljava/lang/CharSequence;
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1156
    .local v7, "mDeviceType":Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v0, "biscotto"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    const-string v12, "Battery is below 15%."

    .line 1161
    :goto_1
    const v0, 0x10407af

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1163
    .local v8, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1164
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1166
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1169
    .local v10, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-nez v0, :cond_1

    .line 1170
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    .line 1171
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput v6, v0, Landroid/app/Notification;->icon:I

    .line 1175
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1176
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v12, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1177
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v12, v8, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1179
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1159
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    :cond_2
    const v0, 0x10407ae

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1
.end method

.method private showTetheredNotification(I)V
    .locals 11
    .param p1, "icon"    # I

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 1019
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1025
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->ncmTethered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1026
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ncmTethered is :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/connectivity/Tethering;->ncmTethered:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", so it is not showing noti"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v0, :cond_4

    .line 1030
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-ne v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-nez v0, :cond_3

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    goto :goto_0

    .line 1039
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    .line 1040
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1044
    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 1045
    .local v9, "r":Landroid/content/res/Resources;
    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_9

    .line 1046
    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1047
    const v0, 0x10407ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1055
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_1
    const-string v0, "VZW"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SPRINT"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1056
    :cond_5
    const v0, 0x10407a9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1059
    :cond_6
    const v0, 0x104055d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1061
    .local v6, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1063
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "SBM"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1064
    const-string v0, "jp.softbank.mb.tether"

    const-string v1, "jp.softbank.mb.tether.TetherBootCheck"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    :goto_2
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1070
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1108
    .local v8, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v0, :cond_7

    .line 1109
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 1110
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1112
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1113
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1114
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1115
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1116
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->visibility:I

    .line 1117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1060058

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 1119
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1120
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-string/jumbo v1, "status"

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1049
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "message":Ljava/lang/CharSequence;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_8
    const v0, 0x10407ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1052
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_9
    const v0, 0x104055c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1066
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v6    # "message":Ljava/lang/CharSequence;
    :cond_a
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method private showTetheredVendorNotification(I)V
    .locals 11
    .param p1, "icon"    # I

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 946
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v0

    if-gtz v0, :cond_0

    .line 953
    const-string v0, "TMO"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NEWCO"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 955
    :cond_2
    const p1, 0x10808ce

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v0, :cond_5

    .line 959
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-ne v0, p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-eqz v0, :cond_0

    .line 962
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    .line 964
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 967
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 969
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x104055d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 971
    .local v6, "message":Ljava/lang/CharSequence;
    const-string v0, "SPRINT"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_9

    .line 972
    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 973
    const v0, 0x10407ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 981
    .local v10, "title":Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-nez v0, :cond_6

    .line 982
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    .line 983
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 987
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 988
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 990
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 993
    .local v8, "pi":Landroid/app/PendingIntent;
    const-string v0, "VZW"

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 994
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 995
    const v0, 0x10407aa

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1008
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1009
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1010
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1011
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1012
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1014
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 975
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_8
    const v0, 0x10407ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 978
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_9
    const v0, 0x10407aa

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 996
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    :cond_a
    const v0, 0x10808d1

    if-ne p1, v0, :cond_7

    .line 997
    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_c

    .line 998
    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 999
    const v0, 0x10407ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_2

    .line 1001
    :cond_b
    const v0, 0x10407ac

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1004
    :cond_c
    const v0, 0x10407ab

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_2
.end method

.method private tetherNcm(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    .line 1738
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    .line 1740
    .local v4, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1745
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 1746
    .local v3, "iface":Ljava/lang/String;
    const-string v7, "ncm0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1747
    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 1748
    .local v6, "result":I
    :goto_1
    if-nez v6, :cond_1

    .line 1754
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "result":I
    :goto_2
    return-void

    .line 1741
    :catch_0
    move-exception v1

    .line 1742
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1747
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v5    # "len$":I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 1745
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1753
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    const-string v7, "Tethering"

    const-string/jumbo v8, "unable start or stop Ncm tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private tetherUsb(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    .line 1639
    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    .line 1641
    .local v4, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1646
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 1647
    .local v3, "iface":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1648
    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 1649
    .local v6, "result":I
    :goto_1
    if-nez v6, :cond_1

    .line 1655
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "result":I
    :goto_2
    return-void

    .line 1642
    :catch_0
    move-exception v1

    .line 1643
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1648
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v5    # "len$":I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 1646
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1654
    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    const-string v7, "Tethering"

    const-string/jumbo v8, "unable start or stop USB tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public checkDunRequired()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 1961
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    if-eqz v3, :cond_1

    .line 1962
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->setOemDunRequired()V

    .line 1968
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_dun_required"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1970
    .local v1, "secureSetting":I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1972
    if-eq v1, v5, :cond_9

    .line 1973
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 1976
    .local v0, "requiredApn":I
    :cond_0
    if-ne v0, v2, :cond_5

    .line 1977
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1978
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2007
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1964
    .end local v1    # "secureSetting":I
    :cond_1
    const-string v3, "Tethering"

    const-string v4, "Boot not complete yet."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1980
    .restart local v0    # "requiredApn":I
    .restart local v1    # "secureSetting":I
    :cond_2
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1981
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1983
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1984
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1998
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1999
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 2007
    .end local v0    # "requiredApn":I
    :goto_4
    monitor-exit v3

    .line 2008
    return-void

    .line 1987
    .restart local v0    # "requiredApn":I
    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1988
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1990
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1991
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1993
    :cond_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1994
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2001
    :cond_8
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto :goto_4

    .line 2005
    .end local v0    # "requiredApn":I
    :cond_9
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method clearMaxApNotification()V
    .locals 3

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1234
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1235
    const v1, 0x10407b0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    .line 1238
    :cond_0
    return-void
.end method

.method createMaxApNotification()V
    .locals 14

    .prologue
    const v13, 0x10407b0

    const/4 v12, 0x0

    .line 1192
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1195
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    const v3, 0x108008a

    .line 1196
    .local v3, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1197
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1198
    .local v7, "title":Ljava/lang/String;
    const v10, 0x10407b1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "body":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1201
    .local v8, "when":J
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.net.wifi.MAXAP_NOTI"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v4, "notificationIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v10, v12, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1204
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1205
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1212
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1221
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    .line 1228
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    invoke-virtual {v5, v13, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1229
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3449
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3470
    :goto_0
    return-void

    .line 3457
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 3458
    :try_start_0
    const-string v3, "mUpstreamIfaceTypes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3460
    .local v1, "netType":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 3468
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netType":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3463
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3464
    const-string v3, "Tether state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3466
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3468
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3469
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public getCountTetheredIfaces()I
    .locals 7

    .prologue
    .line 2071
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2072
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    .line 2073
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2074
    .local v2, "keys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2075
    .local v1, "key":Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2076
    .local v4, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2077
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2080
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "keys":Ljava/util/Set;
    .end local v4    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2081
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    return v5

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 2052
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2054
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2055
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2056
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2057
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2058
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2061
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2062
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 2063
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 2064
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 2063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2066
    :cond_2
    return-object v5
.end method

.method public getKnoxValue(Landroid/net/Uri;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "findapi"    # Ljava/lang/String;
    .param p3, "address"    # I

    .prologue
    const/4 v2, 0x0

    .line 3502
    const/4 v7, 0x0

    .line 3503
    .local v7, "result":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3504
    .local v4, "stringAddress":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3505
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3507
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3508
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3513
    :cond_0
    return-object v7

    .line 3510
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "findapi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3485
    const/4 v7, 0x0

    .line 3486
    .local v7, "ret_value":Z
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3488
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3490
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3491
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 3492
    const/4 v7, 0x1

    .line 3495
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3498
    :cond_1
    return v7

    .line 3495
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 717
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 718
    if-nez v1, :cond_0

    .line 719
    const-string v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v2, 0x1

    monitor-exit v3

    .line 723
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 2030
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2031
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2032
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2033
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2034
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2035
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2036
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2039
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2040
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 2041
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 2042
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2044
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 2012
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 2014
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2015
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2016
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2017
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2018
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2021
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 2023
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 2024
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 2023
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2026
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 1842
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1843
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1844
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1845
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1846
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1847
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 1846
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    :cond_0
    monitor-exit v4

    .line 1850
    return-object v2

    .line 1849
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .locals 2

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 2092
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 545
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 546
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 549
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 550
    const/4 v0, 0x1

    .line 551
    const/4 v2, 0x1

    .line 553
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 554
    const/4 v0, 0x1

    .line 556
    :cond_2
    if-nez v0, :cond_3

    .line 558
    monitor-exit v4

    .line 570
    :goto_0
    return-void

    .line 561
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 562
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_4

    .line 564
    monitor-exit v4

    goto :goto_0

    .line 569
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 566
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 567
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 569
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 512
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 574
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 576
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    .line 580
    monitor-exit v2

    .line 585
    :goto_0
    return-void

    .line 582
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 583
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 478
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 479
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    const/4 v0, 0x1

    .line 487
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    monitor-exit v4

    .line 507
    :goto_1
    return-void

    .line 481
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    const/4 v0, 0x1

    .line 483
    const/4 v2, 0x1

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 490
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_5

    .line 491
    if-nez v1, :cond_4

    .line 492
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 493
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 506
    :cond_4
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 497
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_5
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 501
    if-eqz v1, :cond_4

    .line 502
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 503
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 535
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 537
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 534
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 538
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 526
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 528
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 525
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 529
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public makeDualServerStrings(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3436
    .local p1, "addrs1":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .local p2, "addrs2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v4, v5, [Ljava/lang/String;

    .line 3437
    .local v4, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 3438
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 3439
    .local v0, "addr":Ljava/net/InetAddress;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 3440
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 3441
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 3442
    .restart local v0    # "addr":Ljava/net/InetAddress;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .line 3443
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 3444
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    return-object v4
.end method

.method public setNcmTethering(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1758
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1760
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1761
    if-eqz p1, :cond_1

    .line 1762
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    if-eqz v1, :cond_0

    .line 1763
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V

    .line 1775
    :goto_0
    monitor-exit v2

    .line 1776
    return v4

    .line 1765
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z

    .line 1766
    const-string v1, "ncm"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1775
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1769
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V

    .line 1770
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    if-eqz v1, :cond_2

    .line 1771
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1773
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setOemDunRequired()V
    .locals 14

    .prologue
    .line 1855
    const-string v9, ""

    .line 1857
    .local v9, "numeric":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1858
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    if-nez v12, :cond_1

    .line 1859
    const-string v0, "Tethering"

    const-string v1, "No telephony manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 1864
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1865
    const-string v0, "Tethering"

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1869
    :cond_2
    const/4 v6, 0x0

    .line 1870
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1871
    .local v8, "isDunRequired":Z
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1874
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1876
    if-eqz v6, :cond_5

    .line 1878
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1881
    :cond_3
    const-string/jumbo v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1882
    .local v13, "types":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dun"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "default"

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1883
    const-string v0, "Tethering"

    const-string v1, "Dun type is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/4 v8, 0x1

    .line 1902
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1911
    .end local v13    # "types":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1944
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1946
    .local v10, "origIdentity":J
    if-eqz v8, :cond_8

    .line 1947
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tether_dun_required"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1948
    const-string v0, "Tethering"

    const-string v1, "Set dun requiered as 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1954
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1906
    .end local v10    # "origIdentity":J
    :catch_0
    move-exception v7

    .line 1907
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1911
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 1950
    .restart local v10    # "origIdentity":J
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tether_dun_required"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1954
    :catchall_1
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setUsbTethering(Z)I
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1781
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUsbTethering("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "usb"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    .line 1784
    .local v3, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 1786
    :try_start_0
    const-string v4, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    .line 1787
    const/16 v0, 0x14c

    .line 1788
    .local v0, "addressType":I
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string v6, "getSealedState"

    invoke-virtual {p0, v4, v6}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    .line 1789
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string v6, "getSealedUsbNetState"

    invoke-virtual {p0, v4, v6}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    .line 1790
    const/4 v2, 0x0

    .line 1791
    .local v2, "tempAddr":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->getSealedState:Z

    if-eqz v4, :cond_0

    .line 1792
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z

    if-eqz v4, :cond_0

    .line 1793
    const-string v4, "Tethering"

    const-string v6, "Set Sealed USB Net Destination Address"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string v6, "getSealedUsbNetAddress"

    invoke-virtual {p0, v4, v6, v0}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1796
    if-eqz v2, :cond_0

    .line 1797
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 1798
    sget-object v4, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    .line 1803
    :cond_0
    if-eqz p1, :cond_4

    .line 1804
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v4, :cond_1

    .line 1805
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1836
    :goto_0
    monitor-exit v5

    .line 1837
    return v7

    .line 1807
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1809
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1810
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v4, "enabled"

    const-string v6, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1811
    const-string v4, "Tethering"

    const-string v6, "[Tethering always mode] call tetherUsb()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string v4, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 1813
    const-string v4, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1822
    :cond_2
    const-string/jumbo v4, "rndis,acm,dm"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1836
    .end local v0    # "addressType":I
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "tempAddr":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1826
    .restart local v0    # "addressType":I
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "tempAddr":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "rndis"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1830
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 1831
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v4, :cond_5

    .line 1832
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1834
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 14
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 635
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v13, 0x0

    .line 637
    .local v13, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v13, v0

    .line 639
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 642
    .local v2, "uri":Landroid/net/Uri;
    const/4 v11, 0x1

    .line 643
    .local v11, "isBluetoothTetheringEnabled":Z
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isBluetoothTetheringEnabled"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 645
    .local v9, "cr":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 646
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 647
    const-string v1, "isBluetoothTetheringEnabled"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x1

    .line 649
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    const-string v1, "Tethering"

    const-string v3, "[ActiveSync] tether() Internet sharing has banned due to security policy."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 656
    const/16 v1, 0x14

    .line 693
    :goto_1
    return v1

    .line 639
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v9    # "cr":Landroid/database/Cursor;
    .end local v11    # "isBluetoothTetheringEnabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 647
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v9    # "cr":Landroid/database/Cursor;
    .restart local v11    # "isBluetoothTetheringEnabled":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 661
    :cond_2
    const/4 v12, 0x1

    .line 662
    .local v12, "isUSBTetheringEnabled":Z
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    .line 663
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "isUsbTetheringEnabled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 664
    .local v10, "cr_usb":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 665
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 666
    const-string v1, "isUsbTetheringEnabled"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v12, 0x1

    .line 667
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v12, :cond_5

    .line 671
    const-string v1, "Tethering"

    const-string v3, "Tethering USB is not allowed (MDM)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v1, 0x2

    goto :goto_1

    .line 666
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 673
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v11, :cond_6

    .line 674
    const-string v1, "Tethering"

    const-string v3, "Tethering Bluetooth is not allowed (MDM)"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v1, 0x2

    goto :goto_1

    .line 679
    :cond_6
    if-nez v13, :cond_7

    .line 680
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 683
    :cond_7
    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v13}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v1

    if-nez v1, :cond_8

    .line 684
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v1, 0x4

    goto/16 :goto_1

    .line 692
    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 693
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 697
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v1, 0x0

    .line 699
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 700
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 701
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    if-nez v1, :cond_0

    .line 703
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v2, 0x1

    .line 711
    :goto_0
    return v2

    .line 701
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 706
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v2, 0x4

    goto :goto_0

    .line 710
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 711
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 11

    .prologue
    .line 449
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107000f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 458
    .local v3, "ifaceTypes":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v8, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 460
    .local v1, "i":I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v10

    .line 464
    :try_start_0
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 465
    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 466
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 467
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 468
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 472
    return-void

    .line 468
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
