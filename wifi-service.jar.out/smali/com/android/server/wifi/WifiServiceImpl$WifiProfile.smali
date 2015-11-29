.class Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiProfile"
.end annotation


# static fields
.field private static final fileDefaultNamedata:Ljava/lang/String; = "/system/etc/wifi/default_ap.conf"

.field private static final fileGeneralNwInfo:Ljava/lang/String; = "/data/misc/wifi/generalinfo_nw.conf"

.field private static final fileNamedata:Ljava/lang/String; = "/data/misc/wifi/default_ap.conf"

.field private static final filePrevNetworkName:Ljava/lang/String; = "/data/misc/wifi/prev_networkname.conf"


# instance fields
.field private fileDefaultPath:Ljava/io/File;

.field private filePath:Ljava/io/File;

.field private flagForGeneralNwInfo:Z

.field private flagForPrevNetworkName:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3102([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3202([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1802(Z)Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkNetworkName()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const-string v7, ""

    .local v7, "mMCCMNC":Ljava/lang/String;
    const-string v6, ""

    .local v6, "mKeymgmt":Ljava/lang/String;
    const-string v5, ""

    .local v5, "mEap":Ljava/lang/String;
    new-instance v8, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v8}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v8, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$3602(Ljava/lang/String;)Ljava/lang/String;

    const-string v10, ""

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[j].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$3602(Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "j":I
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_a

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    const-string v6, "WPA-EAP IEEE8021X"

    :cond_5
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    const-string v5, "SIM"

    :cond_6
    :goto_2
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMatchedPrevNetworkName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v6, ""

    const-string v5, ""

    const/4 v10, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$1602(Z)Z

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    const-string v10, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":I
    :cond_a
    :goto_3
    return-void

    .restart local v4    # "j":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v4    # "j":I
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v9    # "p":I
    :cond_c
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d

    const-string v5, "AKA"

    goto/16 :goto_2

    :cond_d
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    if-nez v10, :cond_e

    const-string v5, "PEAP"

    goto/16 :goto_2

    :cond_e
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v10

    if-ne v10, v13, :cond_6

    const-string v5, "TTLS"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v9    # "p":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "checkNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 17
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    const-string v1, ""

    .local v1, "buf1":Ljava/lang/String;
    const-string v2, ""

    .local v2, "buf2":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "bufLine":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v14, "mccmnc=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .local v8, "mccmnc":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v8    # "mccmnc":Ljava/lang/String;
    :cond_2
    const-string v14, "networkname=\""

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .local v11, "networkname":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    goto/16 :goto_0

    .end local v11    # "networkname":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "mccmncs":[Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "networknames":[Ljava/lang/String;
    array-length v10, v9

    .local v10, "networkCount":I
    new-array v13, v10, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .local v13, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_8

    :try_start_3
    new-instance v14, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v15, v9, v5

    aget-object v16, v12, v5

    invoke-direct/range {v14 .. v16}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v13, v5

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "WifiService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GeneralNwInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    .end local v9    # "mccmncs":[Ljava/lang/String;
    .end local v10    # "networkCount":I
    .end local v12    # "networknames":[Ljava/lang/String;
    .end local v13    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object v6, v7

    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    return-object v13

    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x0

    if-eqz v6, :cond_6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    throw v14

    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string v14, "WifiService"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "bufLine":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "mccmncs":[Ljava/lang/String;
    .restart local v10    # "networkCount":I
    .restart local v12    # "networknames":[Ljava/lang/String;
    .restart local v13    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_8
    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v14, "WifiService"

    const-string v15, "getGeneralNwInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3    # "bufLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "i":I
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v9    # "mccmncs":[Ljava/lang/String;
    .end local v10    # "networkCount":I
    .end local v12    # "networknames":[Ljava/lang/String;
    .end local v13    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    const-string v0, ""

    .local v0, "buf1":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "bufLine":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v11, "networkname=\""

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, "networkname":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x22

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    .end local v7    # "networkname":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "networknames":[Ljava/lang/String;
    array-length v6, v8

    .local v6, "networkCount":I
    new-array v9, v6, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    .local v9, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_7

    :try_start_3
    new-instance v11, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v12, v8, v3

    invoke-direct {v11, v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;)V

    aput-object v11, v9, v3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PrevNetworkName["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v3

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v9

    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    move-object v9, v10

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    throw v11

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "WifiService"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "bufLine":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "networkCount":I
    .restart local v8    # "networknames":[Ljava/lang/String;
    .restart local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :cond_7
    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v11, "WifiService"

    const-string v12, "getPrevNetworkNameFromFile: No ApInfo - NullPointerException"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    goto :goto_2

    .end local v1    # "bufLine":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "networkCount":I
    .end local v8    # "networknames":[Ljava/lang/String;
    .end local v9    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 43
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$1802(Z)Z

    const-string v38, ""

    .local v38, "ssidbuf":Ljava/lang/String;
    const-string v20, ""

    .local v20, "keymgmtbuf":Ljava/lang/String;
    const-string v41, ""

    .local v41, "wepkeybuf":Ljava/lang/String;
    const-string v32, ""

    .local v32, "prioritybuf":Ljava/lang/String;
    const-string v12, ""

    .local v12, "eapbuf":Ljava/lang/String;
    const-string v23, ""

    .local v23, "networknamebuf":Ljava/lang/String;
    const-string v16, ""

    .local v16, "identitybuf":Ljava/lang/String;
    const-string v26, ""

    .local v26, "passwordbuf":Ljava/lang/String;
    const-string v30, ""

    .local v30, "phasebuf":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v18    # "in":Ljava/io/BufferedReader;
    .local v19, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "bufLine":Ljava/lang/String;
    if-eqz v9, :cond_a

    const-string v1, "ssid=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    .local v37, "ssid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    goto :goto_0

    .end local v37    # "ssid":Ljava/lang/String;
    :cond_2
    const-string v1, "key_mgmt="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .local v35, "secure":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .end local v35    # "secure":Ljava/lang/String;
    :cond_3
    const-string v1, "wep_key0="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v40

    .local v40, "wepkey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_0

    .end local v40    # "wepkey":Ljava/lang/String;
    :cond_4
    const-string v1, "priority="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .local v31, "priority":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_0

    .end local v31    # "priority":Ljava/lang/String;
    :cond_5
    const-string v1, "eap="

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .local v11, "eap":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .end local v11    # "eap":Ljava/lang/String;
    :cond_6
    const-string v1, "networkname=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .local v22, "networkname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .end local v22    # "networkname":Ljava/lang/String;
    :cond_7
    const-string v1, "identity=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .local v15, "identity":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .end local v15    # "identity":Ljava/lang/String;
    :cond_8
    const-string v1, "password=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .local v25, "password":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_0

    .end local v25    # "password":Ljava/lang/String;
    :cond_9
    const-string v1, "phase2=\""

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .local v28, "phase2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x22

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v30

    goto/16 :goto_0

    .end local v28    # "phase2":Ljava/lang/String;
    :cond_a
    if-eqz v19, :cond_b

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    const-string v1, ","

    move-object/from16 v0, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .local v39, "ssids":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .local v36, "secures":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    .local v42, "wepkeys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .local v33, "prioritys":[Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "eaps":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .local v24, "networknames":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .local v17, "identitys":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .local v27, "passwords":[Ljava/lang/String;
    const-string v1, ","

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .local v29, "phase2s":[Ljava/lang/String;
    move-object/from16 v0, v39

    array-length v1, v0

    move-object/from16 v0, v36

    array-length v2, v0

    if-eq v1, v2, :cond_e

    const-string v1, "WifiService"

    const-string v2, "Parse error default ap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    move-object/from16 v18, v19

    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v17    # "identitys":[Ljava/lang/String;
    .end local v19    # "in":Ljava/io/BufferedReader;
    .end local v24    # "networknames":[Ljava/lang/String;
    .end local v27    # "passwords":[Ljava/lang/String;
    .end local v29    # "phase2s":[Ljava/lang/String;
    .end local v33    # "prioritys":[Ljava/lang/String;
    .end local v36    # "secures":[Ljava/lang/String;
    .end local v39    # "ssids":[Ljava/lang/String;
    .end local v42    # "wepkeys":[Ljava/lang/String;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    :cond_c
    :goto_1
    return-object v34

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v34, 0x0

    if-eqz v18, :cond_c

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v10

    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    goto :goto_1

    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v18, :cond_d

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_d
    throw v1

    :catch_3
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    const-string v1, "WifiService"

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    goto :goto_1

    .end local v10    # "e":Ljava/io/IOException;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "bufLine":Ljava/lang/String;
    .restart local v13    # "eaps":[Ljava/lang/String;
    .restart local v17    # "identitys":[Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    .restart local v24    # "networknames":[Ljava/lang/String;
    .restart local v27    # "passwords":[Ljava/lang/String;
    .restart local v29    # "phase2s":[Ljava/lang/String;
    .restart local v33    # "prioritys":[Ljava/lang/String;
    .restart local v36    # "secures":[Ljava/lang/String;
    .restart local v39    # "ssids":[Ljava/lang/String;
    .restart local v42    # "wepkeys":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v21, v0

    .local v21, "networkCount":I
    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-object/from16 v34, v0

    .local v34, "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    :try_start_6
    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v33, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v39, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v14, v0, :cond_12

    const-string v1, ""

    aget-object v2, v33, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ""

    aget-object v2, v13, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v36, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    aget-object v6, v24, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14

    :cond_f
    :goto_5
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM/AKA DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_11
    const-string v1, ""

    aget-object v2, v33, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, ""

    aget-object v2, v13, v14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v36, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_5

    .end local v14    # "i":I
    :catch_4
    move-exception v10

    .local v10, "e":Ljava/lang/NullPointerException;
    const-string v1, "WifiService"

    const-string v2, "getVendorApInfoFromFile: No ApInfo - NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v10    # "e":Ljava/lang/NullPointerException;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "i":I
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_12
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v14    # "i":I
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_13
    :try_start_7
    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    move/from16 v0, v21

    if-ge v14, v0, :cond_16

    const-string v1, ""

    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    aget-object v6, v17, v14

    aget-object v7, v27, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14

    :goto_7
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEAP/TTLS DefaultAp["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret[].getEap() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v34, v14

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_15
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    aget-object v2, v39, v14

    aget-object v3, v36, v14

    aget-object v4, v33, v14

    aget-object v5, v13, v14

    aget-object v6, v17, v14

    aget-object v7, v27, v14

    aget-object v8, v29, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v34, v14

    goto :goto_7

    :cond_16
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v14    # "i":I
    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :cond_17
    const-string v1, "WifiService"

    const-string v2, "No ApInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4

    const/16 v34, 0x0

    .end local v34    # "ret":[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v9    # "bufLine":Ljava/lang/String;
    .end local v13    # "eaps":[Ljava/lang/String;
    .end local v17    # "identitys":[Ljava/lang/String;
    .end local v18    # "in":Ljava/io/BufferedReader;
    .end local v21    # "networkCount":I
    .end local v24    # "networknames":[Ljava/lang/String;
    .end local v27    # "passwords":[Ljava/lang/String;
    .end local v29    # "phase2s":[Ljava/lang/String;
    .end local v33    # "prioritys":[Ljava/lang/String;
    .end local v36    # "secures":[Ljava/lang/String;
    .end local v39    # "ssids":[Ljava/lang/String;
    .end local v42    # "wepkeys":[Ljava/lang/String;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v18    # "in":Ljava/io/BufferedReader;
    .restart local v19    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v10

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private makePrevNetworkName()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v6, ""

    .local v6, "mNetworkNameProfile":Ljava/lang/String;
    const-string v7, ""

    .local v7, "mPrevNetworkName":Ljava/lang/String;
    const-string v5, ""

    .local v5, "mMCCMNC":Ljava/lang/String;
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "makePrevNetworkName mMCCMNC = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v4, v10, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mGeneralNwInfo[].getMCCMNC() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getMCCMNC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPrevNetworkName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "j":I
    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3500()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v10, "network={\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    networkname=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v10, "}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "String mNetworkNameProfile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {v10}, Lcom/android/server/wifi/WifiServiceImpl;->access$1502(Ljava/io/File;)Ljava/io/File;

    const/4 v2, 0x0

    .local v2, "fw":Ljava/io/FileOutputStream;
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFilePath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1500()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_5
    :try_start_2
    new-instance v8, Ljava/io/File;

    const-string v10, "/data/misc/wifi"

    const-string v11, "prev_networkname.conf"

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, "profilefilepath":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod 664 /data/misc/wifi/prev_networkname.conf"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .local v3, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .end local v8    # "profilefilepath":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_7
    :goto_3
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForNWNameCreate:Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiServiceImpl;->access$3502(Z)Z

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    :cond_8
    return-void

    .restart local v4    # "j":I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v4    # "j":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string v10, "WifiService"

    const-string v11, "makePrevNetworkName -NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v8    # "profilefilepath":Ljava/io/File;
    :catch_2
    move-exception v1

    .local v1, "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v8    # "profilefilepath":Ljava/io/File;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v10, "WifiService"

    const-string v11, "PrevNetworkName File Create Not Found "

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_6
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_9
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PrevNetworkName create file failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_3

    :catch_8
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v10, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :cond_a
    :goto_8
    throw v10

    :catch_9
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v8    # "profilefilepath":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2    # "fw":Ljava/io/FileOutputStream;
    .restart local v3    # "fw":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileOutputStream;
    .restart local v2    # "fw":Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public addChangedWifiProfile()V
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .local v4, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v5, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "mRes":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_4

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v6, 0x2

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    const-string v6, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    :cond_0
    const-string v6, "SIM"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$1702(Z)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v6, "AKA"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "k":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "WifiService"

    const-string v7, "addChangedWifiProfile - NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_4
    return-void
.end method

.method public addWifiVendorProfile()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, "mWifi":Landroid/net/wifi/WifiManager;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v4, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .local v2, "mRes":I
    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_8

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v5, 0x2

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPriority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_1
    const-string v5, "WPA-EAP IEEE8021X"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    :cond_2
    const-string v5, "SIM"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_3
    :goto_1
    const-string v5, "None"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_4
    :goto_2
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    :cond_5
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$1702(Z)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v5, "AKA"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "WifiService"

    const-string v6, "addWifiVendorProfile - NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_8
    return-void

    .restart local v1    # "i":I
    :cond_9
    :try_start_1
    const-string v5, "PEAP"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "TTLS"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_1

    :cond_b
    const-string v5, "MSCHAPV2"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_2

    :cond_c
    const-string v5, "GTC"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getPhase2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public getGeneralNwInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForGeneralNwInfo:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getGeneralNwInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3202([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    :cond_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3200()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevNetworkName()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->flagForPrevNetworkName:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/data/misc/wifi/prev_networkname.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkNameFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3302([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->makePrevNetworkName()V

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mPrevNetworkName:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    .locals 4

    .prologue
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->flagForDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    :cond_1
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3102([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    :cond_2
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "Private"

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mConfigPriorAp:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v0

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3102([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    goto :goto_1
.end method

.method public removeChangedWifiProfile()V
    .locals 10

    .prologue
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v6, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v5, ""

    .local v5, "mKeymgmt":Ljava/lang/String;
    const-string v4, ""

    .local v4, "mEap":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V

    :try_start_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3600()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v7, 0x0

    .local v7, "p":I
    :goto_0
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_5

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const-string v5, "WPA-EAP IEEE8021X"

    :cond_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    const-string v4, "SIM"

    :cond_3
    :goto_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl$ApInfo;->getEap()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$100()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "WifiService"

    const-string v9, "remove proper wifi profile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8, v0}, Lcom/android/server/wifi/WifiServiceImpl;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    const-string v5, ""

    const-string v4, ""

    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$1702(Z)Z

    const/4 v8, 0x1

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->access$2302(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "p":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v8, "WifiService"

    const-string v9, "removeChangedWifiProfile - NullPointerException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_5
    return-void

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "p":I
    :cond_6
    :try_start_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v8}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    const-string v4, "AKA"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
