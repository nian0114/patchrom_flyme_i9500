.class Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "IRCdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v14, "airplane_mode_on"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v10, 0x1

    .line 123
    .local v10, "isAirplaneMode":Z
    :goto_0
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 125
    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$002(Z)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 128
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$100()Z

    move-result v13

    if-nez v13, :cond_0

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$200()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 129
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 327
    :cond_1
    :goto_1
    return-void

    .line 121
    .end local v10    # "isAirplaneMode":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 131
    .restart local v10    # "isAirplaneMode":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto :goto_1

    .line 134
    :cond_4
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 135
    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$302(Z)Z

    goto :goto_1

    .line 136
    :cond_5
    const-string v13, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_CDMA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 137
    if-nez v10, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    .line 139
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$400()Z

    move-result v13

    if-nez v13, :cond_1

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$500()Z

    move-result v13

    if-nez v13, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNoServiceNotiIntent()V

    goto :goto_1

    .line 143
    :cond_6
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    goto :goto_1

    .line 146
    :cond_7
    const-string v13, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_CDMA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 147
    if-nez v10, :cond_a

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isChinaAreas()Z

    move-result v13

    if-nez v13, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeRequired()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 158
    :goto_2
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/ServiceStateTracker;->alreadyExpired:Z

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.mIsSwitchedToCdma"

    const-string v15, "false"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNetChangeIntent(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->incNetSrchCnt(I)V

    goto :goto_2

    .line 161
    :cond_9
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Ignore EXPIRED_INTERNAL_CDMA."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isChinaAreas()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1CdmaActive()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1DualCard()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 164
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Caused by isGlobalMode is false. Start cdma srch timer again."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 169
    :cond_a
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 172
    :cond_b
    const-string v13, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 173
    if-nez v10, :cond_e

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 175
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$600()Z

    move-result v13

    if-nez v13, :cond_c

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$700()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 176
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 178
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 182
    :cond_e
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 184
    :cond_f
    const-string v13, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_TIMER_EXPIRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 185
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$800()Z

    move-result v13

    if-nez v13, :cond_1

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "currGsmMccInt":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v3

    .line 188
    .local v3, "currCdmaMccInt":I
    const-string v13, "gsm.operator.numeric"

    const/4 v14, 0x1

    const-string v15, ""

    invoke-static {v13, v14, v15}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "currGsmOprtNum":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_10

    .line 191
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 194
    :cond_10
    const-string v13, "IRCDMASST"

    const-string v14, "[SimCardMngLaunch] simcardmanager launch timer expired."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SimCardMngLaunch] currCdmaMccInt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " currGsmMccInt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v8, "intentFwd":Landroid/content/Intent;
    const/high16 v13, 0x20000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    const/16 v13, 0x1cc

    if-eq v3, v13, :cond_11

    const/16 v13, 0x1c7

    if-eq v3, v13, :cond_11

    const/16 v13, 0x1cc

    if-eq v4, v13, :cond_11

    const/16 v13, 0x1c7

    if-ne v4, v13, :cond_12

    .line 202
    :cond_11
    const-string v13, "china_mainland"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopSimCardMngLaunchTimer(Lcom/android/internal/telephony/PhoneBase;)V

    .line 209
    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$902(Z)Z

    goto/16 :goto_1

    .line 204
    :cond_12
    const-string v13, "china_mainland"

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 211
    .end local v3    # "currCdmaMccInt":I
    .end local v4    # "currGsmMccInt":I
    .end local v5    # "currGsmOprtNum":Ljava/lang/String;
    .end local v8    # "intentFwd":Landroid/content/Intent;
    :cond_13
    const-string v13, "PRL_GETTING_RETRY_TIMER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 212
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] PRL_GETTING_RETRY_TIMER expired!!!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1000(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/16 v15, 0x3c

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "alarm"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 218
    .local v2, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->prlGettingRetrySender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v13}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 220
    const-string v13, "DCGGS"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "DCGS"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 222
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isFirstCdmaNoSvcChkTimerStarted()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isNetSrchTimerRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 223
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v7

    .line 224
    .local v7, "globalmode":Z
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] globalmode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mCurrentSrchNet:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v7, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_17

    const-string v13, "true"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v15, "ril.fakeDispCanceled"

    const-string v16, "false"

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1200()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_17

    .line 230
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] After global mode selected, cdma svc acquired. mNoSvcChkTimerRunning = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isNoSvcChkTimerRunning()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mNetSrchTimerRunning = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isNetSrchTimerRunning()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isNoSvcChkTimerRunning()Z

    move-result v13

    if-nez v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isNetSrchTimerRunning()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 233
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 235
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Send cdma acquisition noti!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.ACTION_GLOBAL_MODE_NETWORK_ACQUIRED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v9, "intentNetAcq":Landroid/content/Intent;
    const/high16 v13, 0x20000000

    invoke-virtual {v9, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    const-string v13, "acuiredNetwork"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    goto/16 :goto_1

    .line 243
    .end local v9    # "intentNetAcq":Landroid/content/Intent;
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNoSvcChkTimer()V

    goto/16 :goto_1

    .line 250
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v7    # "globalmode":Z
    :cond_18
    const-string v13, "SEND_BACKGROUND_SWITCHING"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 251
    const/4 v12, 0x0

    .line 252
    .local v12, "switchedGsm":Z
    sget-boolean v13, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    if-nez v13, :cond_19

    .line 253
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    move-result v12

    .line 256
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isCdmaManSel(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v11

    .line 258
    .local v11, "isCdmaManSel":Z
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] SEND_BACKGROUND_SWITCHING isCdmaManSel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isSlot1DualCard: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1DualCard()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isFirstCdmaNoSvcChkTimerStarted()Z

    move-result v13

    if-nez v13, :cond_1b

    .line 261
    const-string v13, "DCGGS"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    const-string v13, "DCGS"

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    :cond_1a
    const-string v13, "false"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v15, "ril.cdmaShortSrched"

    const-string v16, "false"

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    if-nez v11, :cond_1e

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.cdmaShortSrched"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_1b
    :goto_4
    if-eqz v11, :cond_1c

    const-string v13, "2012"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_ConfigSpecForCtcMtrIR"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1DualCard()Z

    move-result v13

    if-nez v13, :cond_1f

    .line 277
    :cond_1d
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] set fakeDispCanceled to true"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.fakeDispCanceled"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    .line 268
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 269
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] Currently cdma noSvc timer not started yet. Start here."

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNoSvcChkTimer()V

    goto :goto_4

    .line 281
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v13

    if-lez v13, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startFakeDispCancelTimer()V

    goto/16 :goto_1

    .line 285
    .end local v11    # "isCdmaManSel":Z
    .end local v12    # "switchedGsm":Z
    :cond_20
    const-string v13, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 289
    :cond_21
    const-string v13, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 291
    .local v6, "extra":Landroid/os/Bundle;
    const-string v13, "GSM"

    const-string v14, "pendedMode"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 292
    const-string v13, "switchToGsmInCdmaRoamingArea"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v14, "GSM"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 295
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v14, "GSM"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 298
    :cond_23
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] pendedMode error:: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pendedMode"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 300
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_24
    const-string v13, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 302
    .restart local v6    # "extra":Landroid/os/Bundle;
    const-string v13, "GSM"

    const-string v14, "pendedMode"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopPendingIntentTimer()V

    .line 304
    const-string v13, "isSwitchToGsmInCdmaRoamingArea"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    goto/16 :goto_1

    .line 306
    :cond_25
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1300()Z

    move-result v13

    if-eqz v13, :cond_26

    .line 307
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] cdma inSvc! no need to switch!!!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 309
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 312
    :cond_27
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] pendedMode error:: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pendedMode"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 314
    .end local v6    # "extra":Landroid/os/Bundle;
    :cond_28
    const-string v13, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    goto/16 :goto_1

    .line 316
    :cond_29
    const-string v13, "android.intent.action.ACTION_FAKE_DISP_CANCEL_TIMER"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 317
    const-string v13, "IRCDMASST"

    const-string v14, "[Global mode] set fakeDispCanceled to true"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v14, "ril.fakeDispCanceled"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateSpnDisplay()V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopFakeDispCancelTimer()V

    goto/16 :goto_1

    .line 322
    :cond_2a
    const-string v13, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->SlotSwitched()V

    goto/16 :goto_1

    .line 325
    :cond_2b
    const-string v13, "IRCDMASST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IRCDMASST received unexpected Intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
