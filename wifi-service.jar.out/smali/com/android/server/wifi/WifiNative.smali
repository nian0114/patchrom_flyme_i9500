.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$1;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$HotlistEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$MonitorThread;
    }
.end annotation


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static DBG:Z = false

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field static final SCAN_WITHOUT_CONNECTION_SETUP:I = 0x1

.field static final SCAN_WITH_CONNECTION_SETUP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiNative-HAL"

.field public static final WIFI_NATIVE_CMD_AUTO_CONNECTION:I = 0x1

.field public static final WIFI_NATIVE_CMD_GET_BAND:I = 0xa2

.field public static final WIFI_NATIVE_CMD_GET_CCX_MODE:I = 0xae

.field public static final WIFI_NATIVE_CMD_GET_COUNTRY_REV:I = 0xa0

.field public static final WIFI_NATIVE_CMD_GET_DFS_SCAN_MODE:I = 0xa4

.field public static final WIFI_NATIVE_CMD_GET_FREQUENCY:I = 0x32

.field public static final WIFI_NATIVE_CMD_GET_OKC_MODE:I = 0xac

.field public static final WIFI_NATIVE_CMD_GET_ROAM_DELTA:I = 0x66

.field public static final WIFI_NATIVE_CMD_GET_ROAM_SCAN_CHANNELS:I = 0x6c

.field public static final WIFI_NATIVE_CMD_GET_ROAM_SCAN_CONTROL:I = 0x6a

.field public static final WIFI_NATIVE_CMD_GET_ROAM_SCAN_PERIOD:I = 0x68

.field public static final WIFI_NATIVE_CMD_GET_ROAM_TRIGGER:I = 0x64

.field public static final WIFI_NATIVE_CMD_GET_SCAN_CHANNEL_TIME:I = 0x82

.field public static final WIFI_NATIVE_CMD_GET_SCAN_HOME_AWAY_TIME:I = 0x86

.field public static final WIFI_NATIVE_CMD_GET_SCAN_HOME_TIME:I = 0x84

.field public static final WIFI_NATIVE_CMD_GET_SCAN_NPROBES:I = 0x88

.field public static final WIFI_NATIVE_CMD_GET_SIMCARDNUM:I = 0x36

.field public static final WIFI_NATIVE_CMD_GET_WES_MODE:I = 0xaa

.field public static final WIFI_NATIVE_CMD_GOOGLE_BACKUP:I = 0x3b

.field public static final WIFI_NATIVE_CMD_GOOGLE_RESTORE:I = 0x3c

.field public static final WIFI_NATIVE_CMD_HS20_CLEAR_BLACKLIST:I = 0x1e

.field public static final WIFI_NATIVE_CMD_HS20_ENABLE:I = 0x15

.field public static final WIFI_NATIVE_CMD_INIT:I = 0x0

.field public static final WIFI_NATIVE_CMD_KIES_BACKUP:I = 0x3d

.field public static final WIFI_NATIVE_CMD_KIES_RESTORE:I = 0x3e

.field public static final WIFI_NATIVE_CMD_LIST_CRED:I = 0xd7

.field public static final WIFI_NATIVE_CMD_LOAD_CRED:I = 0x16

.field public static final WIFI_NATIVE_CMD_LTECOEX:I = 0x41

.field public static final WIFI_NATIVE_CMD_MSAP_ENABLE:I = 0x45

.field public static final WIFI_NATIVE_CMD_MSAP_GAS_REQ:I = 0x42

.field public static final WIFI_NATIVE_CMD_MSAP_GAS_RESP:I = 0x43

.field public static final WIFI_NATIVE_CMD_MSAP_RESET:I = 0x44

.field public static final WIFI_NATIVE_CMD_NOTIFY_STATE_SCANONLY:I = 0x35

.field public static final WIFI_NATIVE_CMD_REASSOC:I = 0x96

.field public static final WIFI_NATIVE_CMD_RELOAD_HIDDEN_AP_LIST:I = 0xf0

.field public static final WIFI_NATIVE_CMD_RELOAD_SIM_STATE:I = 0x1b

.field public static final WIFI_NATIVE_CMD_REMOVE_CRED:I = 0x17

.field public static final WIFI_NATIVE_CMD_RMC_ENABLE:I = 0x1f

.field public static final WIFI_NATIVE_CMD_RMC_TXRATE:I = 0x20

.field public static final WIFI_NATIVE_CMD_SEND_ACTION_FRAME:I = 0x97

.field public static final WIFI_NATIVE_CMD_SET_2G5G_HANDOVER_BLACKLIST_CLEAR:I = 0xd3

.field public static final WIFI_NATIVE_CMD_SET_2G5G_HANDOVER_MODE:I = 0xd2

.field public static final WIFI_NATIVE_CMD_SET_2G5G_HANDOVER_SET_SCREEN_ON_OFF:I = 0xd5

.field public static final WIFI_NATIVE_CMD_SET_2G5G_HANDOVER_SET_WIFI_CONNECTED:I = 0xd4

.field public static final WIFI_NATIVE_CMD_SET_ALLOW_TO_CONNECT:I = 0x12

.field public static final WIFI_NATIVE_CMD_SET_AMPDU_MPDU:I = 0xa

.field public static final WIFI_NATIVE_CMD_SET_BAND:I = 0xa3

.field public static final WIFI_NATIVE_CMD_SET_CCX_MODE:I = 0xaf

.field public static final WIFI_NATIVE_CMD_SET_COUNTRY_REV:I = 0xa1

.field public static final WIFI_NATIVE_CMD_SET_DFS_SCAN_MODE:I = 0xa5

.field public static final WIFI_NATIVE_CMD_SET_ESTABLISH_SUP_CONNECTION:I = 0xd

.field public static final WIFI_NATIVE_CMD_SET_IBSS_AMPDU:I = 0x21

.field public static final WIFI_NATIVE_CMD_SET_IBSS_ANTENNA_MODE:I = 0x22

.field public static final WIFI_NATIVE_CMD_SET_MINIMIZE_RETRY:I = 0xc

.field public static final WIFI_NATIVE_CMD_SET_OKC_MODE:I = 0xad

.field public static final WIFI_NATIVE_CMD_SET_ROAM_DELTA:I = 0x67

.field public static final WIFI_NATIVE_CMD_SET_ROAM_OFFLOAD_AP_LIST:I = 0xdc

.field public static final WIFI_NATIVE_CMD_SET_ROAM_SCAN_CHANNELS:I = 0x6d

.field public static final WIFI_NATIVE_CMD_SET_ROAM_SCAN_CONTROL:I = 0x6b

.field public static final WIFI_NATIVE_CMD_SET_ROAM_SCAN_PERIOD:I = 0x69

.field public static final WIFI_NATIVE_CMD_SET_ROAM_TRIGGER:I = 0x65

.field public static final WIFI_NATIVE_CMD_SET_RPSMODE:I = 0x47

.field public static final WIFI_NATIVE_CMD_SET_SCAN_CHANNEL_TIME:I = 0x83

.field public static final WIFI_NATIVE_CMD_SET_SCAN_HOME_AWAY_TIME:I = 0x87

.field public static final WIFI_NATIVE_CMD_SET_SCAN_HOME_TIME:I = 0x85

.field public static final WIFI_NATIVE_CMD_SET_SCAN_NPROBES:I = 0x89

.field public static final WIFI_NATIVE_CMD_SET_TX_POWER_CALLING:I = 0x46

.field public static final WIFI_NATIVE_CMD_SET_WES_MODE:I = 0xab

.field public static final WIFI_NATIVE_CMD_SHARE_PROFILE_BACKUP:I = 0xbf

.field public static final WIFI_NATIVE_CMD_SHARE_PROFILE_RESTORE:I = 0xc0

.field public static final WIFI_NATIVE_CMD_SKIP_AUTO_CONNECTION:I = 0xe

.field public static final WIFI_NATIVE_CMD_STOP_PERIODIC_SCAN:I = 0xb

.field public static final WIFI_NATIVE_CMD_STR_PROBE_REQ:I = 0xb4

.field public static final WIFI_NATIVE_CMD_STR_PROBE_RESP:I = 0xb5

.field public static final WIFI_NATIVE_CMD_WIFI_CONNECTION_TYPE:I = 0x9

.field private static WIFI_SCAN_BUFFER_FULL:I

.field private static WIFI_SCAN_COMPLETE:I

.field private static final mLocalLog:Landroid/util/LocalLog;

.field static final mLock:Ljava/lang/Object;

.field private static sCmdId:I

.field private static sHalIsStarted:Z

.field private static sHotlistCmdId:I

.field private static sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private static sP2p0Index:I

.field private static sRttCmdId:I

.field private static sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private static sScanCmdId:I

.field private static sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private static sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private static sSignificantWifiChangeCmdId:I

.field private static sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

.field private static sWifiHalHandle:J

.field private static sWifiIfaceHandles:[J

.field private static sWlan0Index:I


# instance fields
.field public final P2P_GO_OPER_FREQ:I

.field public final mInterfaceName:Ljava/lang/String;

.field public final mInterfacePrefix:Ljava/lang/String;

.field private mIsTerminated:Z

.field private mSuspendOptEnabled:Z

.field private final mTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 52
    sput-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    .line 80
    const-string v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    .line 135
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    .line 1991
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    .line 1992
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    .line 1993
    sput v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 1994
    sput v3, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I

    .line 1996
    sput-boolean v2, Lcom/android/server/wifi/WifiNative;->sHalIsStarted:Z

    .line 2121
    sput v2, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_BUFFER_FULL:I

    .line 2122
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_COMPLETE:I

    .line 2175
    sput v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 2244
    sput v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/server/wifi/WifiNative;->P2P_GO_OPER_FREQ:I

    .line 71
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNative;->mSuspendOptEnabled:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNative;->mIsTerminated:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    .line 117
    const-string v0, "p2p0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    .line 124
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNative;->mIsTerminated:Z

    .line 125
    return-void

    .line 121
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    return-wide v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->waitForHalEventNative()V

    return-void
.end method

.method private static native cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method public static declared-synchronized cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 5
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .prologue
    const/4 v0, 0x0

    .line 2419
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2420
    :try_start_1
    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-nez v3, :cond_0

    .line 2421
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2428
    :goto_0
    monitor-exit v1

    return v0

    .line 2424
    :cond_0
    :try_start_2
    sget v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-static {v3, v4, p0}, Lcom/android/server/wifi/WifiNative;->cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2425
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2426
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 2430
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2419
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2428
    :cond_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private native closeSupplicantConnectionNative()V
.end method

.method private native connectToSupplicantNative()Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doBoolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiNative;->mIsTerminated:Z

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SKIP the command: doBoolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    .line 177
    :cond_1
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 178
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 179
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v1

    .line 181
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 182
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 184
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 191
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 194
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    monitor-exit v4

    return v1

    .line 196
    .end local v0    # "cmdId":I
    .end local v1    # "result":I
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_0

    .line 202
    const-string v3, "GET_NETWORK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doString: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 207
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 208
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 211
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v5, "doStringCommandNative no result"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    :goto_0
    monitor-exit v4

    return-object v1

    .line 213
    :cond_2
    const-string v3, "STATUS-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 216
    :cond_3
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, " "

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v0    # "cmdId":I
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "GET_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doString: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getChannelsForBand(I)[I
    .locals 3
    .param p0, "band"    # I

    .prologue
    .line 2449
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2450
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBandNative(II)[I

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2453
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 2455
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2449
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getChannelsForBandNative(II)[I
.end method

.method public static native getFwType()I
.end method

.method public static declared-synchronized getInterfaceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 2058
    const-class v0, Lcom/android/server/wifi/WifiNative;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native getInterfaceNameNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getInterfaces()I
    .locals 9

    .prologue
    .line 2034
    const-class v5, Lcom/android/server/wifi/WifiNative;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2035
    :try_start_1
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    if-nez v4, :cond_3

    .line 2036
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfacesNative()I

    move-result v2

    .line 2037
    .local v2, "num":I
    const/4 v3, 0x0

    .line 2038
    .local v3, "wifi_num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 2039
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;

    move-result-object v1

    .line 2040
    .local v1, "name":Ljava/lang/String;
    const-string v4, "WifiNative-HAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interface["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const-string v4, "wlan0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2042
    sput v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 2043
    add-int/lit8 v3, v3, 0x1

    .line 2038
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2044
    :cond_1
    const-string v4, "p2p0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2045
    sput v0, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I

    .line 2046
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2049
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2051
    .end local v0    # "i":I
    .end local v2    # "num":I
    .end local v3    # "wifi_num":I
    :goto_2
    monitor-exit v5

    return v3

    :cond_3
    :try_start_2
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    array-length v3, v4

    monitor-exit v6

    goto :goto_2

    .line 2053
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2034
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static native getInterfacesNative()I
.end method

.method private static getNewCmdIdLocked()I
    .locals 2

    .prologue
    .line 145
    sget v0, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    return v0
.end method

.method public static getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 1
    .param p0, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .prologue
    .line 2072
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z

    move-result v0

    return v0
.end method

.method private static native getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
.end method

.method public static declared-synchronized getScanResults()[Landroid/net/wifi/ScanResult;
    .locals 4

    .prologue
    .line 2235
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2236
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2237
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2235
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getScanResultsNative(IZ)[Landroid/net/wifi/ScanResult;
.end method

.method public static declared-synchronized getSupportedFeatureSet()I
    .locals 2

    .prologue
    .line 2379
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSetNative(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native getSupportedFeatureSetNative(I)I
.end method

.method public static declared-synchronized getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 4
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2344
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 2351
    :goto_0
    monitor-exit v1

    return-object v0

    .line 2345
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2346
    :try_start_1
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->sHalIsStarted:Z

    if-nez v3, :cond_1

    .line 2347
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    .line 2348
    :cond_1
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->sHalIsStarted:Z

    if-eqz v3, :cond_2

    .line 2349
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 2350
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2344
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2350
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static native getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
.end method

.method public static native isDriverLoaded()Z
.end method

.method public static native killSupplicant(Z)Z
.end method

.method public static native loadDriver()Z
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 8
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 336
    .local v0, "now":J
    const-string v3, "[%,d us] "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "ts":Ljava/lang/String;
    const-string v3, "WifiNative: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method static declared-synchronized onFullScanResult(ILandroid/net/wifi/ScanResult;[B)V
    .locals 12
    .param p0, "id"    # I
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bytes"    # [B

    .prologue
    .line 2137
    const-class v9, Lcom/android/server/wifi/WifiNative;

    monitor-enter v9

    :try_start_0
    sget-boolean v8, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WifiNative-HAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got a full scan results event, ssid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "num = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_0
    const/4 v6, 0x0

    .line 2141
    .local v6, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_1
    :goto_0
    array-length v8, p2

    if-ge v2, v8, :cond_4

    .line 2142
    add-int/lit8 v6, v6, 0x1

    .line 2143
    aget-byte v8, p2, v2

    and-int/lit16 v7, v8, 0xff

    .line 2144
    .local v7, "type":I
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v5, v8, 0xff

    .line 2145
    .local v5, "len":I
    if-gez v5, :cond_3

    .line 2146
    const-string v8, "WifiNative-HAL"

    const-string v10, "bad length; returning"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    .end local v5    # "len":I
    .end local v7    # "type":I
    :cond_2
    :goto_1
    monitor-exit v9

    return-void

    .line 2149
    .restart local v5    # "len":I
    .restart local v7    # "type":I
    :cond_3
    add-int/lit8 v8, v5, 0x2

    add-int/2addr v2, v8

    .line 2150
    :try_start_1
    sget-boolean v8, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "WifiNative-HAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "next = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2137
    .end local v2    # "i":I
    .end local v5    # "len":I
    .end local v6    # "num":I
    .end local v7    # "type":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 2154
    .restart local v2    # "i":I
    .restart local v6    # "num":I
    :cond_4
    :try_start_2
    new-array v1, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 2155
    .local v1, "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    if-ge v2, v6, :cond_7

    .line 2156
    aget-byte v8, p2, v3

    and-int/lit16 v7, v8, 0xff

    .line 2157
    .restart local v7    # "type":I
    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v5, v8, 0xff

    .line 2158
    .restart local v5    # "len":I
    sget-boolean v8, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "WifiNative-HAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", len = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_5
    new-instance v0, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 2160
    .local v0, "elem":Landroid/net/wifi/ScanResult$InformationElement;
    iput v7, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2161
    new-array v8, v5, [B

    iput-object v8, v0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 2162
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v5, :cond_6

    .line 2163
    iget-object v8, v0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    add-int v10, v3, v4

    add-int/lit8 v10, v10, 0x2

    aget-byte v10, p2, v10

    aput-byte v10, v8, v4

    .line 2162
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2165
    :cond_6
    aput-object v0, v1, v2

    .line 2166
    add-int/lit8 v8, v5, 0x2

    add-int/2addr v3, v8

    .line 2155
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2169
    .end local v0    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v4    # "j":I
    .end local v5    # "len":I
    .end local v7    # "type":I
    :cond_7
    iput-object v1, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 2170
    sget-object v8, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v8, :cond_2

    .line 2171
    sget-object v8, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v8, p1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public static declared-synchronized onHotlistApFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2281
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2282
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v0, :cond_0

    .line 2283
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V

    .line 2288
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2289
    monitor-exit v1

    return-void

    .line 2286
    :cond_0
    :try_start_2
    const-string v0, "WifiNative-HAL"

    const-string v3, "Ignoring hotlist AP found change"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2288
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2281
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized onRttResults(I[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    .prologue
    .line 2391
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-ne p0, v0, :cond_0

    .line 2392
    const-string v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rtt results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    .line 2394
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2398
    :goto_0
    monitor-exit v1

    return-void

    .line 2396
    :cond_0
    :try_start_1
    const-string v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event for unknown cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized onScanResultsAvailable(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 2115
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 2116
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanResultsAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    :cond_0
    monitor-exit v1

    return-void

    .line 2115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized onScanStatus(I)V
    .locals 4
    .param p0, "status"    # I

    .prologue
    .line 2125
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    const-string v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a scan status changed event, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    sget v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_BUFFER_FULL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v0, :cond_1

    .line 2134
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 2129
    :cond_1
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_COMPLETE:I

    if-ne p0, v0, :cond_0

    .line 2130
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 2131
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onSingleScanComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized onSignificantWifiChange(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 2332
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2333
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    if-eqz v0, :cond_0

    .line 2334
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;->onChangesFound([Landroid/net/wifi/ScanResult;)V

    .line 2339
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2340
    monitor-exit v1

    return-void

    .line 2337
    :cond_0
    :try_start_2
    const-string v0, "WifiNative-HAL"

    const-string v3, "Ignoring significant wifi change"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2339
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2332
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1274
    if-nez p1, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-object v7

    .line 1276
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1277
    .local v4, "peerInfo":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1278
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1280
    .local v6, "tokens":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1281
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 1282
    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1283
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1284
    .local v3, "nameValue":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 1285
    const/4 v7, 0x1

    aget-object v7, v3, v7

    goto :goto_0

    .line 1281
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized pauseScan()V
    .locals 4

    .prologue
    .line 2214
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2215
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 2216
    const-string v0, "WifiNative-HAL"

    const-string v3, "Pausing scan"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    .line 2218
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 2219
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused()V

    .line 2221
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2222
    monitor-exit v1

    return-void

    .line 2221
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2214
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native registerNatives()I
.end method

.method private static native requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method public static declared-synchronized requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 4
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .prologue
    .line 2407
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2408
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-eqz v0, :cond_0

    .line 2409
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2414
    :goto_0
    monitor-exit v1

    return v0

    .line 2411
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 2413
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2414
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 2415
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2407
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetHotlist()V
    .locals 4

    .prologue
    .line 2271
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2272
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v0, :cond_0

    .line 2273
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->resetHotlistNative(II)Z

    .line 2274
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 2275
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 2277
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2278
    monitor-exit v1

    return-void

    .line 2277
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2271
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native resetHotlistNative(II)Z
.end method

.method public static declared-synchronized restartScan()V
    .locals 4

    .prologue
    .line 2225
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2226
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 2227
    const-string v0, "WifiNative-HAL"

    const-string v3, "Restarting scan"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    sget-object v3, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    .line 2229
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V

    .line 2231
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2232
    monitor-exit v1

    return-void

    .line 2231
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2225
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native setFwType(I)Z
.end method

.method public static declared-synchronized setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .prologue
    const/4 v0, 0x0

    .line 2253
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2254
    :try_start_1
    sget v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v3, :cond_0

    .line 2255
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2266
    :goto_0
    monitor-exit v1

    return v0

    .line 2257
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v3

    sput v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 2260
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 2261
    sget v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v3, v4, p0}, Lcom/android/server/wifi/WifiNative;->setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2262
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 2263
    monitor-exit v2

    goto :goto_0

    .line 2267
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2253
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2266
    :cond_1
    const/4 v0, 0x1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static native setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
.end method

.method public static declared-synchronized setScanningMacOui([B)Z
    .locals 3
    .param p0, "oui"    # [B

    .prologue
    .line 2436
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2437
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setScanningMacOuiNative(I[B)Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2440
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 2442
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2436
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setScanningMacOuiNative(I[B)Z
.end method

.method public static declared-synchronized startHal()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2010
    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    :try_start_0
    const-string v3, "WifiNative-HAL"

    const-string v4, "startHal"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2012
    :try_start_1
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->sHalIsStarted:Z

    if-eqz v4, :cond_0

    .line 2013
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    :goto_0
    monitor-exit v2

    return v0

    .line 2014
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHalNative()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2015
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    .line 2016
    new-instance v1, Lcom/android/server/wifi/WifiNative$MonitorThread;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative$1;)V

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative$MonitorThread;->start()V

    .line 2017
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wifi/WifiNative;->sHalIsStarted:Z

    .line 2018
    monitor-exit v3

    goto :goto_0

    .line 2024
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2010
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2020
    :cond_1
    :try_start_4
    const-string v0, "WifiNative-HAL"

    const-string v4, "Could not start hal"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->sHalIsStarted:Z

    .line 2022
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private static native startHalNative()Z
.end method

.method public static native startOlsrd()Z
.end method

.method public static declared-synchronized startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 4
    .param p0, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    .line 2181
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2183
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v0, :cond_1

    .line 2184
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 2189
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 2191
    sput-object p0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 2192
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2194
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2195
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2196
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 2197
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2200
    :goto_1
    monitor-exit v1

    return v0

    .line 2185
    :cond_1
    :try_start_2
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2200
    :cond_2
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_1

    .line 2201
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2181
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z
.end method

.method public static native startSupplicant(Z)Z
.end method

.method public static declared-synchronized stopHal()V
    .locals 2

    .prologue
    .line 2028
    const-class v0, Lcom/android/server/wifi/WifiNative;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHalNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    monitor-exit v0

    return-void

    .line 2028
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native stopHalNative()V
.end method

.method public static native stopOlsrd()Z
.end method

.method public static declared-synchronized stopScan()V
    .locals 4

    .prologue
    .line 2205
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2206
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    .line 2207
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 2208
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 2209
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 2210
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2211
    monitor-exit v1

    return-void

    .line 2210
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2205
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native stopScanNative(II)Z
.end method

.method public static declared-synchronized trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .prologue
    const/4 v0, 0x0

    .line 2304
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2305
    :try_start_1
    sget v3, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    if-eqz v3, :cond_0

    .line 2306
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2317
    :goto_0
    monitor-exit v1

    return v0

    .line 2308
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v3

    sput v3, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    .line 2311
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .line 2312
    sget v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v3, v4, p0}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2313
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .line 2314
    monitor-exit v2

    goto :goto_0

    .line 2318
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2304
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2317
    :cond_1
    const/4 v0, 0x1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static native trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z
.end method

.method public static native unloadDriver()Z
.end method

.method static declared-synchronized untrackSignificantWifiChange()V
    .locals 4

    .prologue
    .line 2322
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2323
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    if-eqz v0, :cond_0

    .line 2324
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChangeNative(II)Z

    .line 2325
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    .line 2326
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .line 2328
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2329
    monitor-exit v1

    return-void

    .line 2328
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2322
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native untrackSignificantWifiChangeNative(II)Z
.end method

.method private native waitForEventNative()Ljava/lang/String;
.end method

.method private static native waitForHalEventNative()V
.end method


# virtual methods
.method public addNetwork()I
    .locals 1

    .prologue
    .line 309
    const-string v0, "ADD_NETWORK"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addP2pDeviceDetectedByNfc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_NEW_DEVICE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public bssFlush()V
    .locals 1

    .prologue
    .line 803
    const-string v0, "BSS_FLUSH 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 804
    return-void
.end method

.method public callSECApiBoolean(IZ)I
    .locals 6
    .param p1, "commandId"    # I
    .param p2, "arg"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1475
    const-string v1, "WifiNative-HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSECApiBoolean - ID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    sparse-switch p1, :sswitch_data_0

    .line 1512
    const-string v1, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invaild command id : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1515
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 1481
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STOP_PERIODIC_SCAN "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    const-string v1, "ON"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    const-string v1, "OFF"

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    .line 1484
    :sswitch_2
    const-string v1, "AUTO_CONN_ON"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1485
    .local v0, "result":Z
    if-eqz p2, :cond_3

    .line 1486
    const-string v1, "AUTO_CONN_ATT_HOTSPOT ON"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1490
    :goto_3
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 1488
    :cond_3
    const-string v1, "AUTO_CONN_ATT_HOTSPOT OFF"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 1494
    .end local v0    # "result":Z
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_CONNECTION_TYPE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_4

    const-string v1, "MANUAL"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    const-string v1, "AUTOMATIC"

    goto :goto_4

    :sswitch_4
    move v2, v3

    .line 1500
    goto :goto_0

    .line 1502
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVER "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_5

    const-string v1, "CHANGE_RL"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_5
    const-string v1, "RESTORE_RL"

    goto :goto_5

    .line 1504
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USE_NETWORK "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_6

    const-string v1, "ON"

    :goto_6
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_6
    const-string v1, "OFF"

    goto :goto_6

    .line 1506
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALLOW_TO_CONNECT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_7

    const-string v1, "YES"

    :goto_7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_7
    const-string v1, "NO"

    goto :goto_7

    .line 1508
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKIP_AUTO_CONN "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_8

    const-string v1, "ON"

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_8
    const-string v1, "OFF"

    goto :goto_8

    .line 1510
    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HOTSPOT20_ENABLE"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_9

    const-string v1, "ON"

    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    goto/16 :goto_0

    :cond_9
    const-string v1, "OFF"

    goto :goto_9

    .line 1477
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x9 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0xe -> :sswitch_8
        0x12 -> :sswitch_7
        0x15 -> :sswitch_9
        0x35 -> :sswitch_4
    .end sparse-switch
.end method

.method public callSECApiInt(II)I
    .locals 10
    .param p1, "commandId"    # I
    .param p2, "arg"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1519
    const-string v5, "WifiNative-HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callSECApiInt - ID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    sparse-switch p1, :sswitch_data_0

    .line 1601
    const-string v3, "WifiNative-HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaild command id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1604
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    :sswitch_1
    move v3, v4

    .line 1529
    goto :goto_0

    .line 1531
    :sswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER RPSMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1533
    :sswitch_3
    if-lt p2, v4, :cond_1

    const/16 v5, 0x20

    if-gt p2, v5, :cond_1

    .line 1534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER AMPDU_MPDU "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1535
    goto :goto_0

    .line 1537
    :sswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER LTECOEX "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1540
    :sswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETROAMTRIGGER "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1542
    :sswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETROAMDELTA "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1544
    :sswitch_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETROAMSCANPERIOD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1546
    :sswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETROAMSCANCONTROL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1548
    :sswitch_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETSCANCHANNELTIME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1550
    :sswitch_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETSCANHOMETIME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1552
    :sswitch_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETSCANHOMEAWAYTIME "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1554
    :sswitch_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETSCANNPROBES "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1556
    :sswitch_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETBAND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1558
    :sswitch_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETDFSSCANMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1560
    :sswitch_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETWESMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1562
    :sswitch_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETOKCMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1565
    :sswitch_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETCCXMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1572
    :sswitch_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETRMCENABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1577
    :sswitch_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETRMCTXRATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1582
    :sswitch_14
    div-int/lit8 v2, p2, 0xa

    .line 1583
    .local v2, "txchain":I
    rem-int/lit8 v1, p2, 0xa

    .line 1584
    .local v1, "rxchain":I
    if-lt v2, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v1, v9, :cond_2

    .line 1585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DRIVER SETIBSSANTENNAMODE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 1588
    goto/16 :goto_0

    .line 1591
    .end local v1    # "rxchain":I
    .end local v2    # "txchain":I
    :sswitch_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REMOVE_CRED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1594
    :sswitch_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2G_5G_HANDOVER "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1598
    :sswitch_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SECAPI RELOAD_SIM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1599
    .local v0, "booleanResult":Z
    if-nez v0, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 1521
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_3
        0x17 -> :sswitch_15
        0x1b -> :sswitch_17
        0x1f -> :sswitch_12
        0x20 -> :sswitch_13
        0x22 -> :sswitch_14
        0x41 -> :sswitch_4
        0x46 -> :sswitch_1
        0x47 -> :sswitch_2
        0x65 -> :sswitch_5
        0x67 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6b -> :sswitch_8
        0x83 -> :sswitch_9
        0x85 -> :sswitch_a
        0x87 -> :sswitch_b
        0x89 -> :sswitch_c
        0xa3 -> :sswitch_d
        0xa5 -> :sswitch_e
        0xab -> :sswitch_f
        0xad -> :sswitch_10
        0xaf -> :sswitch_11
        0xd2 -> :sswitch_16
    .end sparse-switch
.end method

.method public callSECApiString(ILjava/lang/String;)I
    .locals 8
    .param p1, "commandId"    # I
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1608
    const-string v4, "WifiNative-HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECApiString - ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    sparse-switch p1, :sswitch_data_0

    .line 1682
    const-string v2, "WifiNative-HAL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invaild command id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1685
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 1614
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KIES BACKUP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1617
    :sswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KIES RESTORE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1620
    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GOOGLE_BACKUP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1623
    :sswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GOOGLE_RESTORE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1627
    :sswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER SETROAMSCANCHANNELS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1629
    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER SENDACTIONFRAME "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1631
    :sswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER REASSOC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1633
    :sswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER SETCOUNTRYREV "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1638
    :sswitch_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSAP_GAS_REQUEST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1643
    :sswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSAP_RESET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1646
    :sswitch_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1647
    const-string v4, "P2P_SET PREQ"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1649
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P2P_SET PREQ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1651
    :sswitch_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 1652
    const-string v4, "P2P_SET PRESP"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1654
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P2P_SET PRESP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    :sswitch_d
    move v2, v3

    .line 1659
    goto/16 :goto_0

    .line 1662
    :sswitch_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RELOAD_HIDDENAP_LIST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1665
    :sswitch_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHARE_PROFILE BACKUP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1668
    :sswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHARE_PROFILE RESTORE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .line 1671
    :sswitch_11
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 1672
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1673
    .local v1, "temp":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_4

    .line 1674
    aget-char v4, v1, v0

    const/16 v5, 0x30

    if-eq v4, v5, :cond_3

    aget-char v4, v1, v0

    const/16 v5, 0x31

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 1675
    goto/16 :goto_0

    .line 1673
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1677
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER SETIBSSAMPDU "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v1    # "temp":[C
    :cond_5
    move v2, v3

    .line 1680
    goto/16 :goto_0

    .line 1610
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_11
        0x3b -> :sswitch_3
        0x3c -> :sswitch_4
        0x3d -> :sswitch_1
        0x3e -> :sswitch_2
        0x42 -> :sswitch_9
        0x44 -> :sswitch_a
        0x6d -> :sswitch_5
        0x96 -> :sswitch_7
        0x97 -> :sswitch_6
        0xa1 -> :sswitch_8
        0xb4 -> :sswitch_b
        0xb5 -> :sswitch_c
        0xbf -> :sswitch_f
        0xc0 -> :sswitch_10
        0xdc -> :sswitch_d
        0xf0 -> :sswitch_e
    .end sparse-switch
.end method

.method public callSECApiVoid(I)I
    .locals 9
    .param p1, "commandId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v4, -0x1

    .line 1689
    const-string v5, "WifiNative-HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callSECApiVoid - ID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    sparse-switch p1, :sswitch_data_0

    .line 1930
    const-string v3, "WifiNative-HAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaild command id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    :goto_0
    return v4

    .line 1694
    :sswitch_0
    const-string v3, "GET FREQUENCY"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1697
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    :sswitch_1
    move v4, v3

    .line 1706
    goto :goto_0

    .line 1710
    :sswitch_2
    const-string v3, "DRIVER GETROAMTRIGGER"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1711
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1712
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1714
    .local v2, "tokens":[Ljava/lang/String;
    :try_start_1
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1715
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 1716
    :catch_1
    move-exception v0

    .line 1717
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1725
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_3
    const-string v3, "DRIVER GETROAMDELTA"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1726
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1727
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1729
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_2
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1730
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    .line 1731
    :catch_2
    move-exception v0

    .line 1732
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1740
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_4
    const-string v3, "DRIVER GETROAMSCANPERIOD"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1741
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1742
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1744
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_3
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1745
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_0

    .line 1746
    :catch_3
    move-exception v0

    .line 1747
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1755
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_5
    const-string v3, "DRIVER GETROAMSCANCONTROL"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1757
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1759
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_4
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1760
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    goto/16 :goto_0

    .line 1761
    :catch_4
    move-exception v0

    .line 1762
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1770
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_6
    const-string v3, "DRIVER GETSCANCHANNELTIME"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1771
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1772
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1774
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_5
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1775
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    goto/16 :goto_0

    .line 1776
    :catch_5
    move-exception v0

    .line 1777
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1785
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_7
    const-string v3, "DRIVER GETSCANHOMETIME"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1786
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1787
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1789
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_6
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1790
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    goto/16 :goto_0

    .line 1791
    :catch_6
    move-exception v0

    .line 1792
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1800
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_8
    const-string v3, "DRIVER GETSCANHOMEAWAYTIME"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1801
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1802
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1804
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_7
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1805
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v4

    goto/16 :goto_0

    .line 1806
    :catch_7
    move-exception v0

    .line 1807
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1815
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_9
    const-string v3, "DRIVER GETSCANNPROBES"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1816
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1817
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1819
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_8
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1820
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    goto/16 :goto_0

    .line 1821
    :catch_8
    move-exception v0

    .line 1822
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1830
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_a
    const-string v3, "DRIVER GETBAND"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1831
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1832
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1834
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_9
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1835
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v4

    goto/16 :goto_0

    .line 1836
    :catch_9
    move-exception v0

    .line 1837
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1845
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_b
    const-string v3, "DRIVER GETDFSSCANMODE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1846
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1847
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1849
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_a
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1850
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    move-result v4

    goto/16 :goto_0

    .line 1851
    :catch_a
    move-exception v0

    .line 1852
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1860
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_c
    const-string v3, "DRIVER GETWESMODE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1861
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1862
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1864
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_b
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1865
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    move-result v4

    goto/16 :goto_0

    .line 1866
    :catch_b
    move-exception v0

    .line 1867
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1875
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_d
    const-string v3, "DRIVER GETOKCMODE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1876
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1877
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1879
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_c
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1880
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    move-result v4

    goto/16 :goto_0

    .line 1881
    :catch_c
    move-exception v0

    .line 1882
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1890
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_e
    const-string v3, "DRIVER GETCCXMODE"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1891
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1892
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1894
    .restart local v2    # "tokens":[Ljava/lang/String;
    :try_start_d
    array-length v3, v2

    if-ne v3, v8, :cond_0

    .line 1895
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    move-result v4

    goto/16 :goto_0

    .line 1896
    :catch_d
    move-exception v0

    .line 1897
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1903
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :sswitch_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Wifi_SupportSimSelectionForEapSimAka"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1904
    const-string v3, "GET SIMNUM"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    .restart local v1    # "stringResult":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1907
    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    move-result v4

    goto/16 :goto_0

    .line 1908
    :catch_e
    move-exception v0

    .line 1909
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 1916
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "stringResult":Ljava/lang/String;
    :sswitch_10
    const-string v5, "LOAD_CRED"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 1918
    :sswitch_11
    const-string v5, "HS20_CLEAR_BLACKLIST"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    move v4, v3

    goto/16 :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    .line 1921
    :sswitch_12
    const-string v5, "HANDOVER_BLACKLIST_CLEAR"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    move v4, v3

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_3

    .line 1926
    :sswitch_13
    const-string v5, "HANDOVER_SET_WIFI_CONNECTED"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_4
    move v4, v3

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto :goto_4

    .line 1690
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x16 -> :sswitch_10
        0x1e -> :sswitch_11
        0x32 -> :sswitch_0
        0x36 -> :sswitch_f
        0x64 -> :sswitch_2
        0x66 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6a -> :sswitch_5
        0x82 -> :sswitch_6
        0x84 -> :sswitch_7
        0x86 -> :sswitch_8
        0x88 -> :sswitch_9
        0xa2 -> :sswitch_a
        0xa4 -> :sswitch_b
        0xaa -> :sswitch_c
        0xac -> :sswitch_d
        0xae -> :sswitch_e
        0xd3 -> :sswitch_12
        0xd4 -> :sswitch_13
    .end sparse-switch
.end method

.method public callSECStringApiVoid(I)Ljava/lang/String;
    .locals 8
    .param p1, "commandId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v6, 0x14

    const/16 v5, 0xe

    .line 1937
    const-string v2, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSECStringApiVoid - ID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    sparse-switch p1, :sswitch_data_0

    .line 1968
    const-string v2, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invaild command id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_0
    :goto_0
    return-object v1

    .line 1941
    :sswitch_0
    const-string v1, ""

    goto :goto_0

    .line 1945
    :sswitch_1
    const-string v2, "DRIVER GETROAMSCANCHANNELS"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1946
    .local v0, "stringResult":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1947
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GETROAMSCANCHANNELS "

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1949
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1957
    .end local v0    # "stringResult":Ljava/lang/String;
    :sswitch_2
    const-string v2, "DRIVER GETCOUNTRYREV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    .restart local v0    # "stringResult":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1959
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GETCOUNTRYREV "

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1961
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1939
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6c -> :sswitch_1
        0xa0 -> :sswitch_2
    .end sparse-switch
.end method

.method public cancelWps()Z
    .locals 1

    .prologue
    .line 876
    const-string v0, "WPS_CANCEL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearBlacklist()Z
    .locals 1

    .prologue
    .line 721
    const-string v0, "BLACKLIST clear"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public closeSupplicantConnection()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closeSupplicantConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnectionNative()V

    .line 164
    return-void
.end method

.method public connectToSupplicant()Z
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mIsTerminated:Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectToSupplicant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->connectToSupplicantNative()Z

    move-result v0

    return v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disableNetworkWithReason(II)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 377
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DISCONNECT "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 378
    :cond_0
    const-string v0, "DISCONNECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableAutoConnect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 749
    if-eqz p1, :cond_0

    .line 750
    const-string v0, "STA_AUTOCONNECT 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    const-string v0, "STA_AUTOCONNECT 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public enableBackgroundScan(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 741
    if-eqz p1, :cond_0

    .line 742
    const-string v0, "SET pno 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    const-string v0, "SET pno 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 346
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " disableOthers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 348
    :cond_0
    if-eqz p2, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 351
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableSaveConfig()V
    .locals 1

    .prologue
    .line 708
    const-string v0, "SET update_config 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 709
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 128
    if-lez p1, :cond_0

    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    goto :goto_0
.end method

.method public fetchAnqp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "subtypes"    # Ljava/lang/String;

    .prologue
    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANQP_GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBand()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 658
    const-string v4, "DRIVER GETBAND"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 661
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 668
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 664
    .restart local v2    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getBatchedScanResults()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    const-string v0, "DRIVER WLS_BATCHING GET"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBssInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 4

    .prologue
    .line 577
    const-string v2, "DRIVER GETCOUNTRYREV"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getFreqCapability()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, "GET_CAPABILITY freq"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullRoamScanPeriod()I
    .locals 4

    .prologue
    .line 562
    const-string v2, "DRIVER GETFULLROAMSCANPERIOD"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 569
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return v2

    .line 567
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 569
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1249
    const/4 v2, 0x0

    .line 1250
    .local v2, "gc":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1266
    .end local v2    # "gc":I
    :cond_0
    :goto_0
    return v2

    .line 1251
    .restart local v2    # "gc":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1252
    .local v6, "peerInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1254
    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1255
    .local v8, "tokens":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 1256
    .local v7, "token":Ljava/lang/String;
    const-string v9, "group_capab="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1257
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1258
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1260
    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1261
    :catch_0
    move-exception v1

    .line 1262
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1255
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getLinkStatus()I
    .locals 4

    .prologue
    .line 587
    const-string v2, "DRIVER GETLINKSTATUS"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 594
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return v2

    .line 592
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 594
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLocalLog()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    const-string v2, "DRIVER MACADDR"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 400
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    const-string v0, "NFC_GET_HANDOVER_REQ NDEF P2P-CR"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2366
    const-string v0, "NFC_GET_HANDOVER_SEL NDEF P2P-CR"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcWpsConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_NFC_CONFIG_TOKEN WPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamDelta()I
    .locals 4

    .prologue
    .line 528
    const-string v2, "DRIVER GETROAMDELTA"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 535
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return v2

    .line 533
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 535
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getRoamScanPeriod()I
    .locals 4

    .prologue
    .line 543
    const-string v2, "DRIVER GETROAMSCANPERIOD"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 550
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return v2

    .line 548
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 550
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getRoamTrigger()I
    .locals 4

    .prologue
    .line 513
    const-string v2, "DRIVER GETROAMTRIGGER"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "tokens":[Ljava/lang/String;
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 520
    .end local v1    # "tokens":[Ljava/lang/String;
    :goto_0
    return v2

    .line 518
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 520
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getSecuredNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEC_GET_SECURED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "selectMessage"    # Ljava/lang/String;

    .prologue
    .line 2370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NFC_REPORT_HANDOVER INIT P2P 00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listNetworks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "LIST_NETWORKS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public msapGasResponseGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 2466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSAP_GAS_RESPONSE_GET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2467
    .local v0, "stringGasResp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2468
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSAP_GAS_RESPONSE_GET stringGasResp.length()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    .end local v0    # "stringGasResp":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "stringGasResp":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pCancelConnect()Z
    .locals 1

    .prologue
    .line 1139
    const-string v0, "P2P_CANCEL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .prologue
    .line 1073
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 1135
    :goto_0
    return-object v6

    .line 1074
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1076
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 1115
    :goto_1
    :pswitch_0
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    .line 1116
    const-string v6, "persistent"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    :cond_1
    if-eqz p2, :cond_3

    .line 1121
    const-string v6, "join"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    :goto_2
    const-string v1, "P2P_CONNECT "

    .line 1133
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1080
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :pswitch_1
    const-string v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1083
    :pswitch_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1084
    const-string v6, "pin"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    :goto_4
    const-string v6, "display"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1086
    :cond_2
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1091
    :pswitch_3
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string v6, "keypad"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1095
    :pswitch_4
    iget-object v6, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    const-string v6, "label"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1099
    :pswitch_5
    const-string v6, "pbc"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    const-string v6, "userReject"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1125
    :cond_3
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1126
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_4

    const/16 v6, 0xf

    if-le v2, v6, :cond_5

    .line 1127
    :cond_4
    const/4 v2, 0x6

    .line 1129
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "go_intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1135
    .end local v2    # "groupOwnerIntent":I
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public p2pExtListen(ZII)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "period"    # I
    .param p3, "interval"    # I

    .prologue
    .line 1032
    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_EXT_LISTEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public p2pFind()Z
    .locals 1

    .prologue
    .line 971
    const-string v0, "P2P_FIND"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFind(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 975
    if-gtz p1, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 978
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pFind(II)Z
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "channelNum"    # I

    .prologue
    .line 982
    if-nez p2, :cond_0

    .line 983
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    move-result v0

    .line 999
    :goto_0
    return v0

    .line 985
    :cond_0
    const/16 v0, 0x64b

    if-ne p2, v0, :cond_1

    .line 986
    const-string v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 987
    const-string v0, "P2P_FIND type=social"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 989
    :cond_1
    if-lez p2, :cond_2

    const/16 v0, 0xa9

    if-gt p2, v0, :cond_2

    .line 990
    const-string v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 994
    :cond_2
    const/16 v0, -0x3e7

    if-ne p2, v0, :cond_3

    .line 995
    const-string v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_FIND type=frequency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 999
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p2pFlush()Z
    .locals 1

    .prologue
    .line 1063
    const-string v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFlushFind(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1004
    const-string v1, "WifiNative"

    const-string v2, "p2pFlushFind enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v1, "P2P_FLUSH"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1007
    if-gtz p1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pFind()Z

    move-result v0

    .line 1013
    :goto_0
    return v0

    .line 1011
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P_FIND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1012
    .local v0, "result":Z
    const-string v1, "WifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p2pFlushFind result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1220
    const-string v8, "WifiNative-HAL"

    const-string v9, "p2pGetDeviceAddress"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v5, 0x0

    .line 1227
    .local v5, "status":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1228
    :try_start_0
    const-string v8, "STATUS"

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1229
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    const-string v4, ""

    .line 1232
    .local v4, "result":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1233
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1234
    .local v7, "tokens":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 1235
    .local v6, "token":Ljava/lang/String;
    const-string v8, "p2p_device_address="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1236
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "nameValue":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 1244
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "nameValue":[Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "tokens":[Ljava/lang/String;
    :cond_0
    const-string v8, "WifiNative-HAL"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p2pGetDeviceAddress returning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-object v4

    .line 1229
    .end local v4    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1239
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "nameValue":[Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v6    # "token":Ljava/lang/String;
    .restart local v7    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    aget-object v4, v3, v8

    .line 1234
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string v0, "oper_ssid"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiNative;->p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_GROUP_ADD persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    .prologue
    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    const-string v0, "P2P_GROUP_ADD persistent"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 1171
    :goto_0
    return v0

    :cond_0
    const-string v0, "P2P_GROUP_ADD"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1181
    :goto_0
    return v0

    .line 1180
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P2P_GROUP_REMOVE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1197
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1202
    :goto_0
    return v0

    .line 1199
    :cond_0
    if-nez p1, :cond_1

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1202
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " go_dev_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pListen()Z
    .locals 1

    .prologue
    .line 1021
    const-string v0, "P2P_LISTEN"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 1025
    if-gtz p1, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pListen()Z

    move-result v0

    .line 1028
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x0

    .line 1143
    if-nez p1, :cond_0

    .line 1164
    :goto_0
    :pswitch_0
    return v0

    .line 1145
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, v1, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1147
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pbc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1150
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keypad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1153
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1160
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userReject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 1145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v0

    .line 1187
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_REMOVE_CLIENT iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SERV_DISC_CANCEL_REQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 1354
    const-string v0, "P2P_SERV_DISC_REQ"

    .line 1355
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 5
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 1312
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1313
    .local v2, "s":Ljava/lang/String;
    const-string v0, "P2P_SERVICE_ADD"

    .line 1314
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1316
    const/4 v3, 0x0

    .line 1319
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 8
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1327
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1328
    .local v3, "s":Ljava/lang/String;
    const-string v0, "P2P_SERVICE_DEL "

    .line 1330
    .local v0, "command":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1331
    .local v1, "data":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 1346
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 1334
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v1    # "data":[Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_2
    const-string v6, "upnp"

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 1336
    :cond_3
    const-string v6, "bonjour"

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1337
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 1346
    goto :goto_0
.end method

.method public p2pServiceFlush()Z
    .locals 1

    .prologue
    .line 1350
    const-string v0, "P2P_SERVICE_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetChannel(II)Z
    .locals 6
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1040
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pSetChannel: lc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    if-lt p1, v5, :cond_2

    const/16 v2, 0xb

    if-gt p1, v2, :cond_2

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P2P_SET listen_channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1059
    :cond_1
    :goto_0
    return v1

    .line 1046
    :cond_2
    if-nez p1, :cond_1

    .line 1050
    :cond_3
    if-lt p2, v5, :cond_5

    const/16 v2, 0xa5

    if-gt p2, v2, :cond_5

    .line 1051
    const/16 v1, 0xe

    if-gt p2, v1, :cond_4

    const/16 v1, 0x967

    :goto_1
    mul-int/lit8 v2, p2, 0x5

    add-int v0, v1, v2

    .line 1052
    .local v0, "freq":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P_SET disallow_freq 1000-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-6000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1051
    .end local v0    # "freq":I
    :cond_4
    const/16 v1, 0x1388

    goto :goto_1

    .line 1054
    :cond_5
    if-nez p2, :cond_1

    .line 1056
    const-string v1, "P2P_SET disallow_freq \"\""

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public p2pStopFind()Z
    .locals 1

    .prologue
    .line 1017
    const-string v0, "P2P_STOP_FIND"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public partialScan(Ljava/lang/String;)Z
    .locals 2
    .param p1, "freqs"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCAN_FREQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ping()Z
    .locals 2

    .prologue
    .line 235
    const-string v1, "PING"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "pong":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "PONG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pktcntPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    const-string v0, "PKTCNT_POLL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "REASSOCIATE "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 373
    :cond_0
    const-string v0, "REASSOCIATE"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RECONNECT "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 368
    :cond_0
    const-string v0, "RECONNECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetScanTimer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    const-string v0, "RESET_TIMER"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetScanTimer(Z)Ljava/lang/String;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 799
    if-eqz p1, :cond_0

    const-string v0, "RESET_TIMER 1"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "RESET_TIMER 0"

    goto :goto_0
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "requestMessage"    # Ljava/lang/String;

    .prologue
    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NFC_REPORT_HANDOVER RESP P2P "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s69_data_request(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "totalreq"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v2, "s69 data request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S69_DATA 00:00:00:00:00:00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "request":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public s69_disable()Z
    .locals 3

    .prologue
    .line 247
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v2, "s69 disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    const-string v1, "DRIVER CCX_S69_ENABLE 0"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public s69_enable()Z
    .locals 3

    .prologue
    .line 241
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string v2, "s69 enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    const-string v1, "DRIVER CCX_S69_ENABLE 1"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public s69_request(Ljava/lang/String;)Z
    .locals 5
    .param p1, "location_request"    # Ljava/lang/String;

    .prologue
    .line 253
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s69 request  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRIVER CCX_S69_REQUEST "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "request":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "status":Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveConfig()Z
    .locals 1

    .prologue
    .line 712
    const-string v0, "SAVE_CONFIG"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scan(ILjava/lang/String;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "freqList"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 275
    if-nez p2, :cond_0

    const-string v0, "SCAN TYPE=ONLY"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 279
    :goto_0
    return v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCAN TYPE=ONLY freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 278
    if-nez p2, :cond_2

    const-string v0, "SCAN"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCAN freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 281
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scan type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanResults(I)Ljava/lang/String;
    .locals 2
    .param p1, "sid"    # I

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BSS RANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "- MASK=0x21987"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBand(I)Z
    .locals 2
    .param p1, "band"    # I

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETBAND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;
    .locals 7
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    const v6, 0x7fffffff

    .line 472
    if-nez p1, :cond_0

    .line 473
    const-string v4, "DRIVER WLS_BATCHING STOP"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 492
    :goto_0
    return-object v4

    .line 475
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRIVER WLS_BATCHING SET SCANFREQ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MSCAN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v4, v6, :cond_1

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BESTN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CHANNEL=<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    const/4 v2, 0x0

    .line 483
    .local v2, "i":I
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    .local v0, "channel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v2, :cond_2

    const-string v4, ","

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    add-int/lit8 v2, v2, 0x1

    .line 486
    goto :goto_1

    .line 484
    :cond_2
    const-string v4, ""

    goto :goto_2

    .line 487
    .end local v0    # "channel":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v4, v6, :cond_5

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RTT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER BTCOEXMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Z)Z
    .locals 1
    .param p1, "setCoexScanMode"    # Z

    .prologue
    .line 700
    if-eqz p1, :cond_0

    .line 701
    const-string v0, "DRIVER BTCOEXSCAN-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 703
    :goto_0
    return v0

    :cond_0
    const-string v0, "DRIVER BTCOEXSCAN-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setConcurrencyPriority(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P2P_SET conc_pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET config_methods "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER COUNTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETCOUNTRYREV "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setExternalSim(Z)Z
    .locals 5
    .param p1, "external"    # Z

    .prologue
    .line 856
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 857
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "1"

    .line 858
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting external_sim to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET external_sim "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 857
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFullRoamScanPeriod(I)Z
    .locals 2
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETFULLROAMSCANPERIOD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHandoverScreen(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 932
    if-eqz p1, :cond_0

    .line 933
    const-string v0, "HANDOVER_SET_SCREEN ON"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 937
    :goto_0
    return-void

    .line 935
    :cond_0
    const-string v0, "HANDOVER_SET_SCREEN OFF"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET manufacturer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER MIRACAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1982
    return-void
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET model_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET model_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 917
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SET p2p_group_idle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 940
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 941
    if-eqz p2, :cond_0

    .line 942
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P2P_SET ps 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 944
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " P2P_SET ps 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET p2p_ssid_postfix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPersistentReconnect(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 880
    if-ne p1, v0, :cond_0

    .line 881
    .local v0, "value":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 880
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPowerSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 923
    if-eqz p1, :cond_0

    .line 924
    const-string v0, "SET ps 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    const-string v0, "SET ps 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setRoamDelta(I)Z
    .locals 2
    .param p1, "roamDelta"    # I

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMDELTA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRoamMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 2
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMSCANPERIOD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 2
    .param p1, "roamTrigger"    # I

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRIVER SETROAMTRIGGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "scanInterval"    # I

    .prologue
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCAN_INTERVAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 758
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET serial_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSupplicantLogLevel(Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOG_LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 726
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNative;->mSuspendOptEnabled:Z

    .line 728
    const-string v0, "native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do suspend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    if-eqz p1, :cond_0

    .line 730
    const-string v0, "DRIVER SETSUSPENDMODE 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 732
    :goto_0
    return v0

    :cond_0
    const-string v0, "DRIVER SETSUSPENDMODE 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFD_SUBELEM_SET 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SET wifi_display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public signalPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    const-string v0, "SIGNAL_POLL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simAuthResponse(ILjava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 864
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTRL-RSP-SIM-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":GSM-AUTH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDriver()Z
    .locals 1

    .prologue
    .line 500
    const-string v0, "DRIVER START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 622
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-REMOVE 2"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 642
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-REMOVE 3"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 761
    if-eqz p2, :cond_0

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDLS_DISCOVER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 764
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDLS_SETUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 773
    :goto_1
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 771
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDLS_TEARDOWN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "WPS_PBC"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 810
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PBC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 815
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PBC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    .line 819
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PBC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const-string v0, "WPS_PIN any"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 846
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PIN any"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 850
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 832
    :goto_0
    return v0

    .line 831
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 832
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WPS_PIN any "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WPS_REG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public status(Z)Ljava/lang/String;
    .locals 1
    .param p1, "noEvents"    # Z

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 387
    const-string v0, "STATUS-NO_EVENTS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "STATUS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public stopDriver()Z
    .locals 1

    .prologue
    .line 504
    const-string v0, "DRIVER STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 632
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-ADD 2"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 652
    const-string v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-ADD 3"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopSupplicant()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 296
    const-string v1, "TERMINATE"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mIsTerminated:Z

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->waitForEventNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
