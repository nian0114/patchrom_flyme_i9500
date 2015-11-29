.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Intent : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v14, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v14, :cond_1

    const-string v14, "GsmSST"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received Intent "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " while being destroyed. Ignoring."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.SCREEN_ON"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$202(Z)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .local v5, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v14, "SCREEN_ON"

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    .end local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    const-class v14, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v15, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .local v12, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v12, v14, :cond_1d

    const/4 v14, 0x0

    :goto_3
    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataSuspended:Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$402(Z)Z

    .end local v12    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_4
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_5
    const-string v14, "com.movial.IMS_REGISTRATION"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "IMS_REG_STATUS"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    const-string v14, "GsmSST"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IMS_REGISTRATION:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_8
    :goto_5
    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "salesCode":Ljava/lang/String;
    const-string v14, "CHN"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "CHC"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "CHU"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "CHM"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "CTC"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    :cond_a
    const-string v14, "CTC"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    :cond_b
    const-string v14, "CTC"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.samsung.intent.action.slot2LPM"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "gsm.sim.state"

    const-string v16, "ABSENT"

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "simState":Ljava/lang/String;
    const-string v14, "ABSENT"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "Unknown"

    const-string v15, "ril.modem.board2"

    const-string v16, "Unknown"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "slot 2 is ABSENT. Radio power off"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v15, "phone2_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .end local v10    # "simState":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isTwochipDsdsOnRoaming()Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.PHONE_STATE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v14, "gsm.sim.state"

    const-wide/16 v16, 0x0

    const-string v15, "ABSENT"

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "sim1StateCheck":Ljava/lang/String;
    const-string v14, "gsm.sim.state"

    const-wide/16 v16, 0x1

    const-string v15, "ABSENT"

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1, v15}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "sim2StateCheck":Ljava/lang/String;
    const-string v14, "persist.sys.dataprefer.simid"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "dataPrefer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/samsung/android/telephony/MultiSimManager;->getCallState(I)I

    move-result v15

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/samsung/android/telephony/MultiSimManager;->getCallState(I)I

    move-result v15

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DSDS_TWOCHIP] , mSlot1CallState : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mSlot2CallState : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mSlot1OldCallState : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1000()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mSlot2OldCallState : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mHasDisconnectedLte : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", getPhoneId()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v14, "ABSENT"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    const-string v14, "ABSENT"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1000()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v15

    if-ne v14, v15, :cond_d

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v15

    if-eq v14, v15, :cond_14

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DSDS_TWOCHIP] First mSlot1CallState : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mSlot2CallState : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v16, v0

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    :cond_e
    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1302(I)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_21

    :cond_10
    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    if-nez v14, :cond_14

    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "powerIntent":Landroid/content/Intent;
    const/high16 v14, 0x20000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v14, "state"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "callslot"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "1"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "slot"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] Add slot2 data off param in intent"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1300()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] send sendCallState message once for incomming call in CP1"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    const/16 v16, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static/range {v14 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1002(I)I

    .end local v4    # "dataPrefer":Ljava/lang/String;
    .end local v6    # "powerIntent":Landroid/content/Intent;
    .end local v8    # "sim1StateCheck":Ljava/lang/String;
    .end local v9    # "sim2StateCheck":Ljava/lang/String;
    :cond_14
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .local v12, "state":I
    const-string v14, "callslot"

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "callslot":I
    const-string v14, "slot"

    const/16 v15, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .local v11, "slot":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .restart local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    if-ne v11, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DSDS_TWOCHIP] Data Off slot "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    :cond_15
    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] slot1 has incomming call"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v14, "ril.call_block"

    const-string v15, "slot1call"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "callslot":I
    .end local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v7    # "salesCode":Ljava/lang/String;
    .end local v11    # "slot":I
    .end local v12    # "state":I
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .restart local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v14, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto/16 :goto_1

    .end local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v15, "SCREEN_ON"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mScreenState:Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$202(Z)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .restart local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v14, "SCREEN_OFF"

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v15, "SCREEN_OFF"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    const-string v14, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "status"

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .local v13, "status":I
    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/32 v16, 0xea60

    invoke-virtual/range {v14 .. v17}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "Send Message TERMINATE TIMEOUT(60000)"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1b
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->removeMessages(I)V

    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->emergencyDataOpened:Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$302(Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v15, "LCSAPP_START"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/32 v16, 0x927c0

    invoke-virtual/range {v14 .. v17}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "Send Message MAX TIMEOUT(600000)"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lscapp sent wrong data. status : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v13    # "status":I
    .local v12, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1d
    const/4 v14, 0x1

    goto/16 :goto_3

    .end local v12    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1e
    const-string v14, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v14, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .restart local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v14, "activeArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1f

    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$502(Z)Z

    const-string v14, "TetherOn"

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1f
    const/4 v14, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTetherState:Z
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$502(Z)Z

    const-string v14, "TetherOff"

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->notifyDataConnectionForSST(Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v2    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_20
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v14, :cond_8

    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/telephony/ServiceState;->setState(I)V

    goto/16 :goto_5

    .restart local v4    # "dataPrefer":Ljava/lang/String;
    .restart local v7    # "salesCode":Ljava/lang/String;
    .restart local v8    # "sim1StateCheck":Ljava/lang/String;
    .restart local v9    # "sim2StateCheck":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_26

    :cond_22
    const/4 v14, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_14

    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6    # "powerIntent":Landroid/content/Intent;
    const/high16 v14, 0x20000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v14, "state"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "callslot"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "0"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    const-string v14, "slot"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] Add slot1 data off param in intent"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_24

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1300()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] send sendCallState message once for incomming call in CP2"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x1

    const/16 v16, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static/range {v14 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1102(I)I

    goto/16 :goto_6

    .end local v6    # "powerIntent":Landroid/content/Intent;
    :cond_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    if-nez v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    if-nez v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] IDLE Setting"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v14, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasRinging:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1302(I)I

    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v6    # "powerIntent":Landroid/content/Intent;
    const/high16 v14, 0x20000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v14, "state"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    if-nez v14, :cond_28

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1400()I

    move-result v14

    if-nez v14, :cond_28

    const-string v14, "1"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    const-string v14, "slot"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] Add slot2 data on param in intent"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static/range {v14 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v14, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1OldCallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1002(I)I

    goto/16 :goto_6

    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_14

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1400()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_14

    const-string v14, "0"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_29

    const-string v14, "slot"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] Add slot1 data on param in intent"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v15, 0x1

    const/16 v16, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendCallState(II)V
    invoke-static/range {v14 .. v16}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v14, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2CallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v14

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2OldCallState:I
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1102(I)I

    goto/16 :goto_6

    .end local v4    # "dataPrefer":Ljava/lang/String;
    .end local v6    # "powerIntent":Landroid/content/Intent;
    .end local v8    # "sim1StateCheck":Ljava/lang/String;
    .end local v9    # "sim2StateCheck":Ljava/lang/String;
    .restart local v3    # "callslot":I
    .restart local v5    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v11    # "slot":I
    .local v12, "state":I
    :cond_2a
    const/4 v14, 0x1

    if-ne v3, v14, :cond_2b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] slot2 has incomming call"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v14, "ril.call_block"

    const-string v15, "slot2call"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] get DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v14

    if-ne v11, v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DSDS_TWOCHIP] Data On slot"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    :cond_2d
    const-string v14, "ril.call_block"

    const-string v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v15, "[DSDS_TWOCHIP] get DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
