.class public Lcom/android/server/wifi/WifiAutoJoinController;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"


# static fields
.field public static final AUTO_JOIN_EXTENDED_ROAMING:I = 0x2

.field public static final AUTO_JOIN_IDLE:I = 0x0

.field public static final AUTO_JOIN_OUT_OF_NETWORK_ROAMING:I = 0x3

.field public static final AUTO_JOIN_ROAMING:I = 0x1

.field private static DBG:Z = false

.field public static final HIGH_THRESHOLD_MODIFIER:I = 0x5

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WifiAutoJoinController "

.field private static VDBG:Z = false

.field private static final loseBlackListHardMilli:J = 0x1b77400L

.field private static final loseBlackListSoftMilli:J = 0x1b7740L

.field public static mScanResultMaximumAge:I

.field private static final mStaStaSupported:Z


# instance fields
.field didBailDueToWeakRssi:Z

.field didOverride:Z

.field lastUntrustedBSSID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigurationKey:Ljava/lang/String;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private scanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private scoreManager:Landroid/net/NetworkScoreManager;

.field weakRssiBailCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    const v0, 0x9c40

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "s"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "st"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "n"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->lastUntrustedBSSID:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    iput v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iput-object p5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    iput-object p4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-nez v0, :cond_0

    const-string v0, "Registered scoreManager NULL  service network_score"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No network score service: Couldnt register as a WiFi score Manager, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private ageScanResultsOut(I)V
    .locals 10
    .param p1, "delay"    # I

    .prologue
    if-gtz p1, :cond_0

    sget p1, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "milli":J
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ageScanResultsOut delay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v6, v4, Landroid/net/wifi/ScanResult;->seen:J

    int-to-long v8, p1

    add-long/2addr v6, v8

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    return-void
.end method

.method private compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "lastSelectedConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    if-nez p1, :cond_1

    const/4 v1, -0x3

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    const/16 v1, 0x3e8

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, -0x2

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareNetwork will compare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsTop(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .local v1, "order":I
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, -0x64

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     ...and prefers -100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is the last selected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x64

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     ...and prefers +100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is the last selected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method addToScanCache(Ljava/util/List;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v13, 0x0

    .local v13, "numScanResultsKnown":I
    const/4 v6, 0x0

    .local v6, "associatedConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .local v8, "didAssociate":Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .local v21, "unknownScanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, "nowMs":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/ScanResult;

    .local v18, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/ScanResult;

    .local v20, "sr":Landroid/net/wifi/ScanResult;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v24, v0

    sget v26, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v23

    if-nez v23, :cond_7

    :try_start_0
    new-instance v22, Landroid/net/WifiKey;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .local v22, "wkey":Landroid/net/WifiKey;
    :goto_1
    if-eqz v22, :cond_2

    new-instance v12, Landroid/net/NetworkKey;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .local v12, "nkey":Landroid/net/NetworkKey;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v12    # "nkey":Landroid/net/NetworkKey;
    :cond_2
    sget-boolean v23, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v23, :cond_4

    const-string v7, ""

    .local v7, "cap":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " rssi="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " cap "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is not scored"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v7    # "cap":Ljava/lang/String;
    .end local v22    # "wkey":Landroid/net/WifiKey;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateSavedNetworkHistory(Landroid/net/wifi/ScanResult;)Z

    move-result v8

    if-nez v8, :cond_9

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/net/wifi/ScanResult;->untrusted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->associateWithConfiguration(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    sget-boolean v23, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v23, :cond_5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addToScanCache save associated config "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " with "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v23, v0

    const v24, 0x20092

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    const/4 v8, 0x1

    :cond_6
    :goto_3
    if-eqz v8, :cond_a

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/IllegalArgumentException;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "AutoJoinController: received badly encoded SSID=["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "] ->skipping this network"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    const/16 v22, 0x0

    .restart local v22    # "wkey":Landroid/net/WifiKey;
    goto/16 :goto_1

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v22    # "wkey":Landroid/net/WifiKey;
    :cond_7
    sget-boolean v23, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v23, :cond_4

    const-string v7, ""

    .restart local v7    # "cap":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v19

    .local v19, "score":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " rssi="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " cap "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is scored : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v7    # "cap":Ljava/lang/String;
    .end local v19    # "score":I
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "now":J
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    move-wide/from16 v24, v0

    sub-long v24, v14, v24

    const-wide/32 v26, 0x1b77400

    cmp-long v23, v24, v26

    if-lez v23, :cond_6

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto/16 :goto_3

    .end local v14    # "now":J
    :cond_a
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .end local v18    # "result":Landroid/net/wifi/ScanResult;
    .end local v20    # "sr":Landroid/net/wifi/ScanResult;
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-eqz v23, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Landroid/net/NetworkKey;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/net/NetworkKey;

    .local v11, "newKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .end local v11    # "newKeys":[Landroid/net/NetworkKey;
    :cond_c
    return v13
.end method

.method attemptAutoJoin()V
    .locals 50

    .prologue
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    const/16 v30, 0x0

    .local v30, "networkSwitchType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v24

    .local v24, "lastSelectedConfiguration":Ljava/lang/String;
    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v15

    .local v15, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v9, 0x0

    .local v9, "candidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v46, v0

    const/16 v47, 0xbb8

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v28

    .local v28, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v28, :cond_1

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin nothing known="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/wifi/WifiConfigStore;->getconfiguredNetworkSize()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v45

    .local v45, "val":Ljava/lang/String;
    if-nez v45, :cond_2

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_0

    const-string v46, "attemptAutoJoin() val = null!"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v46, "\\r?\\n"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .local v42, "status":[Ljava/lang/String;
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_3

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin() status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " split="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    const/16 v43, -0x1

    .local v43, "supplicantNetId":I
    move-object/from16 v6, v42

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    aget-object v22, v6, v19

    .local v22, "key":Ljava/lang/String;
    const/16 v46, 0x0

    const-string v47, "id="

    const/16 v48, 0x0

    const/16 v49, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v46

    move-object/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v46

    if-eqz v46, :cond_4

    const/16 v20, 0x3

    .local v20, "idx":I
    const/16 v43, 0x0

    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v46

    move/from16 v0, v20

    move/from16 v1, v46

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .local v8, "c":C
    const/16 v46, 0x30

    move/from16 v0, v46

    if-lt v8, v0, :cond_6

    const/16 v46, 0x39

    move/from16 v0, v46

    if-gt v8, v0, :cond_6

    mul-int/lit8 v43, v43, 0xa

    add-int/lit8 v46, v8, -0x30

    add-int v43, v43, v46

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .end local v8    # "c":C
    .end local v20    # "idx":I
    :cond_4
    const-string v46, "wpa_state=ASSOCIATING"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_5

    const-string v46, "wpa_state=ASSOCIATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_5

    const-string v46, "wpa_state=FOUR_WAY_HANDSHAKE"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_5

    const-string v46, "wpa_state=GROUP_KEY_HANDSHAKE"

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_6

    :cond_5
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin: bail out due to sup state "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .end local v22    # "key":Ljava/lang/String;
    :cond_7
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_a

    const-string v10, ""

    .local v10, "conf":Ljava/lang/String;
    const-string v23, ""

    .local v23, "last":Ljava/lang/String;
    if-eqz v15, :cond_8

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " current="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_8
    if-eqz v24, :cond_9

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " last="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_9
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin() num recent config "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " ---> suppNetId="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v10    # "conf":Ljava/lang/String;
    .end local v23    # "last":Ljava/lang/String;
    :cond_a
    if-eqz v15, :cond_f

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    move/from16 v0, v43

    move/from16 v1, v46

    if-eq v0, v1, :cond_b

    const/16 v46, -0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-eq v0, v1, :cond_b

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_b

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin() ERROR wpa_supplicant out of sync nid="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " WifiStateMachine="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    :cond_c
    const/16 v16, -0x1

    .local v16, "currentNetId":I
    if-eqz v15, :cond_d

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    :cond_d
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_24

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .local v11, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_e

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v46, v0

    const/16 v47, 0x80

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_10

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_e

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin skip candidate due to auto join status "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " key "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " reason "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_3

    .end local v11    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "currentNetId":I
    .local v19, "i$":I
    :cond_f
    const/16 v46, -0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-eq v0, v1, :cond_c

    goto/16 :goto_0

    .restart local v11    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "currentNetId":I
    .local v19, "i$":Ljava/util/Iterator;
    :cond_10
    iget-wide v0, v11, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-lez v46, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .local v32, "now":J
    iget-wide v0, v11, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v46, v0

    cmp-long v46, v32, v46

    if-gez v46, :cond_13

    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .end local v32    # "now":J
    :cond_11
    :goto_4
    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_15

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_15

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_12

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin do not unblacklist due to low visibility "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " key "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " rssi=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ") num=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ")"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_12
    :goto_5
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_17

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_e

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin skip blacklisted -> status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " rssi=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ") num=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ")"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_3

    .restart local v32    # "now":J
    :cond_13
    iget-wide v0, v11, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v46, v0

    sub-long v46, v32, v46

    const-wide/32 v48, 0x1b77400

    cmp-long v46, v46, v48

    if-lez v46, :cond_14

    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_4

    :cond_14
    iget-wide v0, v11, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v46, v0

    sub-long v46, v32, v46

    const-wide/32 v48, 0x1b7740

    cmp-long v46, v46, v48

    if-lez v46, :cond_11

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x8

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_4

    .end local v32    # "now":J
    :cond_15
    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_16

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_16

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_12

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin good candidate seen, bumped soft -> status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " rssi=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ") num=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ")"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x3

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_12

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin good candidate seen, bumped hard -> status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " rssi=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ") num=("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ","

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ")"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v16

    if-ne v0, v1, :cond_18

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_e

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin skip current candidate  "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " key "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    const/16 v21, 0x0

    .local v21, "isLastSelected":Z
    if-eqz v24, :cond_19

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_19

    const/16 v21, 0x1

    :cond_19
    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    if-eqz v46, :cond_e

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v47, v0

    add-int v7, v46, v47

    .local v7, "boost":I
    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v46, v0

    add-int v46, v46, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_1c

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v46, v0

    add-int v46, v46, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    move/from16 v47, v0

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_1c

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_1a

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin skip due to low visibility -> status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " key "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " rssi="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " num="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ", "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v11, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1a
    if-nez v21, :cond_1b

    const/16 v46, 0x1

    move/from16 v0, v46

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    goto/16 :goto_3

    :cond_1b
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v46, v0

    sget v47, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_1c

    iget-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v46, v0

    if-eqz v46, :cond_1c

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x4

    move/from16 v0, v46

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    :cond_1c
    iget-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    move/from16 v46, v0

    if-eqz v46, :cond_1d

    if-nez v21, :cond_1d

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_e

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin skip candidate due to noInternetAccess flag "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1d
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_1f

    const-string v12, ""

    .local v12, "cur":Ljava/lang/String;
    if-eqz v9, :cond_1e

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " current candidate "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_1e
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin trying id="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v12    # "cur":Ljava/lang/String;
    :cond_1f
    if-nez v9, :cond_20

    move-object v9, v11

    goto/16 :goto_3

    :cond_20
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_21

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin will compare candidate  "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " with "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsTop(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v31

    .local v31, "order":I
    if-eqz v24, :cond_23

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_23

    add-int/lit8 v31, v31, -0x64

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_22

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "     ...and prefers -100 "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " over "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " because it is the last selected -> "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_22
    :goto_6
    if-lez v31, :cond_e

    move-object v9, v11

    goto/16 :goto_3

    :cond_23
    if-eqz v24, :cond_22

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_22

    add-int/lit8 v31, v31, 0x64

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_22

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "     ...and prefers +100 "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " over "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " because it is the last selected -> "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_6

    .end local v7    # "boost":I
    .end local v11    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "isLastSelected":Z
    .end local v31    # "order":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v46, v0

    if-eqz v46, :cond_2a

    sget v39, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .local v39, "rssi5":I
    sget v38, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .local v38, "rssi24":I
    if-eqz v9, :cond_25

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v39, v0

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v38, v0

    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .local v34, "nowMs":J
    const/16 v17, -0x2710

    .local v17, "currentScore":I
    const/16 v44, 0x0

    .local v44, "untrustedCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->isBadCandidate(II)Z

    move-result v46

    if-eqz v46, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_26
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_28

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/wifi/ScanResult;

    .local v36, "result":Landroid/net/wifi/ScanResult;
    const/16 v40, 0x0

    .local v40, "rssiBoost":I
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_26

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    move/from16 v46, v0

    if-eqz v46, :cond_26

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v46, v0

    sub-long v46, v34, v46

    const-wide/16 v48, 0xbb8

    cmp-long v46, v46, v48

    if-gez v46, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v46, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const/16 v49, 0x1

    invoke-virtual/range {v46 .. v49}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->lastUntrustedBSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_27

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->lastUntrustedBSSID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_27

    const/16 v40, 0x19

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v36

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;I)I

    move-result v41

    .local v41, "score":I
    sget v46, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    move/from16 v0, v41

    move/from16 v1, v46

    if-eq v0, v1, :cond_26

    move/from16 v0, v41

    move/from16 v1, v17

    if-le v0, v1, :cond_26

    move/from16 v17, v41

    move-object/from16 v44, v36

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_26

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "AutoJoinController: found untrusted candidate "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " RSSI="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " freq="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " score="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_7

    .end local v36    # "result":Landroid/net/wifi/ScanResult;
    .end local v40    # "rssiBoost":I
    .end local v41    # "score":I
    :cond_28
    if-eqz v44, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->lastUntrustedBSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_29

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->lastUntrustedBSSID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v46, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    const/16 v49, 0x0

    invoke-virtual/range {v46 .. v49}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->lastUntrustedBSSID:Ljava/lang/String;

    .end local v17    # "currentScore":I
    .end local v34    # "nowMs":J
    .end local v38    # "rssi24":I
    .end local v39    # "rssi5":I
    .end local v44    # "untrustedCandidate":Landroid/net/wifi/ScanResult;
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v48, v0

    sub-long v26, v46, v48

    .local v26, "lastUnwanted":J
    if-nez v9, :cond_39

    if-nez v24, :cond_39

    if-nez v15, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    move/from16 v46, v0

    if-eqz v46, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x0

    cmp-long v46, v46, v48

    if-eqz v46, :cond_2b

    const-wide/32 v46, 0x240c8400

    cmp-long v46, v26, v46

    if-lez v46, :cond_39

    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v46, v0

    const/16 v47, 0xa

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    :cond_2c
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v29

    .local v29, "networkDelta":I
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_2f

    if-eqz v9, :cond_2f

    const-string v18, ""

    .local v18, "doSwitch":Ljava/lang/String;
    const-string v13, ""

    .local v13, "current":Ljava/lang/String;
    if-gez v29, :cond_2d

    const-string v18, " -> not switching"

    :cond_2d
    if-eqz v15, :cond_2e

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, " with current "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2e
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "attemptAutoJoin networkSwitching candidate "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " linked="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    if-eqz v15, :cond_3a

    invoke-virtual {v15, v9}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v46

    if-eqz v46, :cond_3a

    const/16 v46, 0x1

    :goto_9
    move-object/from16 v0, v47

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " : delta="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v46

    if-eqz v46, :cond_35

    if-eqz v15, :cond_3b

    invoke-virtual {v15, v9}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v46

    if-eqz v46, :cond_3b

    const/16 v30, 0x2

    :goto_a
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_30

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "AutoJoin auto connect with netId "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " to "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    move/from16 v46, v0

    if-eqz v46, :cond_31

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v46

    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    :cond_31
    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v46

    iput v0, v9, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v46

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_32

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "any"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_34

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v14

    .local v14, "currentBSSID":Ljava/lang/String;
    const/16 v46, 0x0

    const/16 v47, 0xbb8

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v37

    .local v37, "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v37, :cond_33

    if-eqz v14, :cond_33

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_33

    const/16 v37, 0x0

    :cond_33
    if-eqz v37, :cond_3c

    invoke-virtual/range {v37 .. v37}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v46

    if-eqz v46, :cond_3c

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_34

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "AutoJoinController: lock to 5GHz "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " RSSI="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " freq="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v14    # "currentBSSID":Ljava/lang/String;
    .end local v37    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_34
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    const v47, 0x2008f

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    :cond_35
    if-nez v30, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "currentBSSID":Ljava/lang/String;
    const/16 v46, 0x0

    const/16 v47, 0xbb8

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v15, v2, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v37

    .restart local v37    # "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v37, :cond_36

    if-eqz v14, :cond_36

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_36

    const/16 v37, 0x0

    :cond_36
    if-eqz v37, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    const/16 v47, 0x3e7

    invoke-virtual/range {v46 .. v47}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v46

    if-eqz v46, :cond_38

    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v46, :cond_37

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "AutoJoin auto roam with netId "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " to BSSID="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " freq="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " RSSI="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v37

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_37
    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v46

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v46, v0

    const v47, 0x20091

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .end local v14    # "currentBSSID":Ljava/lang/String;
    .end local v37    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_38
    sget-boolean v46, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v46, :cond_0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "Done attemptAutoJoin status="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v29    # "networkDelta":I
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v46, v0

    if-lez v46, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x1

    move/from16 v0, v46

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    goto/16 :goto_8

    .restart local v13    # "current":Ljava/lang/String;
    .restart local v18    # "doSwitch":Ljava/lang/String;
    .restart local v29    # "networkDelta":I
    :cond_3a
    const/16 v46, 0x0

    goto/16 :goto_9

    .end local v13    # "current":Ljava/lang/String;
    .end local v18    # "doSwitch":Ljava/lang/String;
    :cond_3b
    const/16 v30, 0x3

    goto/16 :goto_a

    .restart local v14    # "currentBSSID":Ljava/lang/String;
    .restart local v37    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_3c
    const-string v46, "any"

    move-object/from16 v0, v46

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    goto/16 :goto_b
.end method

.method public attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 18
    .param p1, "a"    # Landroid/net/wifi/ScanResult;
    .param p2, "current"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "age"    # I
    .param p4, "currentBSSID"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_1

    sget-boolean v13, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v13, :cond_0

    const-string v13, "attemptRoam not associated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v2, p1

    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .local v2, "a":Landroid/net/wifi/ScanResult;
    :goto_0
    return-object v2

    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v13, :cond_3

    sget-boolean v13, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v13, :cond_2

    const-string v13, "attemptRoam no scan cache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v2, p1

    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_3
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_5

    sget-boolean v13, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attemptRoam scan cache size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> bail"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v2, p1

    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_5
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v14, "any"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    sget-boolean v13, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attemptRoam() BSSID is set "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> bail"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v2, p1

    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto/16 :goto_0

    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "nowMs":J
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .local v5, "b":Landroid/net/wifi/ScanResult;
    const/4 v7, 0x0

    .local v7, "bRssiBoost5":I
    const/4 v4, 0x0

    .local v4, "aRssiBoost5":I
    const/4 v6, 0x0

    .local v6, "bRssiBoost":I
    const/4 v3, 0x0

    .local v3, "aRssiBoost":I
    iget-wide v14, v5, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_8

    iget-object v13, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v13, :cond_8

    iget-wide v14, v5, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v10, v14

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_8

    iget v13, v5, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-nez v13, :cond_8

    iget v13, v5, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    const/16 v14, 0x8

    if-gt v13, v14, :cond_8

    if-nez p1, :cond_9

    move-object/from16 p1, v5

    goto :goto_1

    :cond_9
    iget v13, v5, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attemptRoam: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipfail="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipfail="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    move-object/from16 p1, v5

    goto/16 :goto_1

    :cond_a
    if-eqz p4, :cond_b

    iget-object v13, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    iget v13, v5, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    if-gt v13, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v6, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    :cond_b
    :goto_2
    if-eqz p4, :cond_c

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    if-gt v13, v14, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    :cond_c
    :goto_3
    invoke-virtual {v5}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v13

    if-eqz v13, :cond_d

    iget v13, v5, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v13, v6

    iget-object v14, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v7

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p1

    iget v13, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v13, v3

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v4

    :cond_e
    sget-boolean v13, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v13, :cond_10

    const-string v8, " < "

    .local v8, "comp":Ljava/lang/String;
    iget v13, v5, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v13, v6

    add-int/2addr v13, v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v14, v3

    add-int/2addr v14, v4

    if-le v13, v14, :cond_f

    const-string v8, " > "

    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attemptRoam: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " boost="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " boost="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v8    # "comp":Ljava/lang/String;
    :cond_10
    iget v13, v5, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v13, v6

    add-int/2addr v13, v7

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v14, v3

    add-int/2addr v14, v4

    if-le v13, v14, :cond_8

    move-object/from16 p1, v5

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v6, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_3

    .end local v3    # "aRssiBoost":I
    .end local v4    # "aRssiBoost5":I
    .end local v5    # "b":Landroid/net/wifi/ScanResult;
    .end local v6    # "bRssiBoost":I
    .end local v7    # "bRssiBoost5":I
    :cond_13
    if-eqz p1, :cond_15

    sget-boolean v13, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v13, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .local v12, "sb":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "attemptRoam: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rssi="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Current: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    move-object/from16 v2, p1

    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto/16 :goto_0
.end method

.method compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .local v3, "order":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v1

    .local v1, "lastSelectedConfiguration":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "linked":Z
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v6, :cond_0

    iget v6, p2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v6, :cond_0

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v6, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    const/4 v5, -0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    if-nez v2, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .local v0, "choice":I
    if-lez v0, :cond_5

    sub-int/2addr v3, v0

    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurations prefers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to user choice of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    if-lez v0, :cond_6

    add-int/2addr v3, v0

    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurations prefers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to user choice of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v0    # "choice":I
    :cond_6
    if-nez v3, :cond_8

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v6, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v5, v6, :cond_b

    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurations prefers -1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to priority"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_7
    const/4 v3, -0x1

    :cond_8
    :goto_1
    const-string v4, " == "

    .local v4, "sorder":Ljava/lang/String;
    if-lez v3, :cond_d

    const-string v4, " < "

    :cond_9
    :goto_2
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareWifiConfigurations: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " order "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_a
    move v5, v3

    goto/16 :goto_0

    .end local v4    # "sorder":Ljava/lang/String;
    :cond_b
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v6, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v6, :cond_8

    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurations prefers +1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to priority"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_c
    const/4 v3, 0x1

    goto :goto_1

    .restart local v4    # "sorder":Ljava/lang/String;
    :cond_d
    if-gez v3, :cond_9

    const-string v4, " > "

    goto :goto_2
.end method

.method compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 10
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "order":I
    const/4 v0, 0x0

    .local v0, "aRssiBoost":I
    const/4 v2, 0x0

    .local v2, "bRssiBoost":I
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .local v1, "astatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .local v3, "bstatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v8, "    compareWifiConfigurations NULL band status!"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v0, 0xa

    :cond_2
    :goto_1
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    compareWifiConfigurationsRSSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " boost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " boost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v1, v0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getScoreFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I

    move-result v6

    .local v6, "scoreA":I
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v2, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getScoreFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I

    move-result v7

    .local v7, "scoreB":I
    sub-int v4, v7, v6

    const/16 v8, 0x32

    if-le v4, v8, :cond_8

    const/16 v4, 0x32

    :cond_4
    :goto_2
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v8, :cond_6

    const-string v5, " = "

    .local v5, "prefer":Ljava/lang/String;
    if-lez v4, :cond_9

    const-string v5, " < "

    :cond_5
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    compareWifiConfigurationsRSSI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rssi=("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") num=("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scorea="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rssi=("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") num=("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scoreb="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v5    # "prefer":Ljava/lang/String;
    :cond_6
    move v8, v4

    goto/16 :goto_0

    .end local v6    # "scoreA":I
    .end local v7    # "scoreB":I
    :cond_7
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v2, 0xa

    goto/16 :goto_1

    .restart local v6    # "scoreA":I
    .restart local v7    # "scoreB":I
    :cond_8
    const/16 v8, -0x32

    if-ge v4, v8, :cond_4

    const/16 v4, -0x32

    goto/16 :goto_2

    .restart local v5    # "prefer":Ljava/lang/String;
    :cond_9
    if-gez v4, :cond_5

    const-string v5, " > "

    goto/16 :goto_3
.end method

.method compareWifiConfigurationsTop(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsWithScorer(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .local v1, "scorerOrder":I
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .local v0, "order":I
    mul-int v2, v1, v0

    if-gez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    -> compareWifiConfigurationsTop: scorer override "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    :cond_1
    if-eqz v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method compareWifiConfigurationsWithScorer(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v7, 0xbb8

    const/4 v0, 0x0

    .local v0, "aRssiBoost":I
    const/4 v1, 0x0

    .local v1, "bRssiBoost":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x14

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v7, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;II)I

    move-result v3

    .local v3, "scoreA":I
    invoke-virtual {p0, p2, v7, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;II)I

    move-result v4

    .local v4, "scoreB":I
    sget v5, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    if-eq v3, v5, :cond_1

    sget v5, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    if-ne v4, v5, :cond_4

    :cond_1
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurationsWithScorer no-scores: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    :goto_1
    return v5

    .end local v3    # "scoreA":I
    .end local v4    # "scoreB":I
    :cond_3
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .restart local v3    # "scoreA":I
    .restart local v4    # "scoreB":I
    :cond_4
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_7

    const-string v2, " = "

    .local v2, "prefer":Ljava/lang/String;
    if-ge v3, v4, :cond_5

    const-string v2, " < "

    :cond_5
    if-le v3, v4, :cond_6

    const-string v2, " > "

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurationsWithScorer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rssi=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") num=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rssi=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") num=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v2    # "prefer":Ljava/lang/String;
    :cond_7
    sub-int v5, v4, v3

    goto/16 :goto_1
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    :goto_0
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    :cond_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    goto :goto_0
.end method

.method getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;II)I
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "rssiBoost"    # I

    .prologue
    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "       getConfigNetworkScore for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  -> no scorer, hence no scores"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    sget v5, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    :cond_1
    :goto_0
    return v5

    :cond_2
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "       getConfigNetworkScore for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> no scan cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_3
    sget v5, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "nowMs":J
    const/16 v5, -0x2710

    .local v5, "startScore":I
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-wide v6, v1, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v6, v2, v6

    int-to-long v8, p2

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v6, v1, p3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;I)I

    move-result v4

    .local v4, "sc":I
    if-le v4, v5, :cond_5

    move v5, v4

    goto :goto_1

    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "sc":I
    :cond_6
    const/16 v6, -0x2710

    if-ne v5, v6, :cond_7

    sget v5, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    :cond_7
    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    if-ne v5, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    getConfigNetworkScore for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> no available score"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    getConfigNetworkScore for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " boost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "target"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .local v0, "choice":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "choice":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "choice":Ljava/lang/Integer;
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_4
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "choice":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "choice":Ljava/lang/Integer;
    goto :goto_1
.end method

.method getScoreFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I
    .locals 5
    .param p1, "visibility"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p2, "rssiBoost"    # I
    .param p3, "dbg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "rssiBoost5":I
    const/4 v1, 0x0

    .local v1, "score":I
    iget v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v2, v3, :cond_0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v2, v0

    add-int v1, v2, p2

    :goto_0
    return v1

    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v1, v2, p2

    goto :goto_0
.end method

.method isBadCandidate(II)Z
    .locals 1
    .param p1, "rssi5"    # I
    .param p2, "rssi24"    # I

    .prologue
    const/16 v0, -0x50

    if-ge p1, v0, :cond_0

    const/16 v0, -0x5a

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method linkQualitySignificantChange()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()V

    return-void
.end method

.method logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    return-void
.end method

.method logDbg(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Z

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .local v0, "now":J
    if-eqz p2, :cond_0

    const-string v2, "WifiAutoJoinController "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "WifiAutoJoinController "

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method newHalScanResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {v2, v2}, Lcom/android/server/wifi/WifiParser;->parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .local v0, "akm":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory()V

    return-void
.end method

.method newSupplicantResults(Z)I
    .locals 4
    .param p1, "doAutoJoin"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    move-result-object v1

    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    move-result v0

    .local v0, "numScanResultsKnown":I
    sget v2, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSupplicantResults size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " known="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory()V

    return v0
.end method

.method public rssiBoostFrom5GHzRssi(ILjava/lang/String;)I
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    if-le p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    sub-int v2, p1, v2

    mul-int v0, v1, v2

    .local v0, "boost":I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    const/16 v0, 0x32

    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":    rssi5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " boost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "boost":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    sub-int v2, p1, v2

    mul-int v0, v1, v2

    .restart local v0    # "boost":I
    goto :goto_0
.end method

.method public updateConfigurationHistory(IZZ)V
    .locals 14
    .param p1, "netId"    # I
    .param p2, "userTriggered"    # Z
    .param p3, "connect"    # Z

    .prologue
    iget-object v11, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v11, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .local v9, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory nid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " no selected configuration!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory nid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " no SSID in selected configuration!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    const/4 v11, 0x0

    iput-boolean v11, v9, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    :cond_3
    sget-boolean v11, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v11, :cond_4

    if-eqz p2, :cond_4

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v11, :cond_8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory will update "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " now: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    if-eqz p3, :cond_13

    if-eqz p2, :cond_13

    const/4 v3, 0x0

    .local v3, "found":Z
    const/4 v0, 0x0

    .local v0, "choice":I
    const/4 v10, 0x0

    .local v10, "size":I
    const/4 v11, 0x0

    iput v11, v9, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    const/4 v11, 0x0

    iput v11, v9, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    const/4 v11, 0x0

    iput v11, v9, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v9, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iget-object v11, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/16 v12, 0x2ee0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v7

    .local v7, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " networks"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    if-eqz v7, :cond_13

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v11, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " nid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_7
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "found":Z
    .end local v7    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v10    # "size":I
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory will update "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .restart local v0    # "choice":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "found":Z
    .restart local v7    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v10    # "size":I
    :cond_9
    const/4 v11, 0x0

    invoke-virtual {p0, v1, v9, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v8

    .local v8, "order":I
    const/16 v11, -0x1e

    if-ge v8, v11, :cond_d

    const/16 v0, 0x3c

    :goto_3
    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v11, :cond_a

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory add a choice "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " choice "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "currentChoice":Ljava/lang/Integer;
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v0, v11

    :cond_b
    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v11, :cond_6

    sget-boolean v11, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v11, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory will remove "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_c
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v11, :cond_6

    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "key":Ljava/lang/String;
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v2    # "currentChoice":Ljava/lang/Integer;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    :cond_d
    const/16 v11, -0x14

    if-ge v8, v11, :cond_e

    const/16 v0, 0x32

    goto/16 :goto_3

    :cond_e
    const/16 v11, -0xa

    if-ge v8, v11, :cond_f

    const/16 v0, 0x28

    goto/16 :goto_3

    :cond_f
    const/16 v11, 0x14

    if-ge v8, v11, :cond_10

    const/16 v0, 0x1e

    goto/16 :goto_3

    :cond_10
    const/16 v0, 0x14

    goto/16 :goto_3

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "order":I
    :cond_11
    if-nez v3, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory try to connect to an old network!! : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_12
    iget-object v11, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v11, :cond_13

    sget-boolean v11, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v11, :cond_13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConfigurationHistory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " now: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v0    # "choice":I
    .end local v3    # "found":Z
    .end local v7    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v10    # "size":I
    :cond_13
    if-nez p2, :cond_14

    if-eqz p3, :cond_0

    :cond_14
    iget-object v11, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory()V

    goto/16 :goto_0
.end method
