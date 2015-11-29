.class Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyingLinkState"
.end annotation


# instance fields
.field private mCheckAgainDefaultURL:Z

.field private mFirstDnsRequest:Z

.field private mPreviousBSSID:Ljava/lang/String;

.field private mRecoveryCanceledByScan:Z

.field private mSampleCount:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11302(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$11202(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "WifiWatchdogStateMachine"

    const-string v3, "mDnsCheck is null."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string v6, "WifiWatchdogStateMachine.DnsPinger"

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    move v0, v1

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v3, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsUsingProxy:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiWatchdogStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mProxyPort:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v0, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "WifiWatchdogStateMachine"

    const-string v1, "[VerifyingLinkState] skip stopUsing HIPRI. Wait ev."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2100b

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->mDnsPinger:Landroid/net/DnsPinger;
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)Landroid/net/DnsPinger;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/DnsPinger;->getDnsList()Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setEvaluationParameters()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->isUsingStaticIp()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_d
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-ne v0, v7, :cond_e

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2100b

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_e
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    const/16 v4, 0xbb8

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v3, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    iput v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v2, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6302(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v0, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v3, 0x5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    if-ne v0, v7, :cond_14

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->newLinkDetected()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v3, 0x2100b

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18500(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x21014

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$14600(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :sswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .local v4, "id":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .local v9, "result":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x4

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x3

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v14, 0xb

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[REPORT_QC_RESULT] id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v11, -0x1

    if-ne v9, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    if-ne v9, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xb

    if-ne v11, v14, :cond_6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v14, "could not identify a captive portal state due to the poor quality"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_5
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    if-lt v9, v11, :cond_a

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Passed by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "bytes"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (mPassBytesVerifyingState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mGoodRxThreshold:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    if-lt v9, v11, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "now":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCRetry:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xb

    if-ne v11, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .end local v6    # "now":J
    :cond_8
    const-wide/16 v6, 0x0

    goto :goto_2

    .restart local v6    # "now":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    .end local v6    # "now":J
    :cond_a
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "bytes"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (mPassBytesVerifyingState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPassBytesVerifyingState:I
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQCSets:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    if-ge v4, v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_c

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    add-int/lit8 v14, v4, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mCheckAgainDefaultURL:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setToDefaultURL()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->bSetQcResult:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_e
    if-nez v9, :cond_11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_10
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_13
    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v4    # "id":I
    .end local v9    # "result":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->notifyDisconnect()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->notifyDisconnect()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$7200(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :cond_14
    :goto_3
    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v11

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v3

    .local v3, "dnsResult":I
    const/4 v8, 0x2

    .local v8, "poorType":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "WifiWatchdogStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DNS result is useless. Pass through... ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_15
    const/4 v11, 0x2

    if-eq v3, v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v14, 0x21014

    invoke-virtual {v11, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v14, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    :cond_17
    const/4 v11, 0x1

    if-ne v3, v11, :cond_1b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-nez v11, :cond_19

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x1

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18500(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_4

    :cond_1b
    const/4 v11, 0x4

    if-ne v3, v11, :cond_1f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v11

    const/4 v14, 0x1

    const/16 v15, 0xbb8

    const/16 v16, 0x0

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DEFAULT_URL_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15400()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v14, v15, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1e

    const/4 v8, 0x3

    :cond_1c
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_1d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-eq v11, v14, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_1f
    const/4 v11, 0x3

    if-ne v3, v11, :cond_20

    const/4 v8, 0x3

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    if-eqz v11, :cond_1c

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mFirstDnsRequest:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v14, 0x21013

    invoke-virtual {v11, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsNumPings:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    const/16 v15, 0xbb8

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v14, v15, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v14, "DNS List is empty, ignore dns checking"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x1

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x3

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    .end local v3    # "dnsResult":I
    .end local v8    # "poorType":I
    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_21

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v11

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v2

    .local v2, "dns2Result":I
    const/4 v11, 0x2

    if-ne v2, v11, :cond_22

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_22
    const/4 v11, 0x4

    if-ne v2, v11, :cond_23

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_23
    const/4 v11, 0x1

    if-ne v2, v11, :cond_27

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isEnterpriseAP()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_24

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_26

    :cond_24
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-nez v11, :cond_25

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x1

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatsAnalyzer:Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->checkPublicDns()V

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18500(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    goto :goto_6

    :cond_27
    const/4 v11, 0x3

    if-ne v2, v11, :cond_28

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_28
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .end local v2    # "dns2Result":I
    :sswitch_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_29

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[CAPTIVE_PORTAL_RESULT_NONE]"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xe

    if-ne v11, v14, :cond_2b

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_2a

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "It\'s a auto join AP"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v14, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_2d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mFirstRequest:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$13902(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-nez v11, :cond_2c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x1

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_2c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_2e

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[CAPTIVE_PORTAL_RESULT_DETECTED]"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v14, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_30

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-nez v11, :cond_2f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x1

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTrigger:I

    :cond_2f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_30
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :pswitch_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_31

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[CAPTIVE_PORTAL_RESULT_TIMEOUT]"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v14, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_34

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_33

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_32

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    :cond_32
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_33
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x3

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v14, 0x9

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v15

    iput v15, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    iput v15, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->line:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :cond_34
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_7

    :pswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_35

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[CAPTIVE_PORTAL_RESULT_NO_INTERNET]"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v11

    if-eqz v11, :cond_36

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/4 v14, 0x3

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    const/16 v14, 0x9

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->error:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v14, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_37

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v11, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v14

    iput v14, v11, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->poorLinkLine:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setQcFailHistory()V
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$10400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    const/4 v15, 0x3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$18800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :cond_36
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v14, 0xd

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_8

    :cond_37
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v11

    if-eqz v11, :cond_38

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto :goto_9

    :cond_38
    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "DNS - Passed, Captive Portal - No Internet"

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_a

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mPreviousBSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :sswitch_6
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v14

    if-ne v11, v14, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v14, 0x25014

    invoke-virtual {v11, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->LINK_SAMPLING_INTERVAL_MS:J
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19700()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_39

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "No need to process RSSI_PKTCNT_FETCH_SUCCEEDED in connecting state."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19800(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_39
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/RssiPacketCountInfo;

    .local v5, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget v10, v5, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .local v10, "rssi":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_3a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fetch RSSI succeed, rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$19900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    if-eqz v11, :cond_3b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v12, v14, v16

    .local v12, "time":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_3c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x7530

    add-long v14, v14, v16

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v12, v14, v16

    goto/16 :goto_3

    :cond_3c
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gtz v11, :cond_41

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7008(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_3d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Max avoid time elapsed. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " times"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_3d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_40

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xa

    if-lt v11, v14, :cond_3e

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "Max count elapsed."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_3f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_3f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x7530

    add-long v14, v14, v16

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18500(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20200(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    goto/16 :goto_3

    :cond_3f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_b

    :cond_40
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_41
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20300(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v11

    if-lt v10, v11, :cond_45

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v14

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20400(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I

    move-result v14

    if-lt v11, v14, :cond_14

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_42

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Good link detected, rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v11

    const-wide/16 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$20002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_44

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_43

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->captivePortalCheckException()Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_43

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->checkCaptivePortal(Landroid/os/Handler;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->access$18500(Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;Landroid/os/Handler;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v14, 0x2100b

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mMaxAvoidCount:I
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7002(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_3

    :cond_43
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto :goto_c

    :cond_44
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v11, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_3

    :cond_45
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mSampleCount:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Link is still poor, time left="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v5    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    .end local v10    # "rssi":I
    .end local v12    # "time":J
    :sswitch_8
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v14, "RSSI_FETCH_FAILED"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "enableHIPRI"

    invoke-virtual {v11, v14, v15}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v14, "[VerifyingLinkState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$20900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v14, 0x2101f

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_4c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_46

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xd

    if-eq v11, v14, :cond_49

    :cond_46
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_47

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xd

    if-eq v11, v14, :cond_48

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    const v14, 0x2103d

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :cond_48
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_49
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-eqz v11, :cond_4b

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_4a

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    const v14, 0x2103d

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_4b
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "No QC ongoing at EVENT_SCAN_STARTED"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_4d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    const v14, 0x2103d

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    :goto_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v14, 0x21014

    invoke-virtual {v11, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    goto/16 :goto_3

    :cond_4d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    const v14, 0x2103d

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "EVENT_SCAN_TIMEOUT while VerifyingLinkState - reset scanning flag."

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v14, 0x21046

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21100(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getL2State()I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_55

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$16800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v11

    if-nez v11, :cond_4e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v11

    const/16 v14, 0xd

    if-eq v11, v14, :cond_50

    :cond_4e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_4f

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[VerifyingLinkState] Captive portal check can be affected by scan"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v11

    const v14, 0x2103e

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v15, 0x2100b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v16, v0

    # ++operator for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9504(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_50
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v11

    if-eqz v11, :cond_52

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_51

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[VerifyingLinkState] QC canceled by scan"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v11

    const v14, 0x2103e

    invoke-virtual {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v14, 0x2101f

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_3

    :cond_52
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->mRecoveryCanceledByScan:Z

    if-eqz v11, :cond_54

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_53

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "resume the recovery qc canceled by scan"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    :cond_54
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_14

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "No QC ongoing at EVENT_SCAN_COMPLETE"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_55
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$21200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    :sswitch_d
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100()Z

    move-result v11

    if-eqz v11, :cond_56

    const-string v11, "WifiWatchdogStateMachine"

    const-string v14, "[VerifyingLinkState] DELAYED_QUALITY_CHECK"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->qualityCheckRequest(I)V
    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9600(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_5
        0x2100b -> :sswitch_6
        0x2101f -> :sswitch_d
        0x21023 -> :sswitch_0
        0x2102c -> :sswitch_4
        0x2103d -> :sswitch_a
        0x2103e -> :sswitch_c
        0x2103f -> :sswitch_9
        0x21046 -> :sswitch_b
        0x25015 -> :sswitch_7
        0x25016 -> :sswitch_8
        0x50000 -> :sswitch_2
        0x50005 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
