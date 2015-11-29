.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiStateMachine"

    const-string v1, "Now, connected state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$29300(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState Enter  mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scanperiod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    int-to-long v2, v1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29402(Lcom/android/server/wifi/WifiStateMachine;J)J

    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->registerConnected()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$19402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$19902(Lcom/android/server/wifi/WifiStateMachine;I)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29608(Lcom/android/server/wifi/WifiStateMachine;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedState Enter start disconnect test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20059

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$29702(Lcom/android/server/wifi/WifiStateMachine;J)J

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisabledCaptivePortalSSID:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V
    invoke-static {v0, v4, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "re-initialize mWifiInfo rssi. enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$22308(Lcom/android/server/wifi/WifiStateMachine;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20053

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainIp:Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentScanAlarmMs:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$29402(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0
.end method

.method public exit()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "WifiStateMachine: Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mUpdateCountryCodeDb:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$30800(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$14200(Lcom/android/server/wifi/WifiStateMachine;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29702(Lcom/android/server/wifi/WifiStateMachine;J)J

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 39
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .local v11, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .local v33, "usableInternetConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    sparse-switch v34, :sswitch_data_0

    const/16 v34, 0x0

    :goto_0
    return v34

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiNative;->setHandoverScreen(Z)V

    :cond_0
    :goto_1
    :sswitch_1
    const/16 v34, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiNative;->setHandoverScreen(Z)V

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .local v9, "captivePortalConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_2

    const-string v34, "WifiStateMachine"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "WifiConfiguration captivePortalConfig is NULL! - NetworkId: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    packed-switch v34, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v21, 0x1

    .local v21, "isFirstDetection":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    if-eqz v9, :cond_3

    iget-boolean v0, v9, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v34, v0

    if-nez v34, :cond_4

    const/16 v21, 0x1

    :goto_2
    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v9, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v9, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v35, v0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    const/16 v36, 0xd

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V
    invoke-static/range {v34 .. v37}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Z)V

    const-string v34, "WifiStateMachine"

    const-string v35, "disconnected due to no authentication"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$29900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->supressBrowserOnCaptivePortal()Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$27200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-eqz v34, :cond_7

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_6

    const-string v34, "WifiStateMachine"

    const-string v35, "Supress Browser When Verizon Setup WiFi running"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Z)V

    :try_start_0
    new-instance v20, Landroid/content/Intent;

    const-string v34, "android.intent.action.VIEW"

    const-string v35, "http://www.google.com"

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v20, "intent":Landroid/content/Intent;
    const/high16 v34, 0x10400000

    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v34

    sget-object v35, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v20    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_6

    const-string v34, "WifiStateMachine"

    const-string v35, "We have not broswer to handle android.intent.action.VIEW"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v15    # "e":Landroid/content/ActivityNotFoundException;
    .end local v21    # "isFirstDetection":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    const/16 v36, 0xd

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyDisabledCaptivePortalStatus(ILjava/lang/String;Z)V
    invoke-static/range {v34 .. v37}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Z)V

    const-string v34, "WifiStateMachine"

    const-string v35, "disconnected by auth timeout"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, -0x63

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Z)V

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v34

    if-eqz v34, :cond_9

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v9, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v9, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v35, v0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, -0x63

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_a
    const-string v34, "WifiStateMachine"

    const-string v35, "CAPTIVE_PORTAL_EVENT_AUTHENTICATED"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v9    # "captivePortalConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .local v17, "goodReason":I
    if-nez v33, :cond_b

    const-string v34, "WifiStateMachine"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "WifiConfiguration usableInternetConfig is NULL! - NetworkId: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$26600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v34, v0

    if-nez v34, :cond_0

    const/16 v34, 0x2

    move/from16 v0, v17

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    const/16 v34, 0x5

    move/from16 v0, v17

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v35

    const-string v36, "usable_internet"

    const-string v37, "1"

    invoke-virtual/range {v34 .. v37}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, v33

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    goto/16 :goto_1

    .end local v17    # "goodReason":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, -0x63

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_c
    const-string v34, "KTCM"

    const-string v35, ""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isKTCMWifiSettingScreen(Landroid/content/Context;)Z
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$27700(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_d

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "******** POOR LINK DETECTED BUT KTCM IS RUNNING (ConnectedState) *********"

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$26600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-nez v34, :cond_e

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "******** POOR LINK DETECTED BUT POOR NETWORK AVOIDANCE IS DISABLED (ConnectedState) *********"

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "Watchdog reports poor link"

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    if-eqz v33, :cond_10

    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v34, v0

    if-eqz v34, :cond_10

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v35

    const-string v36, "usable_internet"

    const-string v37, "0"

    invoke-virtual/range {v34 .. v37}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, v33

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v34 .. v38}, Lcom/android/server/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_11
    const/4 v6, 0x1

    .local v6, "bKeepL2":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v29

    .local v29, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    .local v13, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v5, 0x0

    .local v5, "bHS20Enabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    const-string v35, "wifi_hotspot20_enable"

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    const/4 v5, 0x1

    :goto_4
    if-eqz v29, :cond_20

    if-eqz v5, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/ScanResult;

    .local v26, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "HS20"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_12

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_13

    const-string v34, "WifiStateMachine"

    const-string v35, "HS20 AP is found. Disconnect L2."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v6, 0x0

    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v26    # "result":Landroid/net/wifi/ScanResult;
    :cond_14
    if-eqz v6, :cond_20

    if-eqz v13, :cond_20

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_15
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_20

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .local v10, "conf":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    move/from16 v34, v0

    if-eqz v34, :cond_15

    const-string v34, "WifiStateMachine"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Find usableInternet "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/ScanResult;

    .local v28, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v12, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .local v12, "configSsid":Ljava/lang/String;
    const/4 v14, -0x1

    .local v14, "configuredSecurity":I
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-eqz v34, :cond_1a

    const/4 v14, 0x2

    :goto_6
    const/16 v30, 0x0

    .local v30, "scanedSecurity":I
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "PSK"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1e

    const/16 v30, 0x2

    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v34

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_16

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    move/from16 v0, v30

    if-ne v14, v0, :cond_16

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_16

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    move/from16 v34, v0

    if-nez v34, :cond_16

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_18

    const-string v34, "WifiStateMachine"

    const-string v35, "There\'s internet available AP. Disable current AP."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_5

    .end local v10    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "configSsid":Ljava/lang/String;
    .end local v14    # "configuredSecurity":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v28    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v30    # "scanedSecurity":I
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_4

    .restart local v10    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v12    # "configSsid":Ljava/lang/String;
    .restart local v14    # "configuredSecurity":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v28    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_1a
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-nez v34, :cond_1b

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    invoke-virtual/range {v34 .. v35}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-nez v34, :cond_1b

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    const/16 v35, 0x7

    invoke-virtual/range {v34 .. v35}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-nez v34, :cond_1b

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    const/16 v35, 0x9

    invoke-virtual/range {v34 .. v35}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-eqz v34, :cond_1c

    :cond_1b
    const/4 v14, 0x3

    goto/16 :goto_6

    :cond_1c
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aget-object v34, v34, v35

    if-eqz v34, :cond_1d

    const/4 v14, 0x1

    :goto_8
    goto/16 :goto_6

    :cond_1d
    const/4 v14, 0x0

    goto :goto_8

    .restart local v30    # "scanedSecurity":I
    :cond_1e
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "EAP"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1f

    const/16 v30, 0x3

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "WEP"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_17

    const/16 v30, 0x1

    goto/16 :goto_7

    .end local v10    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "configSsid":Ljava/lang/String;
    .end local v14    # "configuredSecurity":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v28    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v30    # "scanedSecurity":I
    :cond_20
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mL2LinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$26402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v34

    if-eqz v34, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$10502(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v35

    sget-object v36, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual/range {v34 .. v38}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$23600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30200(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :catch_1
    move-exception v25

    .local v25, "re":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Failed to disable IPv6: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v25    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v15

    .local v15, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Failed to disable IPv6: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .end local v15    # "e":Ljava/lang/IllegalStateException;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v37, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Lcom/android/server/wifi/WifiStateMachine;->access$8900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v34 .. v38}, Lcom/android/server/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .end local v5    # "bHS20Enabled":Z
    .end local v6    # "bKeepL2":Z
    .end local v13    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v29    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    if-nez v34, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiConfigStore;->handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    :cond_23
    :goto_a
    const/16 v34, 0x1

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-eqz v11, :cond_23

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    goto :goto_a

    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$29600(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29702(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .local v32, "toBSSID":Ljava/lang/String;
    if-eqz v32, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V

    :cond_25
    const/16 v34, 0x0

    goto/16 :goto_0

    .end local v32    # "toBSSID":Ljava/lang/String;
    :sswitch_8
    const-wide/16 v22, 0x0

    .local v22, "lastRoam":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->notifyCaptivePortal(Z)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, -0x63

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mManualConnectionId:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$402(Lcom/android/server/wifi/WifiStateMachine;I)I

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    move/from16 v34, v0

    if-eqz v34, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mHandoverState:Z

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v34

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$29700(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v36

    sub-long v22, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29702(Lcom/android/server/wifi/WifiStateMachine;J)J

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$28300(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-eqz v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-nez v34, :cond_2d

    if-eqz v11, :cond_2d

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v34, v0

    if-nez v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v34

    if-nez v34, :cond_2d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_29

    const-wide/16 v34, 0x0

    cmp-long v34, v22, v34

    if-lez v34, :cond_2d

    const-wide/16 v34, 0x7d0

    cmp-long v34, v22, v34

    if-gez v34, :cond_2d

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$26600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-nez v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v34

    if-eqz v34, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    sget v35, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v34

    if-eqz v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v34

    sget v35, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_2d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$18502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    const v36, 0x20057

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v38, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v38 .. v38}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v38

    invoke-virtual/range {v35 .. v38}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    const-wide/16 v36, 0x1b58

    invoke-virtual/range {v34 .. v37}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " RSSI="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " freq="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " reason="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " -> debounce"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_2c
    const/16 v34, 0x1

    goto/16 :goto_0

    :cond_2d
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v34

    if-eqz v34, :cond_0

    const/4 v4, -0x1

    .local v4, "ajst":I
    if-eqz v11, :cond_2e

    iget v4, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NETWORK_DISCONNECTION_EVENT in connected state BSSID="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " RSSI="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " freq="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " was debouncing="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " reason="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " ajst="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v4    # "ajst":I
    .end local v22    # "lastRoam":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-wide/16 v36, 0x0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29702(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/ScanResult;

    .local v8, "candidate":Landroid/net/wifi/ScanResult;
    const-string v7, "any"

    .local v7, "bssid":Ljava/lang/String;
    if-eqz v8, :cond_2f

    invoke-virtual {v8}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v34

    if-eqz v34, :cond_2f

    iget-object v7, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v24

    .local v24, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    if-nez v11, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "AUTO_ROAM and no config, bail out..."

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "CMD_AUTO_ROAM sup state "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$8800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " my state "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$30500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " nid="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " config "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " roam="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " targetRoamBSSID "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v36, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/android/server/wifi/WifiStateMachine;->access$12400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11, v7}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v34

    if-nez v34, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "AUTO_ROAM nothing to do"

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4700()I

    move-result v35

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$4602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v24

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    const/16 v27, 0x0

    .local v27, "ret":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$9000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v24

    if-eq v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v34

    if-eqz v34, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v34

    if-eqz v34, :cond_32

    const/16 v27, 0x1

    :cond_32
    :goto_b
    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v35

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$19402(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v35, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$19902(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v35 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$20000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    move-result v27

    goto :goto_b

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Failed to connect config: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " netId: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const v35, 0x25002

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move/from16 v2, v35

    move/from16 v3, v36

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$5400()I

    move-result v35

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$4602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .end local v7    # "bssid":Ljava/lang/String;
    .end local v8    # "candidate":Landroid/net/wifi/ScanResult;
    .end local v24    # "netId":I
    .end local v27    # "ret":Z
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v34

    if-eqz v34, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v34

    const v35, 0x30008

    invoke-virtual/range {v34 .. v35}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->waitForDhcpRelease(I)I
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30700(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v34

    if-eqz v34, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "waitForDhcpRelease error"

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const-string v35, "waitForDhcpRelease() Success"

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUpdateCountryCodeDb:Z
    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiStateMachine;->access$30802(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    const/16 v34, 0x0

    goto/16 :goto_0

    :sswitch_c
    sget-boolean v34, Lcom/android/server/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMobility:Lcom/android/server/wifi/WifiStateMachine$WifiMobility;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiMobility;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiMobility;->handleEAP(Ljava/lang/String;)V

    new-instance v16, Landroid/content/Intent;

    const-string v34, "android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v16, "eapIntent":Landroid/content/Intent;
    const-string v34, "info_type"

    const/16 v35, 0x14

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v35, "message"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v16    # "eapIntent":Landroid/content/Intent;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v34 .. v34}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->s69_request(Ljava/lang/String;)Z

    move-result v31

    .local v31, "status":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v35, v0

    if-eqz v31, :cond_37

    const/16 v34, 0x1

    :goto_c
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v34

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    :cond_37
    const/16 v34, -0x1

    goto :goto_c

    :sswitch_data_0
    .sparse-switch
        0x20051 -> :sswitch_b
        0x20059 -> :sswitch_6
        0x20063 -> :sswitch_0
        0x2007c -> :sswitch_c
        0x2007d -> :sswitch_1
        0x20090 -> :sswitch_5
        0x20091 -> :sswitch_9
        0x20093 -> :sswitch_7
        0x200a1 -> :sswitch_a
        0x20193 -> :sswitch_d
        0x21015 -> :sswitch_4
        0x21016 -> :sswitch_3
        0x21019 -> :sswitch_2
        0x24004 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2101a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
