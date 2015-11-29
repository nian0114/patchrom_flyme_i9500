.class public Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "IRCdmaServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IRCDMASST"

.field static final MAX_NUM_DATA_STATE_READS:I = 0x96

.field private static mSleepPendedWhileNetSrchCdma:Z


# instance fields
.field private countCheckDataStateReads:I

.field private mCurrentCdmaMcc:I

.field private mIrIntentReceiver:Landroid/content/BroadcastReceiver;

.field prlGettingRetrySender:Landroid/app/PendingIntent;

.field sender_FakeDispCancelTimer:Landroid/app/PendingIntent;

.field sender_NetSrchTimer:Landroid/app/PendingIntent;

.field sender_NoSvcChkTimer:Landroid/app/PendingIntent;

.field sender_PendingIntentTimer:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSleepPendedWhileNetSrchCdma:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->countCheckDataStateReads:I

    .line 113
    iput v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentCdmaMcc:I

    .line 117
    new-instance v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v0, "irFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_CDMA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_CDMA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_ENTER_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "PRL_GETTING_RETRY_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_RESP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "SEND_BACKGROUND_SWITCHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "android.intent.action.ACTION_FAKE_DISP_CANCEL_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 100
    sget v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z

    return p0
.end method


# virtual methods
.method public SlotSwitched()V
    .locals 2

    .prologue
    .line 1190
    const-string v0, "IRCDMASST"

    const-string v1, "CdmaServiceStateTracker - SlotSwitched"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mDesiredPowerState:Z

    .line 1193
    const/16 v0, 0x97

    iput v0, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->countCheckDataStateReads:I

    .line 1194
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1195
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "IRCdmaServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopPendingIntentTimer()V

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 366
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 372
    const-string v0, "IRCdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public getCurrCdmaMcc()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "currCdmaMccInt":I
    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "currCdmaOprtNum":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 949
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 952
    :cond_0
    const-string v3, "DCGGS"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 953
    const-string v3, "0"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 959
    .end local v0    # "currCdmaMccInt":I
    :cond_1
    :goto_0
    return v0

    .restart local v0    # "currCdmaMccInt":I
    :cond_2
    move v0, v2

    .line 956
    goto :goto_0
.end method

.method public getCurrCdmaMnc()I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "currCdmaMncInt":I
    const-string v2, "gsm.operator.numeric"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "currCdmaOprtNum":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 967
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 970
    :cond_0
    const-string v2, "DCGGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 971
    const-string v2, "0"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    .end local v0    # "currCdmaMncInt":I
    :cond_1
    :goto_0
    return v0

    .line 974
    .restart local v0    # "currCdmaMncInt":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 382
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 383
    return-void
.end method

.method public isFirstCdmaNoSvcChkTimerStarted()Z
    .locals 1

    .prologue
    .line 981
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    return v0
.end method

.method public isNetSrchTimerRunning()Z
    .locals 1

    .prologue
    .line 985
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    return v0
.end method

.method public isNoSvcChkTimerRunning()Z
    .locals 1

    .prologue
    .line 989
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    return v0
.end method

.method public isSlot2GsmInSvc()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1282
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "GSM_ACTIVATE"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v0, v3

    .line 1283
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1284
    .local v2, "isSlotSwitched":Z
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1286
    .local v1, "gsmSs":I
    const-string v5, "IRCDMASST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[global mode] gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmSs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v3

    .end local v0    # "gsmActive":Z
    .end local v1    # "gsmSs":I
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 1282
    goto :goto_0

    .restart local v0    # "gsmActive":Z
    .restart local v1    # "gsmSs":I
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 1288
    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 902
    const-string v0, "IRCDMASST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 907
    const-string v0, "IRCDMASST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method protected pollStateDone()V
    .locals 39

    .prologue
    .line 527
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "pollStateDone: cdma oldSS=["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "] newSS=["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 528
    const-string v35, "ro.csc.sales_code"

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 530
    .local v30, "salesCode":Ljava/lang/String;
    sget-boolean v35, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v35, :cond_0

    const-string v35, "telephony.test.forceRoaming"

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 534
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    if-eqz v35, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    if-nez v35, :cond_22

    const/4 v15, 0x1

    .line 540
    .local v15, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    if-nez v35, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    if-eqz v35, :cond_23

    const/4 v13, 0x1

    .line 544
    .local v13, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    if-eqz v35, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    if-nez v35, :cond_24

    const/4 v9, 0x1

    .line 548
    .local v9, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    if-nez v35, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    if-eqz v35, :cond_25

    const/4 v11, 0x1

    .line 552
    .local v11, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    const/4 v10, 0x1

    .line 555
    .local v10, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_27

    const/16 v17, 0x1

    .line 558
    .local v17, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_28

    const/16 v16, 0x1

    .line 561
    .local v16, "hasRilDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_29

    const/4 v12, 0x1

    .line 563
    .local v12, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v35

    if-nez v35, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v35

    if-eqz v35, :cond_2a

    const/16 v19, 0x1

    .line 565
    .local v19, "hasRoamingOn":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v35

    if-eqz v35, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v35

    if-nez v35, :cond_2b

    const/16 v18, 0x1

    .line 567
    .local v18, "hasRoamingOff":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_2c

    const/4 v14, 0x1

    .line 570
    .local v14, "hasLocationChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mForceHasChanged:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 571
    const/4 v12, 0x1

    .line 572
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mForceHasChanged:Z

    .line 573
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Change hasChanged to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 578
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    .line 580
    :cond_2
    const v35, 0xc3c4

    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 586
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    .line 587
    .local v34, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 588
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v33, v0

    .line 593
    .local v33, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 594
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 597
    const-string v35, "DCGGS"

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_4

    const-string v35, "DCGS"

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 599
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    if-nez v35, :cond_2d

    .line 600
    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    .line 608
    :cond_5
    :goto_b
    if-eqz v17, :cond_6

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updatePhoneObject()V

    .line 610
    const-string v35, "CTC"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v37

    invoke-static/range {v37 .. v37}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_6
    if-eqz v16, :cond_7

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v37

    invoke-static/range {v37 .. v37}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_7
    if-eqz v15, :cond_8

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 625
    :cond_8
    if-eqz v12, :cond_c

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v35

    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    move/from16 v35, v0

    if-nez v35, :cond_9

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v35

    if-nez v35, :cond_2e

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v6

    .line 641
    .local v6, "eriText":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 650
    .end local v6    # "eriText":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v35, "gsm.operator.numeric"

    const-string v36, ""

    invoke-static/range {v35 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 657
    .local v29, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v26

    .line 660
    .local v26, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v32

    .line 662
    .local v32, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 665
    .end local v32    # "sid":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.operator.numeric"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2f

    .line 670
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "operatorNumeric "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "is invalid"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.operator.iso-country"

    const-string v37, ""

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGotCountryCode:Z

    .line 709
    :cond_b
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v36, v0

    const-string v37, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v35

    if-eqz v35, :cond_30

    const-string v35, "true"

    :goto_e
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    .line 715
    .local v31, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.servicestate"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateSpnDisplay()V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 721
    .end local v26    # "operatorNumeric":Ljava/lang/String;
    .end local v29    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v31    # "serviceStateForProperty":I
    :cond_c
    if-eqz v9, :cond_d

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 725
    :cond_d
    if-eqz v11, :cond_e

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 729
    :cond_e
    if-nez v10, :cond_f

    if-eqz v16, :cond_10

    .line 730
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 734
    :cond_10
    if-eqz v19, :cond_11

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 738
    :cond_11
    if-eqz v18, :cond_12

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 742
    :cond_12
    if-eqz v14, :cond_13

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 747
    :cond_13
    const-string v35, "DCGGS"

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_14

    const-string v35, "DCGS"

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 749
    :cond_14
    if-nez v12, :cond_15

    sget-boolean v35, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    if-eqz v35, :cond_15

    sget-boolean v35, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    if-eqz v35, :cond_18

    .line 750
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v8

    .line 751
    .local v8, "globalmode":Z
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[Global mode] globalmode = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " mCurrentSrchNet:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    if-eqz v8, :cond_18

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    if-eqz v35, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v35

    if-nez v35, :cond_31

    const-string v35, "true"

    const-string v36, "ril.fakeDispCanceled"

    const-string v37, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_31

    .line 759
    :cond_16
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[Global mode] After global mode selected, cdma svc acquired. mNoSvcChkTimerRunning = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " mNetSrchTimerRunning = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    sget-boolean v35, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    if-nez v35, :cond_17

    sget-boolean v35, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    if-eqz v35, :cond_18

    .line 762
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 764
    const-string v35, "IRCDMASST"

    const-string v36, "[Global mode] Send cdma acquisition noti!"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v20, Landroid/content/Intent;

    const-string v35, "android.intent.action.ACTION_GLOBAL_MODE_NETWORK_ACQUIRED"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v35, 0x20000000

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 767
    const-string v35, "acuiredNetwork"

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 779
    .end local v8    # "globalmode":Z
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_18
    :goto_f
    if-eqz v12, :cond_21

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1CdmaActive()Z

    move-result v22

    .line 781
    .local v22, "isSlot1CdmaActive":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v5

    .line 782
    .local v5, "currCdmaMccInt":I
    const-string v35, "gsm.ctc.timedispschmmcc"

    const-string v36, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 783
    .local v28, "prevCdmaMccStr":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 785
    .local v27, "prevCdmaMcc":I
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[SimCardMngLaunch] currCdmaMccInt : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " currGsmMccInt : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " mSimCardMngLnchTimerRunning : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngLnchTimerRunning:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " mSimCardMngEverLaunched : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " isSlot1CdmaActive : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/16 v35, 0x1cc

    move/from16 v0, v35

    if-eq v5, v0, :cond_19

    const/16 v35, 0x1c7

    move/from16 v0, v35

    if-eq v5, v0, :cond_19

    const/16 v35, 0x1c2

    move/from16 v0, v35

    if-ne v5, v0, :cond_32

    .line 791
    :cond_19
    const-string v35, "IRCDMASST"

    const-string v36, "[Global mode] set fakeDispCanceled to true"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.fakeDispCanceled"

    const-string v37, "true"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_1a
    :goto_10
    if-gtz v5, :cond_1b

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    if-lez v35, :cond_40

    .line 801
    :cond_1b
    const-string v35, "IRCDMASST"

    const-string v36, "[SimCardMngLaunch] succeed in getting mcc from network during SimCardMngLnchTimerRunning."

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v21, Landroid/content/Intent;

    const-string v35, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v21, "intentFwd":Landroid/content/Intent;
    const/high16 v35, 0x20000000

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 806
    const/16 v35, 0x1cc

    move/from16 v0, v35

    if-eq v5, v0, :cond_1c

    const/16 v35, 0x1c7

    move/from16 v0, v35

    if-eq v5, v0, :cond_1c

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    const/16 v36, 0x1cc

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1c

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    const/16 v36, 0x1c7

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_33

    .line 808
    :cond_1c
    const-string v35, "china_mainland"

    const/16 v36, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.chinamainland"

    const-string v37, "true"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.cdmaprefcountry"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.mIsSwitchedToCdma"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v35, "IRCDMASST"

    const-string v36, "[global mode] China/Macau. CDMA_MANUAL_SELECTED reset."

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "CDMA_MANUAL_SELECTED"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 823
    :goto_11
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[SimCardMngLaunch] china_mainland : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "gsm.ctc.chinamainland"

    const-string v38, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " cdmaPrefCountry : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "gsm.ctc.cdmaprefcountry"

    const-string v38, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    sget-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngLnchTimerRunning:Z

    if-eqz v35, :cond_1d

    sget-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z

    if-nez v35, :cond_1d

    .line 826
    const-string v35, "IRCDMASST"

    const-string v36, "[SimCardMngLaunch] ACTION_SIMCARDMANAGER_LAUNCH sent"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopSimCardMngLaunchTimer(Lcom/android/internal/telephony/PhoneBase;)V

    .line 830
    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z

    .line 833
    :cond_1d
    const-string v35, "ril.mHasEverSwitchedToGsm"

    const-string v36, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 834
    .local v24, "mHasEverSwitchedToGsm":Ljava/lang/String;
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[global mode] currCdmaMccInt : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " prevCdmaMcc : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v35, "true"

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 837
    const-string v35, "2012"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v36

    const-string v37, "CscFeature_RIL_ConfigSpecForCtcMtrIR"

    invoke-virtual/range {v36 .. v37}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_37

    const-string v35, "DCGGS"

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_37

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isDualSlotActive()Z

    move-result v35

    if-eqz v35, :cond_36

    .line 840
    const-string v35, "IRCDMASST"

    const-string v36, "[Global Mode] Dual SlotActive "

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    if-lez v5, :cond_1e

    const/16 v35, 0x1c6

    move/from16 v0, v35

    if-eq v5, v0, :cond_1e

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    if-lez v35, :cond_1e

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    const/16 v36, 0x1c6

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1e

    .line 842
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[Global Mode] mHasEverSwitchedToGsm reset to false, currCdmaMccInt: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " currGsmMccInt: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.mHasEverSwitchedToGsm"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_1e
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    if-nez v35, :cond_20

    .line 870
    const/16 v35, 0x1cc

    move/from16 v0, v35

    if-eq v5, v0, :cond_1f

    const/16 v35, 0x1c7

    move/from16 v0, v35

    if-eq v5, v0, :cond_1f

    move/from16 v0, v27

    if-eq v0, v5, :cond_1f

    if-eqz v5, :cond_1f

    sget-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mHasTimeDispPopupDispd:Z

    if-nez v35, :cond_1f

    const-string v35, "true"

    const-string v36, "ril.fakeDispCanceled"

    const-string v37, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    .line 874
    new-instance v20, Landroid/content/Intent;

    const-string v35, "android.intent.action.ACTION_TIME_DISP_SCHM_LAUNCH"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .restart local v20    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 876
    const/16 v35, 0x1

    sput-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mHasTimeDispPopupDispd:Z

    .line 878
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_1f
    if-lez v5, :cond_20

    move/from16 v0, v27

    if-eq v0, v5, :cond_20

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.timedispschmmcc"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    if-eqz v27, :cond_20

    .line 882
    const-string v35, "IRCDMASST"

    const-string v36, "[global mode] mHasTimeDispPopupDispd reset."

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mHasTimeDispPopupDispd:Z

    .line 893
    .end local v21    # "intentFwd":Landroid/content/Intent;
    .end local v24    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    :cond_20
    :goto_13
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    .line 898
    .end local v5    # "currCdmaMccInt":I
    .end local v22    # "isSlot1CdmaActive":Z
    .end local v27    # "prevCdmaMcc":I
    .end local v28    # "prevCdmaMccStr":Ljava/lang/String;
    :cond_21
    return-void

    .line 536
    .end local v9    # "hasCdmaDataConnectionAttached":Z
    .end local v10    # "hasCdmaDataConnectionChanged":Z
    .end local v11    # "hasCdmaDataConnectionDetached":Z
    .end local v12    # "hasChanged":Z
    .end local v13    # "hasDeregistered":Z
    .end local v14    # "hasLocationChanged":Z
    .end local v15    # "hasRegistered":Z
    .end local v16    # "hasRilDataRadioTechnologyChanged":Z
    .end local v17    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v18    # "hasRoamingOff":Z
    .end local v19    # "hasRoamingOn":Z
    .end local v33    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v34    # "tss":Landroid/telephony/ServiceState;
    :cond_22
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 540
    .restart local v15    # "hasRegistered":Z
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 544
    .restart local v13    # "hasDeregistered":Z
    :cond_24
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 548
    .restart local v9    # "hasCdmaDataConnectionAttached":Z
    :cond_25
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 552
    .restart local v11    # "hasCdmaDataConnectionDetached":Z
    :cond_26
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 555
    .restart local v10    # "hasCdmaDataConnectionChanged":Z
    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 558
    .restart local v17    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_28
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 561
    .restart local v16    # "hasRilDataRadioTechnologyChanged":Z
    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 563
    .restart local v12    # "hasChanged":Z
    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 565
    .restart local v19    # "hasRoamingOn":Z
    :cond_2b
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 567
    .restart local v18    # "hasRoamingOff":Z
    :cond_2c
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 603
    .restart local v14    # "hasLocationChanged":Z
    .restart local v33    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v34    # "tss":Landroid/telephony/ServiceState;
    :cond_2d
    const/16 v35, 0x0

    sput-boolean v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    goto/16 :goto_b

    .line 638
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v35

    const v36, 0x10400d2

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "eriText":Ljava/lang/String;
    goto/16 :goto_c

    .line 674
    .end local v6    # "eriText":Ljava/lang/String;
    .restart local v26    # "operatorNumeric":Ljava/lang/String;
    .restart local v29    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_2f
    const-string v23, ""

    .line 675
    .local v23, "isoCountryCode":Ljava/lang/String;
    const/16 v35, 0x0

    const/16 v36, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 677
    .local v25, "mcc":Ljava/lang/String;
    const/16 v35, 0x0

    const/16 v36, 0x3

    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v23

    .line 685
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.operator.iso-country"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGotCountryCode:Z

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v26

    move-object/from16 v3, v29

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 679
    :catch_0
    move-exception v7

    .line 680
    .local v7, "ex":Ljava/lang/NumberFormatException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_14

    .line 681
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .line 682
    .local v7, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_14

    .line 709
    .end local v7    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v23    # "isoCountryCode":Ljava/lang/String;
    .end local v25    # "mcc":Ljava/lang/String;
    :cond_30
    const-string v35, "false"

    goto/16 :goto_e

    .line 772
    .end local v26    # "operatorNumeric":Ljava/lang/String;
    .end local v29    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v8    # "globalmode":Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNoSvcChkTimer()V

    goto/16 :goto_f

    .line 793
    .end local v8    # "globalmode":Z
    .restart local v5    # "currCdmaMccInt":I
    .restart local v22    # "isSlot1CdmaActive":Z
    .restart local v27    # "prevCdmaMcc":I
    .restart local v28    # "prevCdmaMccStr":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    if-nez v35, :cond_1a

    if-lez v5, :cond_1a

    move/from16 v0, v27

    if-eq v0, v5, :cond_1a

    .line 796
    const-string v35, "IRCDMASST"

    const-string v36, "[Global mode] set fakeDispCanceled to false"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.fakeDispCanceled"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 814
    .restart local v21    # "intentFwd":Landroid/content/Intent;
    :cond_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isCdmaPrefAreas(I)Z

    move-result v35

    if-nez v35, :cond_34

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isCdmaPrefAreas(I)Z

    move-result v35

    if-eqz v35, :cond_35

    .line 815
    :cond_34
    const-string v35, "china_mainland"

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.chinamainland"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.cdmaprefcountry"

    const-string v37, "true"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 819
    :cond_35
    const-string v35, "china_mainland"

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.chinamainland"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.cdmaprefcountry"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 845
    .restart local v24    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    :cond_36
    if-lez v5, :cond_1e

    const/16 v35, 0x1c6

    move/from16 v0, v35

    if-eq v5, v0, :cond_1e

    .line 846
    const-string v35, "IRCDMASST"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "[Global Mode] mHasEverSwitchedToGsm reset to false, currCdmaMccInt: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.mHasEverSwitchedToGsm"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 850
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isDualSlotActive()Z

    move-result v35

    if-eqz v35, :cond_3c

    .line 851
    if-lez v5, :cond_38

    move/from16 v0, v27

    if-eq v5, v0, :cond_38

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    if-lez v35, :cond_38

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    sget v36, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->prevGsmMccInt:I

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3a

    :cond_38
    const/16 v35, 0x1cc

    move/from16 v0, v35

    if-ne v5, v0, :cond_39

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    const/16 v36, 0x1cc

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3a

    :cond_39
    const/16 v35, 0x1c7

    move/from16 v0, v35

    if-ne v5, v0, :cond_1e

    sget v35, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->currGsmMccInt:I

    const/16 v36, 0x1c7

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 855
    :cond_3a
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isUsAreas(I)Z

    move-result v35

    if-eqz v35, :cond_3b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isUsAreas(I)Z

    move-result v35

    if-nez v35, :cond_1e

    .line 856
    :cond_3b
    const-string v35, "IRCDMASST"

    const-string v36, "[Global Mode] mHasEverSwitchedToGsm reset to false"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.mHasEverSwitchedToGsm"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 860
    :cond_3c
    if-lez v5, :cond_3d

    move/from16 v0, v27

    if-ne v5, v0, :cond_3e

    :cond_3d
    const/16 v35, 0x1cc

    move/from16 v0, v35

    if-eq v5, v0, :cond_3e

    const/16 v35, 0x1c7

    move/from16 v0, v35

    if-ne v5, v0, :cond_1e

    .line 862
    :cond_3e
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isUsAreas(I)Z

    move-result v35

    if-eqz v35, :cond_3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isUsAreas(I)Z

    move-result v35

    if-nez v35, :cond_1e

    .line 863
    :cond_3f
    const-string v35, "IRCDMASST"

    const-string v36, "[Global Mode] mHasEverSwitchedToGsm reset to false"

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "ril.mHasEverSwitchedToGsm"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 887
    .end local v21    # "intentFwd":Landroid/content/Intent;
    .end local v24    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/telephony/ServiceState;->getState()I

    move-result v35

    if-eqz v35, :cond_20

    .line 888
    const-string v35, "IRCDMASST"

    const-string v36, "[SimCardMngLaunch] china_mainland reset to false."

    invoke-static/range {v35 .. v36}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.chinamainland"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v35, v0

    const-string v36, "gsm.ctc.cdmaprefcountry"

    const-string v37, "false"

    invoke-virtual/range {v35 .. v37}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method public sendNetChangeIntent(Z)V
    .locals 5
    .param p1, "changeToCdma"    # Z

    .prologue
    const/4 v4, 0x1

    .line 920
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 922
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSleepPendedWhileNetSrchCdma:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 924
    const/16 v1, 0x46

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 925
    sput-boolean v4, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSleepPendedWhileNetSrchCdma:Z

    .line 926
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] Sleep pended while processing cdma net srch intent."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v0, "intentFwd":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 930
    if-eqz p1, :cond_4

    .line 931
    const-string v1, "globalmodetype"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 936
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot2GsmInSvc()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 937
    const-string v1, "isSlot2GsmInSvc"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 939
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 940
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED sent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .end local v0    # "intentFwd":Landroid/content/Intent;
    :cond_3
    return-void

    .line 934
    .restart local v0    # "intentFwd":Landroid/content/Intent;
    :cond_4
    const-string v1, "globalmodetype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public sendNoServiceNotiIntent()V
    .locals 3

    .prologue
    .line 911
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_GLOBAL_NO_SERVICE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "intentFwd":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 915
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 917
    .end local v0    # "intentFwd":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setFakeDispCancelToCP()V
    .locals 7

    .prologue
    .line 1105
    const-string v4, "IRCDMASST"

    const-string v5, "[Global mode] set fakeDispCanceled to cp"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1108
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1110
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 1111
    .local v3, "rawLen":I
    const/16 v4, 0x51

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1112
    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1113
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1114
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "rawLen":I
    :goto_0
    return-void

    .line 1115
    :catch_0
    move-exception v2

    .line 1116
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "IRCDMASST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in set fakeDispCanceled to cp, exception is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_2

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 439
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isCdmaManSel(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 448
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 449
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startFakeDispCancelTimer()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1121
    const-string v2, "DCGGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1123
    :cond_0
    const-string v2, "IRCDMASST"

    const-string v3, "[Global mode] CDMA startFakeDispCancelTimer Start!!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1126
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_FAKE_DISP_CANCEL_TIMER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_FakeDispCancelTimer:Landroid/app/PendingIntent;

    .line 1129
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_FakeDispCancelTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1131
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1198
    const-string v5, "DCGGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1200
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    .line 1202
    .local v2, "isAirplaneMode":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 1204
    if-eqz v2, :cond_3

    .line 1205
    const-string v3, "IRCDMASST"

    const-string v4, "[Global mode] Now airplane mode on. Do not start cdma net srch timer"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .end local v2    # "isAirplaneMode":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 1200
    goto :goto_0

    .line 1208
    .restart local v2    # "isAirplaneMode":Z
    :cond_3
    sget-boolean v5, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v5

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-eqz v5, :cond_5

    .line 1209
    :cond_4
    const-string v3, "IRCDMASST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[global mode] Do not start cdma net srch timer:: mCdmaInSvc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPwrSaveModeTimerRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPendingIntentTimerRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "true"

    const-string v6, "ril.fakeDispCanceled"

    const-string v7, "false"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1216
    const-string v3, "IRCDMASST"

    const-string v4, "[global mode] Do not start cdma net srch timer:: Data is still in service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1220
    :cond_6
    const-string v5, "IRCDMASST"

    const-string v6, "[Global mode] CDMA startGlobalNetworkSearchTimer!!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1223
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_CDMA"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_NetSrchTimer:Landroid/app/PendingIntent;

    .line 1226
    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0xafc8

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_NetSrchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1228
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 1229
    sput-boolean v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    .line 1230
    sput v3, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    .line 1231
    sput-boolean v4, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->IsDispdSwitchToGsm:Z

    goto/16 :goto_1
.end method

.method public startGlobalNetworkSearchTimer(Z)V
    .locals 6
    .param p1, "needShortSrch"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1235
    const-string v2, "DCGGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 1237
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1239
    .local v0, "isAirplaneMode":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 1241
    if-eqz v0, :cond_2

    .line 1242
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] Now airplane mode on. Do not start cdma net srch timer"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .end local v0    # "isAirplaneMode":Z
    :cond_1
    :goto_0
    return-void

    .line 1245
    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-eqz v2, :cond_4

    .line 1246
    :cond_3
    const-string v1, "IRCDMASST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[global mode] Do not start cdma net srch timer:: mCdmaInSvc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPwrSaveModeTimerRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPendingIntentTimerRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1252
    :cond_4
    const-string v2, "IRCDMASST"

    const-string v3, "[Global mode] First cdma net short srch!!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/16 v2, 0x4a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1255
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    .line 1256
    sput v1, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isFirstCdmaNoSvcChkTimerStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1258
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    goto :goto_0

    .line 1262
    .end local v0    # "isAirplaneMode":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    goto :goto_0
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 993
    const-string v2, "DCGGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-nez v2, :cond_2

    .line 996
    const-string v2, "IRCDMASST"

    const-string v3, "[Global mode] CDMA startGlobalNoSvcChkTimer Start!!!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 999
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_CDMA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_NoSvcChkTimer:Landroid/app/PendingIntent;

    .line 1002
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_NoSvcChkTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1004
    sput-boolean v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    .line 1005
    sget-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    if-nez v2, :cond_1

    .line 1006
    sput-boolean v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    .line 1014
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1010
    :cond_2
    const-string v2, "IRCDMASST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Global mode] Prev Timer running - mNetSrchTimerRunning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNoSvcChkTimerRunning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Do not start timer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPendingIntentTimer(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pendedMode"    # Ljava/lang/String;
    .param p2, "isSwitchToGsmInCdmaRoamingArea"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1134
    const-string v5, "DCGGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1136
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    .line 1138
    .local v2, "isAirplaneMode":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 1139
    const-string v3, "IRCDMASST"

    const-string v4, "[Global mode] Now airplane mode on. Do not start cdma pending intent timer"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    .end local v2    # "isAirplaneMode":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 1136
    goto :goto_0

    .line 1143
    .restart local v2    # "isAirplaneMode":Z
    :cond_3
    if-eqz p2, :cond_4

    sget-boolean v5, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    if-nez v5, :cond_4

    .line 1144
    const-string v3, "IRCDMASST"

    const-string v4, "[Global mode] cdma no svc. Do not start cdma pending intent timer"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1148
    :cond_4
    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-eqz v5, :cond_5

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopPendingIntentTimer()V

    .line 1152
    :cond_5
    const-string v5, "IRCDMASST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Global mode] CDMA startPendingIntentTimer pendedMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSwitchToGsmInCdmaRoamingArea: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1155
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_6

    .line 1157
    const-string v5, "pendedMode"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    :cond_6
    if-eqz p2, :cond_7

    .line 1160
    const-string v5, "isSwitchToGsmInCdmaRoamingArea"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1163
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-static {v5, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_PendingIntentTimer:Landroid/app/PendingIntent;

    .line 1164
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_PendingIntentTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1166
    sput-boolean v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    goto :goto_1
.end method

.method public stopFakeDispCancelTimer()V
    .locals 3

    .prologue
    .line 1181
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    :cond_0
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] CDMA stopFakeDispCancelTimer!!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1185
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_FakeDispCancelTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1187
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1267
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    :cond_0
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] CDMA stopGlobalNetworkSearchTimer!!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1271
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_NetSrchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1272
    sput-boolean v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetSrchTimerRunning:Z

    .line 1273
    sput v3, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurrentSrchNet:I

    .line 1275
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 3

    .prologue
    .line 1017
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    :cond_0
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] CDMA stopGlobalNoSvcChkTimer!!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1021
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_NoSvcChkTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1022
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNoSvcChkTimerRunning:Z

    .line 1024
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method public stopPendingIntentTimer()V
    .locals 3

    .prologue
    .line 1171
    const-string v1, "DCGGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1173
    :cond_0
    const-string v1, "IRCDMASST"

    const-string v2, "[Global mode] CDMA stopPendingIntentTimer!!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1175
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sender_PendingIntentTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1176
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    .line 1178
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method public switchToGsmInCdmaRoamingArea(Z)Z
    .locals 14
    .param p1, "isPendedProcess"    # Z

    .prologue
    .line 1027
    const/4 v7, 0x0

    .line 1028
    .local v7, "result":Z
    const-string v10, "DCGGS"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "DCGS"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1030
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isSlot1CdmaActive()Z

    move-result v4

    .line 1031
    .local v4, "isSlot1CdmaActive":Z
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isCdmaManSel(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v3

    .line 1032
    .local v3, "isCdmaManSel":Z
    const/4 v9, 0x0

    .line 1034
    .local v9, "shouldBeSwitched":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v0

    .line 1035
    .local v0, "currCdmaMccInt":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMnc()I

    move-result v1

    .line 1036
    .local v1, "currCdmaMncInt":I
    const-string v10, "ril.mHasEverSwitchedToGsm"

    const-string v11, "false"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1037
    .local v6, "mHasEverSwitchedToGsm":Ljava/lang/String;
    const-string v10, "ril.m2ndNetSelCnfWaiting"

    const-string v11, "false"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1039
    .local v5, "m2ndNetSelCnfWaiting":Ljava/lang/String;
    const-string v10, "IRCDMASST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[global mode] switchToGsmInCdmaRoamingArea() isSlot1CdmaActive:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mCdmaInSvc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", currCdmaMccInt:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v10, "IRCDMASST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[global mode] mHasEverSwitchedToGsm:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isCdmaManSel: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isPendedProcess: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1047
    const-string v10, "IRCDMASST"

    const-string v11, "[global mode] Not Global mode. Exit!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1100
    .end local v0    # "currCdmaMccInt":I
    .end local v1    # "currCdmaMncInt":I
    .end local v3    # "isCdmaManSel":Z
    .end local v4    # "isSlot1CdmaActive":Z
    .end local v5    # "m2ndNetSelCnfWaiting":Ljava/lang/String;
    .end local v6    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .end local v7    # "result":Z
    .end local v9    # "shouldBeSwitched":Z
    .local v8, "result":I
    :goto_0
    return v8

    .line 1049
    .end local v8    # "result":I
    .restart local v0    # "currCdmaMccInt":I
    .restart local v1    # "currCdmaMncInt":I
    .restart local v3    # "isCdmaManSel":Z
    .restart local v4    # "isSlot1CdmaActive":Z
    .restart local v5    # "m2ndNetSelCnfWaiting":Ljava/lang/String;
    .restart local v6    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .restart local v7    # "result":Z
    .restart local v9    # "shouldBeSwitched":Z
    :cond_1
    const-string v10, "DCGGS"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v3, :cond_2

    const-string v10, "2012"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_RIL_ConfigSpecForCtcMtrIR"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1052
    const-string v10, "IRCDMASST"

    const-string v11, "[global mode] CDMA man. selected before pwr up. Exit!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1053
    .restart local v8    # "result":I
    goto :goto_0

    .line 1054
    .end local v8    # "result":I
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isFactoryMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1055
    const-string v10, "IRCDMASST"

    const-string v11, "[global mode] Factory card. Exit!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1056
    .restart local v8    # "result":I
    goto :goto_0

    .line 1057
    .end local v8    # "result":I
    :cond_3
    const-string v10, "true"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_4

    .line 1058
    const-string v10, "IRCDMASST"

    const-string v11, "[global mode] m2ndNetSelCnfWaiting. Exit!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 1059
    .restart local v8    # "result":I
    goto :goto_0

    .line 1062
    .end local v8    # "result":I
    :cond_4
    const-string v10, "2012"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_RIL_ConfigSpecForCtcMtrIR"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "DCGGS"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1064
    const/16 v10, 0x1c6

    if-ne v0, v10, :cond_5

    const/16 v10, 0x1d

    if-ne v1, v10, :cond_5

    .line 1065
    const-string v10, "IRCDMASST"

    const-string v11, "[global mode] HK PCCW cdma network acquired. Switch to gsm right here."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v9, 0x1

    .line 1077
    :cond_5
    :goto_1
    if-eqz v4, :cond_8

    sget-boolean v10, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z

    if-eqz v10, :cond_8

    if-eqz v0, :cond_8

    const/16 v10, 0x1cc

    if-eq v0, v10, :cond_8

    const/16 v10, 0x1c7

    if-eq v0, v10, :cond_8

    const/16 v10, 0x1c2

    if-eq v0, v10, :cond_8

    const-string v10, "false"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    .line 1082
    sget-boolean v10, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-eqz v10, :cond_6

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopPendingIntentTimer()V

    .line 1085
    :cond_6
    sget-boolean v10, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSleepPendedWhileNetSrchCdma:Z

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1086
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1087
    const/16 v10, 0x46

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xbb8

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1088
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSleepPendedWhileNetSrchCdma:Z

    .line 1090
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v2, "intentFwd":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1092
    const-string v10, "globalmodetype"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    const-string v10, "switchToGsmInCdmaRoamingArea"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1094
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1095
    const-string v10, "IRCDMASST"

    const-string v11, "[Global mode] ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED w/ switchToGsmInCdmaRoamingArea sent"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "ril.m2ndNetSelCnfWaiting"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const/4 v7, 0x1

    .end local v0    # "currCdmaMccInt":I
    .end local v1    # "currCdmaMncInt":I
    .end local v2    # "intentFwd":Landroid/content/Intent;
    .end local v3    # "isCdmaManSel":Z
    .end local v4    # "isSlot1CdmaActive":Z
    .end local v5    # "m2ndNetSelCnfWaiting":Ljava/lang/String;
    .end local v6    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .end local v9    # "shouldBeSwitched":Z
    :cond_8
    move v8, v7

    .line 1100
    .restart local v8    # "result":I
    goto/16 :goto_0

    .line 1070
    .end local v8    # "result":I
    .restart local v0    # "currCdmaMccInt":I
    .restart local v1    # "currCdmaMncInt":I
    .restart local v3    # "isCdmaManSel":Z
    .restart local v4    # "isSlot1CdmaActive":Z
    .restart local v5    # "m2ndNetSelCnfWaiting":Ljava/lang/String;
    .restart local v6    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .restart local v9    # "shouldBeSwitched":Z
    :cond_9
    const/4 v9, 0x1

    goto :goto_1
.end method

.method protected updateSpnDisplay()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 457
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "plmn":Ljava/lang/String;
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "salesCode":Ljava/lang/String;
    const-string v5, "CTC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CHC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->updateSpnDisplayChn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 491
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 496
    if-eqz v1, :cond_5

    const/4 v3, 0x1

    .line 501
    .local v3, "showPlmn":Z
    :goto_0
    const-string v5, "DCGGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "DCGS"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_3

    .line 504
    const-string v5, "false"

    const-string v6, "ril.fakeDispCanceled"

    const-string v7, "false"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 505
    const-string v5, "Hide plmn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 506
    const-string v1, "--"

    .line 510
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSpnDisplay: changed sending intent, showPlmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", plmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 514
    const-string v5, "showSpn"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    const-string v4, "spn"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v4, "showPlmn"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 517
    const-string v4, "plmn"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    invoke-static {v0, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 519
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 522
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "showPlmn":Z
    :cond_4
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 523
    return-void

    :cond_5
    move v3, v4

    .line 496
    goto/16 :goto_0
.end method
